#!/usr/bin/env node
/**
 * sezams-live-scanner.mjs
 * Clones https://github.com/Lengdons/Projekts_SEZAMS.git, scans source files for routes/APIs/handlers,
 * probes https://liepaja-sez.lv/ routes, and outputs a synchronized JSON file for the UML Studio App.
 * 
 */
import { execSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";

const TARGET_URL = "https://liepaja-sez.lv";
const REPO_URL = "https://github.com/Lengdons/Projekts_SEZAMS.git";
const CLONE_DIR = path.resolve("./.tmp_projekts_sezams");

async function probeRoute(routePath) {
  const url = new URL(routePath, TARGET_URL).href;
  const start = Date.now();
  try {
    const res = await fetch(url, { redirect: "manual" });
    return {
      url,
      status: res.status,
      ok: res.status >= 200 && res.status < 400,
      redirectLocation: res.headers.get("location") || null,
      latencyMs: Date.now() - start
    };
  } catch (err) {
    return { url, status: 0, ok: false, error: err.message, latencyMs: Date.now() - start };
  }
}

function scanRepoSource(dir, fileList = []) {
  if (!fs.existsSync(dir)) return fileList;
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    if (entry.name === ".git" || entry.name === "node_modules") continue;
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) scanRepoSource(full, fileList);
    else if (/\.(js|ts|jsx|tsx|vue|html|php|py|cs)$/i.test(entry.name)) fileList.push(full);
  }
  return fileList;
}

async function main() {
  console.log("[1/3] Cloning or updating Projekts_SEZAMS repository...");
  if (!fs.existsSync(CLONE_DIR)) {
    execSync(`git clone --depth 1 ${REPO_URL} "${CLONE_DIR}"`, { stdio: "inherit" });
  }

  console.log("[2/3] Scanning repository source files for routes, forms, and API calls...");
  const files = scanRepoSource(CLONE_DIR);
  const discoveredRepoNodes = [];
  let funcCounter = 100;
  let apiCounter = 100;

  for (const file of files) {
    const relPath = path.relative(CLONE_DIR, file);
    const content = fs.readFileSync(file, "utf8");

    // Detect fetch / axios / XMLHttpRequest endpoints
    const apiMatches = [...content.matchAll(/(?:fetch|axios\.(?:get|post|put|delete))\s*\(\s*['"`]([^'"`]+)['"`]/g)];
    for (const m of apiMatches) {
      const id = `API-${++apiCounter}`;
      discoveredRepoNodes.push({
        id,
        name: `Repo API: ${m[1]}`,
        type: "API",
        page: "PAGE-007",
        route: m[1],
        description: `Discovered in Projekts_SEZAMS source file: ${relPath}`,
        status: "SUSPICIOUS",
        severity: "MEDIUM",
        confidence: "CONFIRMED",
        sourceEvidence: `${relPath}`,
        expectedBehavior: "Valid backend response matching client contract.",
        observedBehavior: `Extracted from source code (${relPath}).`,
        views: ["ALL", "API_FLOW"],
        x: 1200,
        y: 100 + (apiCounter - 100) * 90
      });
    }

    // Detect JS functions / handlers
    const fnMatches = [...content.matchAll(/function\s+([a-zA-Z0-9_]+)\s*\(/g)];
    for (const m of fnMatches.slice(0, 5)) {
      const id = `FUNC-${++funcCounter}`;
      discoveredRepoNodes.push({
        id,
        name: `${m[1]}() [${path.basename(relPath)}]`,
        type: "FUNC",
        page: "PAGE-007",
        route: relPath,
        description: `Function declared in ${relPath}`,
        status: "UNTESTED",
        severity: "INFO",
        confidence: "CONFIRMED",
        sourceEvidence: `${relPath}`,
        expectedBehavior: "Executes without runtime exception.",
        observedBehavior: "Discovered via static AST regex scan.",
        views: ["ALL", "CLASS"],
        x: 960,
        y: 100 + (funcCounter - 100) * 85
      });
    }
  }

  console.log("[3/3] Probing live https://liepaja-sez.lv/ routes...");
  const routesToProbe = ["/", "/lv", "/en", "/lv/par-lsez", "/lv/investoriem", "/lv/liepajas-osta", "/lv/jaunumi", "/lv/kontakti"];
  const probeResults = [];
  for (const r of routesToProbe) {
    probeResults.push(await probeRoute(r));
  }

  const output = {
    scannedAt: new Date().toISOString(),
    repoFilesCount: files.length,
    liveRouteProbes: probeResults,
    discoveredRepoNodes
  };

  fs.writeFileSync("live-scan-results.json", JSON.stringify(output, null, 2));
  console.log("Saved live-scan-results.json. Import into lsez-sezams-audit-studio.html to view updated status.");
}

main().catch(console.error);