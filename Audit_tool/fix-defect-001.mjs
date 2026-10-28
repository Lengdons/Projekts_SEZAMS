// fix-defect-001.mjs
import fs from "node:fs";
import path from "node:path";

// Set to scan the current directory "."
const REPO_DIR = path.resolve(".");

function getAllHtmlFiles(dir, list = []) {
  if (!fs.existsSync(dir)) return list;
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    if (entry.name === ".git" || entry.name === "node_modules") continue;
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) getAllHtmlFiles(full, list);
    else if (/\.html?$/i.test(entry.name)) list.push(full);
  }
  return list;
}

const htmlFiles = getAllHtmlFiles(REPO_DIR);
let updatedFiles = 0;
let fixedProtocolLinks = 0;
let fixedEmptyDropdownHrefs = 0;

for (const file of htmlFiles) {
  const original = fs.readFileSync(file, "utf8");
  let modified = original;

  // 1. Fix protocol-relative links: href="//..." -> href="https://..."
  modified = modified.replace(/href=(["'])\/\/([^/"']+)/gi, (match, quote, domain) => {
    fixedProtocolLinks++;
    return `href=${quote}https://${domain}`;
  });

  // 2. Fix empty href="" on <a ...> tags
  modified = modified.replace(/<a\b([^>]*?)\bhref=(["'])\2([^>]*?)>/gi, (match, before, quote, after) => {
    fixedEmptyDropdownHrefs++;
    const hasRole = /\brole=/i.test(before + after);
    const roleAttr = hasRole ? "" : ' role="button"';
    return `<a${before}href=${quote}#${quote}${roleAttr}${after}>`;
  });

  if (modified !== original) {
    fs.writeFileSync(file, modified, "utf8");
    updatedFiles++;
  }
}

console.log(`Done! Scanned ${htmlFiles.length} HTML files.`);
console.log(`- Updated ${updatedFiles} files.`);
console.log(`- Fixed ${fixedProtocolLinks} protocol-relative (href="//...") links.`);
console.log(`- Fixed ${fixedEmptyDropdownHrefs} empty (href="") anchor tags.`);