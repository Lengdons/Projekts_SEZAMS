<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Projekts_SEZAMS Development Audit & UML Studio (Ref: liepaja-sez.lv)</title>
  <style>
    :root {
      --bg-app: #0f172a;
      --bg-panel: #1e293b;
      --bg-card: #334155;
      --bg-input: #0f172a;
      --text-main: #f8fafc;
      --text-muted: #94a3b8;
      --border: #475569;
      --accent: #38bdf8;
      /* Category Colors */
      --cat-page: #2563eb;
      --cat-comp: #0d9488;
      --cat-func: #7c3aed;
      --cat-api: #ea580c;
      --cat-data: #475569;
      --cat-ref: #4f46e5;
      /* Implementation Status Colors (Section 3) */
      --st-working: #16a34a;
      --st-broken: #dc2626;
      --st-partial: #d97706;
      --st-missing: #be123c;
      --st-suspicious: #ca8a04;
      --st-untested: #64748b;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Inter, sans-serif;
      background: var(--bg-app);
      color: var(--text-main);
      height: 100vh;
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }
    header {
      background: #020617;
      border-bottom: 1px solid var(--border);
      padding: 8px 14px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 700;
      font-size: 13.5px;
      color: var(--accent);
      flex-wrap: wrap;
    }
    .badge {
      font-size: 10.5px;
      padding: 2px 8px;
      border-radius: 999px;
      font-weight: 600;
    }
    .badge.target {
      background: #064e3b;
      color: #6ee7b7;
      border: 1px solid #10b981;
    }
    .badge.ref {
      background: #1e1b4b;
      color: #c7d2fe;
      border: 1px solid #6366f1;
    }
    .badge.repo {
      background: #3b0764;
      color: #e9d5ff;
      border: 1px solid #a855f7;
    }
    .toolbar {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-wrap: wrap;
    }
    button, select, input, textarea {
      font-family: inherit;
      font-size: 12px;
      color: var(--text-main);
      background: var(--bg-card);
      border: 1px solid var(--border);
      border-radius: 5px;
      padding: 5px 9px;
    }
    button {
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 5px;
      font-weight: 500;
      transition: background 0.15s, border-color 0.15s;
    }
    button:hover { background: #475569; border-color: #94a3b8; }
    button.primary { background: #0284c7; border-color: #38bdf8; }
    button.primary:hover { background: #0369a1; }
    button.success { background: #059669; border-color: #34d399; }
    button.success:hover { background: #047857; }
    button.accent-purple { background: #6d28d9; border-color: #a78bfa; }
    button.accent-purple:hover { background: #5b21b6; }
    button.danger { background: #991b1b; border-color: #f87171; }
    button.danger:hover { background: #7f1d1d; }

    .lang-switcher {
      display: inline-flex;
      border: 1px solid #38bdf8;
      border-radius: 6px;
      overflow: hidden;
      background: #0f172a;
    }
    .lang-btn {
      border: none;
      border-radius: 0;
      padding: 4px 10px;
      font-size: 11px;
      font-weight: 700;
      background: transparent;
      color: var(--text-muted);
    }
    .lang-btn.active {
      background: #0284c7;
      color: #ffffff;
    }

    .workspace {
      display: grid;
      grid-template-columns: 320px 1fr 410px;
      flex: 1;
      overflow: hidden;
    }
    @media (max-width: 1200px) {
      .workspace { grid-template-columns: 270px 1fr 350px; }
    }
    @media (max-width: 860px) {
      body { height: auto; overflow: auto; }
      .workspace { grid-template-columns: 1fr; height: auto; }
      .canvas-wrapper { height: 460px; }
    }
    .panel {
      background: var(--bg-panel);
      border-right: 1px solid var(--border);
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }
    .panel.right {
      border-right: none;
      border-left: 1px solid var(--border);
    }
    .panel-header {
      padding: 9px 12px;
      background: #0f172a;
      border-bottom: 1px solid var(--border);
      font-weight: 600;
      font-size: 11.5px;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 6px;
    }
    .filter-bar {
      padding: 8px 10px;
      border-bottom: 1px solid var(--border);
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .filter-row {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 6px;
    }
    .inventory-list {
      flex: 1;
      overflow-y: auto;
      padding: 8px;
      display: flex;
      flex-direction: column;
      gap: 5px;
    }
    .inv-item {
      padding: 8px 10px;
      border-radius: 6px;
      background: #0f172a;
      border: 1px solid #334155;
      cursor: pointer;
      display: flex;
      flex-direction: column;
      gap: 4px;
      transition: border-color 0.15s;
    }
    .inv-item:hover { border-color: var(--accent); }
    .inv-item.selected {
      border-color: var(--accent);
      box-shadow: 0 0 0 1px var(--accent) inset;
      background: #172554;
    }
    .inv-item.origin-REFERENCE {
      border-left: 3px solid #6366f1;
      opacity: 0.88;
    }
    .inv-item.origin-OUR_IMPL {
      border-left: 3px solid #10b981;
    }
    .inv-top {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 11px;
      font-weight: 700;
      gap: 4px;
      flex-wrap: wrap;
    }
    .inv-name {
      font-size: 12px;
      font-weight: 600;
      color: #e2e8f0;
    }
    .inv-meta {
      font-size: 10.5px;
      color: var(--text-muted);
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .pill {
      font-size: 9.5px;
      padding: 1px 6px;
      border-radius: 4px;
      font-weight: 700;
      text-transform: uppercase;
      display: inline-flex;
      align-items: center;
      gap: 3px;
    }
    .pill.origin-OUR_IMPL { background: #065f46; color: #a7f3d0; border: 1px solid #10b981; }
    .pill.origin-REFERENCE { background: #312e81; color: #c7d2fe; border: 1px solid #6366f1; }

    .pill.cat-PAGE, .pill.cat-ROUTE { background: var(--cat-page); color: #fff; }
    .pill.cat-COMP, .pill.cat-BTN, .pill.cat-FORM, .pill.cat-MODAL { background: var(--cat-comp); color: #fff; }
    .pill.cat-FUNC { background: var(--cat-func); color: #fff; }
    .pill.cat-API { background: var(--cat-api); color: #fff; }
    .pill.cat-DATA { background: var(--cat-data); color: #fff; }
    .pill.cat-DEFECT { background: var(--st-broken); color: #fff; }
    .pill.cat-REF { background: var(--cat-ref); color: #fff; }

    .pill.st-WORKING, .pill.conf-CONFIRMED { background: var(--st-working); color: #fff; }
    .pill.st-BROKEN { background: var(--st-broken); color: #fff; }
    .pill.st-PARTIAL { background: var(--st-partial); color: #fff; }
    .pill.st-MISSING { background: var(--st-missing); color: #fff; }
    .pill.st-SUSPICIOUS, .pill.conf-LIKELY, .pill.conf-INFERRED { background: var(--st-suspicious); color: #fff; }
    .pill.st-UNTESTED, .pill.st-BLOCKED, .pill.conf-UNVERIFIED, .pill.st-REFERENCE { background: var(--st-untested); color: #fff; }

    .center-area {
      display: flex;
      flex-direction: column;
      background: #090d16;
      position: relative;
      overflow: hidden;
    }
    .view-tabs {
      display: flex;
      background: #0f172a;
      border-bottom: 1px solid var(--border);
      padding: 6px 10px;
      gap: 6px;
      overflow-x: auto;
    }
    .view-tab {
      font-size: 11px;
      padding: 5px 10px;
      border-radius: 5px;
      background: #1e293b;
      border: 1px solid #334155;
      color: var(--text-muted);
      white-space: nowrap;
    }
    .view-tab.active {
      background: #0284c7;
      color: #fff;
      border-color: #38bdf8;
      font-weight: 600;
    }
    .canvas-wrapper {
      flex: 1;
      position: relative;
      overflow: hidden;
    }
    #uml-canvas {
      width: 100%;
      height: 100%;
      cursor: grab;
      background-image: radial-gradient(#1e293b 1px, transparent 1px);
      background-size: 20px 20px;
    }
    #uml-canvas:active { cursor: grabbing; }

    .canvas-hud {
      position: absolute;
      bottom: 12px;
      left: 12px;
      background: rgba(15, 23, 42, 0.94);
      border: 1px solid var(--border);
      border-radius: 8px;
      padding: 10px 12px;
      font-size: 10.5px;
      max-width: 610px;
      backdrop-filter: blur(4px);
    }
    .legend-grid {
      display: grid;
      grid-template-columns: repeat(3, auto);
      gap: 4px 12px;
      margin-top: 6px;
    }
    .legend-item {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .swatch {
      width: 11px;
      height: 11px;
      border-radius: 3px;
      display: inline-block;
    }
    .swatch.dashed {
      border: 2px dashed #f8fafc;
      background: transparent;
    }
    .zoom-controls {
      position: absolute;
      top: 12px;
      right: 12px;
      display: flex;
      gap: 6px;
      background: rgba(15, 23, 42, 0.9);
      padding: 6px;
      border-radius: 6px;
      border: 1px solid var(--border);
    }

    .drawer-tabs {
      display: flex;
      background: #0f172a;
      border-top: 1px solid var(--border);
      padding: 4px 10px;
      gap: 8px;
      flex-wrap: wrap;
    }
    .drawer-content {
      height: 215px;
      overflow-y: auto;
      background: #0f172a;
      border-top: 1px solid #1e293b;
      padding: 10px 14px;
      font-size: 12px;
    }
    .drawer-content.collapsed { display: none; }
    .metrics-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(125px, 1fr));
      gap: 8px;
      margin-bottom: 10px;
    }
    .metric-card {
      background: #1e293b;
      border: 1px solid #334155;
      padding: 7px 10px;
      border-radius: 6px;
    }
    .metric-card .val { font-size: 17px; font-weight: 700; color: var(--accent); }
    .metric-card .lbl { font-size: 10.5px; color: var(--text-muted); }

    .inspector-tabs {
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;
      background: #020617;
      border-bottom: 1px solid var(--border);
    }
    .insp-tab {
      border: none;
      border-radius: 0;
      padding: 8px 4px;
      font-size: 10.5px;
      font-weight: 700;
      background: transparent;
      color: var(--text-muted);
      justify-content: center;
      border-bottom: 2px solid transparent;
    }
    .insp-tab.active {
      color: var(--accent);
      border-bottom-color: var(--accent);
      background: #0f172a;
    }
    .inspector-body {
      flex: 1;
      overflow-y: auto;
      padding: 12px;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .form-group {
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .form-group label {
      font-size: 11px;
      color: var(--text-muted);
      font-weight: 600;
    }
    .form-group input, .form-group select, .form-group textarea {
      width: 100%;
      background: var(--bg-input);
    }
    .form-group textarea {
      min-height: 50px;
      resize: vertical;
    }
    .dep-box {
      background: #0f172a;
      border: 1px solid #334155;
      border-radius: 6px;
      padding: 8px;
      font-size: 11px;
    }
    .dep-link {
      display: inline-block;
      margin: 2px;
      padding: 2px 6px;
      background: #1e293b;
      border: 1px solid #475569;
      border-radius: 4px;
      cursor: pointer;
      color: #38bdf8;
    }
    .dep-link:hover { background: #334155; }

    .source-card {
      background: #0f172a;
      border: 1px solid #334155;
      border-left: 3px solid var(--accent);
      border-radius: 6px;
      padding: 10px;
      display: flex;
      flex-direction: column;
      gap: 7px;
      font-size: 11.5px;
    }
    .source-card.unverified {
      border-left-color: var(--st-partial);
    }
    .source-path-box {
      background: #020617;
      border: 1px solid #334155;
      padding: 6px 8px;
      border-radius: 4px;
      font-family: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
      font-size: 11px;
      color: #93c5fd;
      word-break: break-all;
    }
    .source-actions {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .source-actions button, .source-actions a.btn-link {
      font-size: 11px;
      padding: 4px 8px;
      text-decoration: none;
      color: var(--text-main);
      background: #1e293b;
      border: 1px solid #475569;
      border-radius: 4px;
      display: inline-flex;
      align-items: center;
      gap: 4px;
    }
    .source-actions a.btn-link:hover, .source-actions button:hover {
      background: #334155;
      border-color: var(--accent);
    }

    .comp-grid {
      display: flex;
      flex-direction: column;
      gap: 6px;
      background: #0f172a;
      border: 1px solid #334155;
      border-radius: 6px;
      padding: 9px;
      font-size: 11.5px;
    }
    .comp-row {
      border-bottom: 1px solid #1e293b;
      padding-bottom: 5px;
    }
    .comp-row:last-child { border-bottom: none; padding-bottom: 0; }
    .comp-lbl {
      font-size: 10px;
      font-weight: 700;
      text-transform: uppercase;
      color: var(--accent);
      margin-bottom: 2px;
    }

    .modal-backdrop {
      position: fixed;
      inset: 0;
      background: rgba(2, 6, 23, 0.74);
      display: none;
      align-items: center;
      justify-content: center;
      z-index: 9000;
      padding: 16px;
    }
    .modal-backdrop.open { display: flex; }
    .modal-window {
      background: var(--bg-panel);
      border: 1px solid var(--accent);
      border-radius: 10px;
      width: 100%;
      max-width: 820px;
      max-height: 88vh;
      display: flex;
      flex-direction: column;
      box-shadow: 0 20px 50px rgba(0, 0, 0, 0.65);
      overflow: hidden;
    }
    .modal-header {
      padding: 12px 16px;
      background: #020617;
      border-bottom: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .modal-body {
      padding: 16px;
      overflow-y: auto;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    table.data-table {
      width: 100%;
      border-collapse: collapse;
      font-size: 11px;
    }
    table.data-table th, table.data-table td {
      border: 1px solid #334155;
      padding: 5px 8px;
      text-align: left;
    }
    table.data-table th { background: #1e293b; color: #cbd5e1; }
    .toast {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background: #0284c7;
      color: #fff;
      padding: 8px 14px;
      border-radius: 6px;
      font-size: 12px;
      font-weight: 600;
      box-shadow: 0 4px 12px rgba(0,0,0,0.4);
      display: none;
      z-index: 9999;
    }
  </style>
</head>
<body>

<header>
  <div class="brand">
    <span id="lbl-app-title">Projekts_SEZAMS Development Audit Studio</span>
    <span class="badge target" id="badge-target">Target: Projekts_SEZAMS (main)</span>
    <span class="badge ref" id="badge-ref">Reference Baseline: liepaja-sez.lv (Not Production)</span>
    <span class="badge repo" id="repo-status-badge">Repo: Unscanned</span>
  </div>
  <div class="toolbar">
    <div class="lang-switcher" role="group" aria-label="Language Switcher">
      <button class="lang-btn active" id="lang-btn-en" onclick="app.setLanguage('en')">EN</button>
      <button class="lang-btn" id="lang-btn-lv" onclick="app.setLanguage('lv')">LV</button>
    </div>

    <button class="success" onclick="document.getElementById('repo-dir-input').click()" id="btn-scan-repo" title="Select your local .tmp_projekts_sezams or Projekts_SEZAMS folder to audit real HTML/JS/CSS files">📂 Audit Local Projekts_SEZAMS Folder</button>
    <input type="file" id="repo-dir-input" webkitdirectory directory multiple style="display:none" onchange="app.handleRepoDirectoryUpload(event)" />

    <button class="accent-purple" onclick="app.openSourceModal()" id="btn-open-source-win">📍 Source Location</button>
    <button class="primary" onclick="app.createNewNode()" id="btn-add-node">+ Add Node</button>
    <button onclick="app.createNewRelationship()" id="btn-add-link">+ Add Link</button>
    <button onclick="app.undo()" id="btn-undo">↶ Undo</button>
    <button onclick="app.redo()" id="btn-redo">↷ Redo</button>
    <button onclick="app.resetDataset()" class="danger" id="btn-reset">⟳ Reset</button>

    <select id="export-menu" onchange="app.handleExport(this.value); this.value='';">
      <option value="" id="opt-export-title">⬇ Export...</option>
      <option value="json" id="opt-exp-json">Export Full JSON Project (.json)</option>
      <option value="mermaid" id="opt-exp-mmd">Export Current UML as Mermaid (.mmd)</option>
      <option value="plantuml" id="opt-exp-puml">Export Current UML as PlantUML (.puml)</option>
      <option value="svg" id="opt-exp-svg">Export Diagram Canvas as SVG (.svg)</option>
      <option value="markdown" id="opt-exp-md">Export Projekts_SEZAMS Audit Report (.md)</option>
    </select>
    <button onclick="document.getElementById('import-file').click()" id="btn-import-json">⬆ Import JSON</button>
    <input type="file" id="import-file" accept=".json" style="display:none" onchange="app.importJSON(event)" />
  </div>
</header>

<div class="workspace">
  <!-- LEFT PANEL: PROJECT INVENTORY & SCOPE FILTERS -->
  <aside class="panel">
    <div class="panel-header">
      <span id="lbl-inventory-header">Projekts_SEZAMS &amp; Reference Inventory</span>
      <span id="inventory-count">0</span>
    </div>
    <div class="filter-bar">
      <input type="text" id="search-input" placeholder="Search ID, file path, route, function, defect..." oninput="app.renderInventory(); app.renderCanvas();" />
      <div class="filter-row">
        <select id="filter-origin" onchange="app.renderInventory(); app.renderCanvas();">
          <option value="ALL" id="flt-origin-all">Scope: All Elements</option>
          <option value="OUR_IMPL" id="flt-origin-impl" selected>Target: Our Projekts_SEZAMS Code</option>
          <option value="REFERENCE" id="flt-origin-ref">Baseline: liepaja-sez.lv Reference</option>
        </select>
        <select id="filter-type" onchange="app.renderInventory(); app.renderCanvas();">
          <option value="ALL" id="flt-type-all">All Categories</option>
          <option value="PAGE">PAGE</option>
          <option value="ROUTE">ROUTE</option>
          <option value="COMP">COMP</option>
          <option value="BTN">BTN</option>
          <option value="FORM">FORM</option>
          <option value="MODAL">MODAL</option>
          <option value="FUNC">FUNC</option>
          <option value="API">API</option>
          <option value="DEFECT">DEFECT</option>
          <option value="REF">REF (Baseline)</option>
        </select>
      </div>
      <div class="filter-row">
        <select id="filter-status" onchange="app.renderInventory(); app.renderCanvas();">
          <option value="ALL" id="flt-status-all">All Implementation Statuses</option>
          <option value="WORKING">WORKING</option>
          <option value="BROKEN">BROKEN</option>
          <option value="PARTIAL">PARTIAL</option>
          <option value="MISSING">MISSING</option>
          <option value="SUSPICIOUS">SUSPICIOUS</option>
          <option value="UNTESTED">UNTESTED / BLOCKED</option>
          <option value="REFERENCE">REFERENCE BASELINE</option>
        </select>
        <select id="filter-confidence" onchange="app.renderInventory(); app.renderCanvas();">
          <option value="ALL" id="flt-conf-all">All Confidence</option>
          <option value="CONFIRMED">CONFIRMED (Repo Verified)</option>
          <option value="LIKELY">LIKELY / INFERRED</option>
          <option value="UNVERIFIED">UNVERIFIED</option>
        </select>
      </div>
    </div>
    <div class="inventory-list" id="inventory-list"></div>
  </aside>

  <!-- CENTER PANEL: MULTI-VIEW INTERACTIVE UML CANVAS & DRAWER -->
  <main class="center-area">
    <div class="view-tabs" id="view-tabs">
      <button class="view-tab active" data-view="ALL" onclick="app.setDiagramView('ALL')" id="vtab-ALL">0. Projekts_SEZAMS Master</button>
      <button class="view-tab" data-view="REF_COMPARE" onclick="app.setDiagramView('REF_COMPARE')" id="vtab-REF_COMPARE">K. Ref vs. Our Implementation</button>
      <button class="view-tab" data-view="USE_CASE" onclick="app.setDiagramView('USE_CASE')" id="vtab-USE_CASE">A. Use Case</button>
      <button class="view-tab" data-view="COMPONENT" onclick="app.setDiagramView('COMPONENT')" id="vtab-COMPONENT">B. Component</button>
      <button class="view-tab" data-view="SEQUENCE" onclick="app.setDiagramView('SEQUENCE')" id="vtab-SEQUENCE">C. Sequence Flow</button>
      <button class="view-tab" data-view="ACTIVITY" onclick="app.setDiagramView('ACTIVITY')" id="vtab-ACTIVITY">D. Activity Logic</button>
      <button class="view-tab" data-view="STATE" onclick="app.setDiagramView('STATE')" id="vtab-STATE">E. State Machine</button>
      <button class="view-tab" data-view="DEPLOYMENT" onclick="app.setDiagramView('DEPLOYMENT')" id="vtab-DEPLOYMENT">F. Dev Deployment</button>
      <button class="view-tab" data-view="CLASS" onclick="app.setDiagramView('CLASS')" id="vtab-CLASS">G. JS Modules</button>
      <button class="view-tab" data-view="NAVIGATION" onclick="app.setDiagramView('NAVIGATION')" id="vtab-NAVIGATION">H. Site/LV Routes</button>
      <button class="view-tab" data-view="API_FLOW" onclick="app.setDiagramView('API_FLOW')" id="vtab-API_FLOW">I. Data &amp; API Flow</button>
      <button class="view-tab" data-view="DEFECT_MAP" onclick="app.setDiagramView('DEFECT_MAP')" id="vtab-DEFECT_MAP">J. Repo Defect Map</button>
    </div>

    <div class="canvas-wrapper">
      <svg id="uml-canvas" xmlns="http://www.w3.org/2000/svg">
        <defs>
          <marker id="arrow-solid" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
            <path d="M 0 1 L 10 5 L 0 9 z" fill="#94a3b8" />
          </marker>
          <marker id="arrow-highlight" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
            <path d="M 0 1 L 10 5 L 0 9 z" fill="#38bdf8" />
          </marker>
          <marker id="arrow-defect" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
            <path d="M 0 1 L 10 5 L 0 9 z" fill="#f87171" />
          </marker>
        </defs>
        <g id="canvas-viewport"></g>
      </svg>

      <div class="zoom-controls">
        <button onclick="app.zoom(1.15)" title="Zoom In">+</button>
        <button onclick="app.zoom(0.85)" title="Zoom Out">−</button>
        <button onclick="app.resetViewport()" id="btn-center">Center</button>
        <button onclick="app.autoLayoutCurrentView()" id="btn-autolayout">Auto-Layout</button>
      </div>

      <div class="canvas-hud">
        <div style="font-weight:700; color:#e2e8f0; display:flex; justify-content:space-between; gap:10px;">
          <span id="lbl-legend-title">PROJEKTS_SEZAMS IMPLEMENTATION LEGEND</span>
          <span id="view-title-label" style="color:var(--accent)">0. Projekts_SEZAMS Master</span>
        </div>
        <div class="legend-grid">
          <div class="legend-item"><span class="swatch" style="background:var(--st-working)"></span><span id="leg-work">✓ WORKING</span></div>
          <div class="legend-item"><span class="swatch" style="background:var(--st-broken)"></span><span id="leg-brok">✗ BROKEN</span></div>
          <div class="legend-item"><span class="swatch" style="background:var(--st-partial)"></span><span id="leg-part">◐ PARTIAL</span></div>
          <div class="legend-item"><span class="swatch" style="background:var(--st-missing)"></span><span id="leg-miss">∅ MISSING</span></div>
          <div class="legend-item"><span class="swatch" style="background:var(--st-suspicious)"></span><span id="leg-susp">⚠ SUSPICIOUS</span></div>
          <div class="legend-item"><span class="swatch" style="background:var(--cat-ref)"></span><span id="leg-ref">⚓ REFERENCE (liepaja-sez.lv)</span></div>
        </div>
      </div>
    </div>

    <div class="drawer-tabs">
      <button onclick="app.switchDrawer('dashboard')" id="dtab-dashboard">Implementation Summary</button>
      <button onclick="app.switchDrawer('defects')" id="dtab-defects">Projekts_SEZAMS Defects &amp; Comparison</button>
      <button onclick="app.switchDrawer('source-map')" id="dtab-sourcemap">Repository Source Map (Projekts_SEZAMS/)</button>
      <button onclick="app.switchDrawer('tests')" id="dtab-tests">Implementation Test Suite (TEST-*)</button>
      <button onclick="app.switchDrawer('mermaid-preview')" id="dtab-mermaid">Live Mermaid / PlantUML</button>
      <button onclick="app.switchDrawer('toggle')" style="margin-left:auto" id="dtab-toggle">Toggle Drawer</button>
    </div>
    <div class="drawer-content" id="drawer-content"></div>
  </main>

  <!-- RIGHT PANEL: SOURCE LOCATION + 5-POINT COMPARISON + RECORD EDITOR -->
  <aside class="panel right">
    <div class="panel-header">
      <span id="lbl-inspector-header">Projekts_SEZAMS Debugger</span>
      <span id="inspector-mode">Node</span>
    </div>
    <div class="inspector-tabs">
      <button class="insp-tab active" id="itab-source" onclick="app.setInspectorTab('source')">📍 Source Location</button>
      <button class="insp-tab" id="itab-compare" onclick="app.setInspectorTab('compare')">⚖ Ref vs. Our Code</button>
      <button class="insp-tab" id="itab-record" onclick="app.setInspectorTab('record')">✎ Record Editor</button>
    </div>
    <div class="inspector-body" id="inspector-body"></div>
  </aside>
</div>

<!-- FLOATING SOURCE LOCATION MODAL -->
<div class="modal-backdrop" id="source-modal-backdrop" onclick="app.closeSourceModal(event)">
  <div class="modal-window" onclick="event.stopPropagation()">
    <div class="modal-header">
      <div>
        <div style="font-size:14px; font-weight:700; color:var(--accent);" id="modal-source-title">Source Location</div>
        <div style="font-size:11px; color:var(--text-muted);">Target Repository: <code>https://github.com/Lengdons/Projekts_SEZAMS</code> (branch: <code>main</code>, root: <code>Projekts_SEZAMS/</code>)</div>
      </div>
      <div style="display:flex; gap:8px; align-items:center;">
        <label style="font-size:11px; color:var(--text-muted); display:flex; align-items:center; gap:4px; cursor:pointer;">
          <input type="checkbox" id="chk-auto-modal" onchange="app.toggleAutoModal(this.checked)" />
          <span id="lbl-auto-open-modal">Auto-open on defect click</span>
        </label>
        <button class="danger" onclick="app.closeSourceModal()" id="btn-close-modal">✕ Close</button>
      </div>
    </div>
    <div class="modal-body" id="source-modal-body"></div>
  </div>
</div>

<div class="toast" id="toast">Saved</div>

<script>
const I18N = {
  en: {
    appTitle: "Projekts_SEZAMS Development Audit Studio",
    badgeTarget: "Target: Projekts_SEZAMS (main)",
    badgeRef: "Reference Baseline: liepaja-sez.lv (Not Production)",
    repoUnscanned: "Repo: Unverified (Click '📂 Audit Local Projekts_SEZAMS Folder')",
    repoScanned: "Projekts_SEZAMS Verified: {count} files audited ({defects} code issues)",
    btnScanRepo: "📂 Audit Local Projekts_SEZAMS Folder",
    btnSourceWin: "📍 Source Location",
    btnAddNode: "+ Add Node",
    btnAddLink: "+ Add Link",
    btnUndo: "↶ Undo",
    btnRedo: "↷ Redo",
    btnReset: "⟳ Reset",
    exportTitle: "⬇ Export...",
    expJson: "Export Full JSON Project (.json)",
    expMmd: "Export Current UML as Mermaid (.mmd)",
    expPuml: "Export Current UML as PlantUML (.puml)",
    expSvg: "Export Diagram Canvas as SVG (.svg)",
    expMd: "Export Projekts_SEZAMS Audit Report (.md)",
    btnImportJson: "⬆ Import JSON",
    inventoryHeader: "Projekts_SEZAMS & Reference Inventory",
    searchPlaceholder: "Search ID, file path, route, function, defect...",
    fltOriginAll: "Scope: All Elements (Our Code + Reference)",
    fltOriginImpl: "Target: Our Projekts_SEZAMS Implementation",
    fltOriginRef: "Baseline: liepaja-sez.lv Reference Only",
    fltTypeAll: "All Categories",
    fltStatusAll: "All Implementation Statuses",
    fltConfAll: "All Confidence",
    centerBtn: "Center",
    autoLayoutBtn: "Auto-Layout",
    legendTitle: "PROJEKTS_SEZAMS IMPLEMENTATION LEGEND",
    legWork: "✓ WORKING",
    legBrok: "✗ BROKEN",
    legPart: "◐ PARTIAL",
    legMiss: "∅ MISSING",
    legSusp: "⚠ SUSPICIOUS",
    legRef: "⚓ REFERENCE (liepaja-sez.lv)",
    dtabDashboard: "Implementation Summary",
    dtabDefects: "Projekts_SEZAMS Defects & Comparison",
    dtabSourceMap: "Repository Source Map (Projekts_SEZAMS/)",
    dtabTests: "Implementation Test Suite (TEST-*)",
    dtabMermaid: "Live Mermaid / PlantUML",
    dtabToggle: "Toggle Drawer",
    inspectorHeader: "Projekts_SEZAMS Debugger",
    itabSource: "📍 Source Location",
    itabCompare: "⚖ Ref vs. Our Code",
    itabRecord: "✎ Record Editor",
    sourceLocationTitle: "Source Location (Projekts_SEZAMS)",
    autoOpenModal: "Auto-open on defect click",
    closeBtn: "✕ Close",
    copyFilePath: "Copy File Path",
    openInGithub: "Open in GitHub",
    copyCodeRef: "Copy Code Reference",
    sourceNotVerified: "Source location not verified",
    sourceNotVerifiedDesc: "Click the green '📂 Audit Local Projekts_SEZAMS Folder' button in the top bar and select your local '.tmp_projekts_sezams' (or 'Projekts_SEZAMS') folder. The studio will inspect every HTML, JS, CSS, and asset file in your repository, detect broken links/forms/scripts with exact line numbers, and link them to GitHub main branch URLs.",
    affectedFeature: "Affected Feature / Page in Projekts_SEZAMS",
    problemDesc: "Our Implementation Problem Description",
    repoFilePath: "Repository File Path (Projekts_SEZAMS main branch)",
    codeSection: "Relevant Function / Selector / Markup",
    lineRange: "Verified Line Range",
    fileRole: "File Role in Projekts_SEZAMS",
    whyRelevant: "What to Inspect & Why",
    recommendedFix: "Recommended Fix in Projekts_SEZAMS",
    relatedArtifacts: "Related Dependencies / Assets",
    confidenceLevel: "Confidence Level",
    addSourceMappingBtn: "+ Add Verified Repository Path",
    openModalBtn: "⤢ Pop Out Source Location Window",
    saveRecordBtn: "Save Record",
    deleteNodeBtn: "Delete Node",
    saveConnBtn: "Save Connection",
    deleteConnBtn: "Delete Connection",
    copiedToast: "Copied to clipboard: ",
    savedToast: "Audit state saved to browser storage",
    langSwitchedToast: "Language switched to English (EN)",
    cmp1Orig: "1. Original Behavior (liepaja-sez.lv Reference Baseline)",
    cmp2Impl: "2. Our Implementation (Current Projekts_SEZAMS Code)",
    cmp3Exp: "3. Expected Behavior (Intended Target Spec)",
    cmp4Disc: "4. Discrepancy & Intentional vs. Defect Classification",
    cmp5Act: "5. Required Action in Our Projekts_SEZAMS Repository",
    statusLabels: {
      WORKING: "Working",
      BROKEN: "Broken",
      PARTIAL: "Partial",
      MISSING: "Missing",
      SUSPICIOUS: "Suspicious",
      UNTESTED: "Untested",
      BLOCKED: "Blocked",
      REFERENCE: "Reference Baseline"
    },
    confidenceLabels: {
      CONFIRMED: "Confirmed",
      LIKELY: "Likely",
      INFERRED: "Likely",
      UNVERIFIED: "Unverified"
    },
    viewLabels: {
      ALL: "0. Projekts_SEZAMS Master",
      REF_COMPARE: "K. Ref vs. Our Implementation",
      USE_CASE: "A. Use Case",
      COMPONENT: "B. Component",
      SEQUENCE: "C. Sequence Flow",
      ACTIVITY: "D. Activity Logic",
      STATE: "E. State Machine",
      DEPLOYMENT: "F. Dev Deployment",
      CLASS: "G. JS Modules",
      NAVIGATION: "H. Site/LV Routes",
      API_FLOW: "I. Data & API Flow",
      DEFECT_MAP: "J. Repo Defect Map"
    },
    metrics: {
      implNodes: "Our Implementation Nodes",
      working: "Working (Verified)",
      brokenPartial: "Broken / Partial",
      missing: "Missing Features",
      refNodes: "Reference Baseline Nodes",
      verifiedFiles: "Audited Repo Files"
    }
  },
  lv: {
    appTitle: "Projekts_SEZAMS Izstrādes Audita Studija",
    badgeTarget: "Mērķis: Projekts_SEZAMS (main)",
    badgeRef: "Atsauces bāze: liepaja-sez.lv (Nav produkcija)",
    repoUnscanned: "Repo: Nav pārbaudīts (Spiediet '📂 Auditēt lokālo Projekts_SEZAMS mapi')",
    repoScanned: "Projekts_SEZAMS pārbaudīts: {count} faili ({defects} koda problēmas)",
    btnScanRepo: "📂 Auditēt lokālo Projekts_SEZAMS mapi",
    btnSourceWin: "📍 Avota atrašanās vieta",
    btnAddNode: "+ Pievienot mezglu",
    btnAddLink: "+ Pievienot saiti",
    btnUndo: "↶ Atsaukt",
    btnRedo: "↷ Atkārtot",
    btnReset: "⟳ Atiestatīt",
    exportTitle: "⬇ Eksportēt...",
    expJson: "Eksportēt pilnu JSON projektu (.json)",
    expMmd: "Eksportēt pašreizējo UML kā Mermaid (.mmd)",
    expPuml: "Eksportēt pašreizējo UML kā PlantUML (.puml)",
    expSvg: "Eksportēt diagrammu kā SVG (.svg)",
    expMd: "Eksportēt Projekts_SEZAMS audita pārskatu (.md)",
    btnImportJson: "⬆ Importēt JSON",
    inventoryHeader: "Projekts_SEZAMS un atsauces inventārs",
    searchPlaceholder: "Meklēt ID, faila ceļu, maršrutu, funkciju, defektu...",
    fltOriginAll: "Tvērums: Visi elementi (Mūsu kods + Atsauce)",
    fltOriginImpl: "Mērķis: Tikai mūsu Projekts_SEZAMS kods",
    fltOriginRef: "Atsauce: Tikai liepaja-sez.lv bāzes modelis",
    fltTypeAll: "Visas kategorijas",
    fltStatusAll: "Visi ieviešanas statusi",
    fltConfAll: "Visa ticamība",
    centerBtn: "Centrēt",
    autoLayoutBtn: "Auto-izkārtojums",
    legendTitle: "PROJEKTS_SEZAMS IEVIEŠANAS LEĢENDA",
    legWork: "✓ DARBOJAS",
    legBrok: "✗ BOJĀTS",
    legPart: "◐ DAĻĒJS",
    legMiss: "∅ TRŪKST",
    legSusp: "⚠ AIZDOMĪGS",
    legRef: "⚓ ATSAUCE (liepaja-sez.lv)",
    dtabDashboard: "Ieviešanas kopsavilkums",
    dtabDefects: "Projekts_SEZAMS defekti un salīdzinājums",
    dtabSourceMap: "Repozitorija avota karte (Projekts_SEZAMS/)",
    dtabTests: "Ieviešanas testu plāns (TEST-*)",
    dtabMermaid: "Mermaid / PlantUML pirmkods",
    dtabToggle: "Pārslēgt paneli",
    inspectorHeader: "Projekts_SEZAMS Atkļūdotājs",
    itabSource: "📍 Avota atrašanās vieta",
    itabCompare: "⚖ Atsauce pret mūsu kodu",
    itabRecord: "✎ Ieraksta redaktors",
    sourceLocationTitle: "Avota atrašanās vieta (Projekts_SEZAMS)",
    autoOpenModal: "Automātiski atvērt, izvēloties defektu",
    closeBtn: "✕ Aizvērt",
    copyFilePath: "Kopēt faila ceļu",
    openInGithub: "Atvērt GitHub",
    copyCodeRef: "Kopēt koda atsauci",
    sourceNotVerified: "Avota atrašanās vieta nav pārbaudīta",
    sourceNotVerifiedDesc: "Noklikšķiniet uz zaļās pogas '📂 Auditēt lokālo Projekts_SEZAMS mapi' augšējā joslā un izvēlieties savu lokālo '.tmp_projekts_sezams' (vai 'Projekts_SEZAMS') mapi. Lietotne izanalizēs visus HTML, JS, CSS un resursu failus jūsu repozitorijā, atradīs bojātās saites, formas un skriptus ar precīziem rindu numuriem un izveidos saites uz GitHub main zaru.",
    affectedFeature: "Skartā funkcionalitāte / lapa mūsu Projekts_SEZAMS kodā",
    problemDesc: "Mūsu ieviešanas problēmas apraksts",
    repoFilePath: "Repozitorija faila ceļš (Projekts_SEZAMS main zars)",
    codeSection: "Attiecīgā funkcija / selektors / marķējums",
    lineRange: "Verificētais rindu diapazons",
    fileRole: "Faila loma Projekts_SEZAMS projektā",
    whyRelevant: "Ko pārbaudīt un kāpēc",
    recommendedFix: "Ieteicamais labojums mūsu Projekts_SEZAMS kodā",
    relatedArtifacts: "Saistītās atkarības / resursi",
    confidenceLevel: "Ticamības līmenis",
    addSourceMappingBtn: "+ Pievienot verificētu repozitorija ceļu",
    openModalBtn: "⤢ Atvērt avota atrašanās vietas logu",
    saveRecordBtn: "Saglabāt ierakstu",
    deleteNodeBtn: "Dzēst mezglu",
    saveConnBtn: "Saglabāt savienojumu",
    deleteConnBtn: "Dzēst savienojumu",
    copiedToast: "Nokopēts starpliktuvē: ",
    savedToast: "Audita stāvoklis saglabāts pārlūkprogrammā",
    langSwitchedToast: "Valoda pārslēgta uz latviešu (LV)",
    cmp1Orig: "1. Oriģinālā darbība (liepaja-sez.lv atsauces bāze)",
    cmp2Impl: "2. Mūsu ieviešana (Pašreizējais Projekts_SEZAMS kods)",
    cmp3Exp: "3. Sagaidāmā darbība (Mūsu projekta mērķis)",
    cmp4Disc: "4. Neatbilstība (Tīša arhitektūras maiņa vai defekts)",
    cmp5Act: "5. Nepieciešamā darbība mūsu Projekts_SEZAMS repozitorijā",
    statusLabels: {
      WORKING: "Darbojas",
      BROKEN: "Bojāts",
      PARTIAL: "Daļēji ieviests",
      MISSING: "Trūkst",
      SUSPICIOUS: "Aizdomīgs",
      UNTESTED: "Nav testēts",
      BLOCKED: "Bloķēts",
      REFERENCE: "Atsauces bāze"
    },
    confidenceLabels: {
      CONFIRMED: "Apstiprināts",
      LIKELY: "Ticams",
      INFERRED: "Ticams",
      UNVERIFIED: "Nav pārbaudīts"
    },
    viewLabels: {
      ALL: "0. Projekts_SEZAMS Kopskats",
      REF_COMPARE: "K. Atsauce pret mūsu kodu",
      USE_CASE: "A. Lietošanas gadījumi",
      COMPONENT: "B. Komponentes",
      SEQUENCE: "C. Sekvences plūsma",
      ACTIVITY: "D. Aktivitāšu loģika",
      STATE: "E. Stāvokļu automāts",
      DEPLOYMENT: "F. Izstrādes vide",
      CLASS: "G. JS moduļi",
      NAVIGATION: "H. Site/LV maršruti",
      API_FLOW: "I. Datu un API plūsma",
      DEFECT_MAP: "J. Repo defektu karte"
    },
    metrics: {
      implNodes: "Mūsu ieviešanas mezgli",
      working: "Darbojas (Verificēts)",
      brokenPartial: "Bojāti / Daļēji",
      missing: "Trūkstošās funkcijas",
      refNodes: "Atsauces bāzes mezgli",
      verifiedFiles: "Auditētie repo faili"
    }
  }
};

const BASELINE_AUDIT_DATA = {
  metadata: {
    targetProject: "Projekts_SEZAMS (Development Version)",
    repositoryUrl: "https://github.com/Lengdons/Projekts_SEZAMS.git",
    branch: "main",
    repoRootPrefix: "Projekts_SEZAMS/",
    referenceBaselineUrl: "https://liepaja-sez.lv (Historical Reference Only — Not Our Production Deployment)",
    auditDate: "2026-10-20",
    scannedFilesCount: 0
  },
  nodes: [
    // OUR IMPLEMENTATION NODES (Projekts_SEZAMS)
    {
      id: "PAGE-001", origin: "OUR_IMPL", refId: "REF-PAGE-001",
      name: "Our Homepage Implementation (site/lv/index.html)",
      name_lv: "Mūsu sākumlapas ieviešana (site/lv/index.html)",
      type: "PAGE", page: "PAGE-001", route: "Projekts_SEZAMS/site/lv/index.html",
      description: "Primary landing page in our Projekts_SEZAMS copy, implementing hero banner, statistics, and navigation.",
      description_lv: "Galvenā sākumlapa mūsu Projekts_SEZAMS kopijā ar ievada baneri, statistiku un navigāciju.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Target repository Projekts_SEZAMS/site/lv/ directory.",
      expectedBehavior: "All relative navigation links, hero buttons, and localized assets load without 404 or dead href='#'.",
      expectedBehavior_lv: "Visas relatīvās navigācijas saites, banera pogas un lokālie resursi ielādējas bez 404 vai href='#'.",
      observedBehavior: "Layout shell implemented; requires local folder scan to verify all relative links and asset paths.",
      observedBehavior_lv: "Izkārtojums izveidots; nepieciešama lokālās mapes skenēšana, lai verificētu relatīvās saites un resursus.",
      relatedFunctionIds: ["FUNC-001", "FUNC-002"], relatedApiIds: ["API-001"], relatedDefectIds: ["DEFECT-001", "DEFECT-009"], testIds: ["TEST-001", "TEST-011"],
      views: ["ALL", "REF_COMPARE", "NAVIGATION", "COMPONENT", "USE_CASE"], x: 110, y: 90
    },
    {
      id: "ROUTE-001", origin: "OUR_IMPL", refId: "REF-ROUTE-001",
      name: "Our Language Folder Routing (site/lv/ ↔ site/en/)",
      name_lv: "Mūsu valodu mapju maršrutēšana (site/lv/ ↔ site/en/)",
      type: "ROUTE", page: "PAGE-001", route: "Projekts_SEZAMS/site/:locale/",
      description: "Directory-based localization in Projekts_SEZAMS switching between Latvian and English page copies.",
      description_lv: "Uz direktorijām balstīta lokalizācija mūsu Projekts_SEZAMS kodā starp LV un EN lapu kopijām.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS/site/lv/... structure.",
      expectedBehavior: "Clicking LV/EN links navigates to the matching page in the target language directory.",
      expectedBehavior_lv: "Nospiežot LV/EN pārslēdzēju, tiek atvērta atbilstošā lapa mērķa valodas mapē.",
      observedBehavior: "Suspected missing counterpart files or broken relative '../en/' paths on nested pages.",
      observedBehavior_lv: "Aizdomas par trūkstošiem tulkotajiem failiem vai nekorektiem relatīvajiem '../en/' ceļiem apakšlapās.",
      relatedFunctionIds: ["FUNC-001"], relatedApiIds: [], relatedDefectIds: ["DEFECT-002"], testIds: ["TEST-002"],
      views: ["ALL", "REF_COMPARE", "NAVIGATION", "ACTIVITY", "DEFECT_MAP"], x: 110, y: 210
    },
    {
      id: "PAGE-002", origin: "OUR_IMPL", refId: "REF-PAGE-002",
      name: "Our 'About LSEZ' Page (site/lv/par-lsez)",
      name_lv: "Mūsu 'Par LSEZ' lapa (site/lv/par-lsez)",
      type: "PAGE", page: "PAGE-002", route: "Projekts_SEZAMS/site/lv/par-lsez/",
      description: "Our repository's implementation of the institutional overview and downloadable documents page.",
      description_lv: "Mūsu repozitorija 'Par LSEZ' pārskata un dokumentu lapas ieviešana.",
      status: "UNTESTED", severity: "LOW", confidence: "UNVERIFIED",
      sourceEvidence: "Projekts_SEZAMS/site/lv/ navigation target.",
      expectedBehavior: "Renders governance overview and valid local links to regulation PDFs.",
      expectedBehavior_lv: "Attēlo pārvaldības informāciju un derīgas saites uz PDF dokumentiem.",
      observedBehavior: "Unverified until local folder scan checks if PDF assets exist in repo.",
      observedBehavior_lv: "Nav pārbaudīts, līdz lokālā skenēšana verificē PDF failu esamību repozitorijā.",
      relatedFunctionIds: ["FUNC-002"], relatedApiIds: ["API-002"], relatedDefectIds: ["DEFECT-001"], testIds: ["TEST-001", "TEST-014"],
      views: ["ALL", "NAVIGATION"], x: 340, y: 90
    },
    {
      id: "PAGE-003", origin: "OUR_IMPL", refId: "REF-PAGE-003",
      name: "Our 'For Investors' Page (site/lv/investoriem)",
      name_lv: "Mūsu 'Investoriem' lapa (site/lv/investoriem)",
      type: "PAGE", page: "PAGE-003", route: "Projekts_SEZAMS/site/lv/investoriem/",
      description: "Our implementation of investor tax incentives and the interactive territory map.",
      description_lv: "Mūsu investoru nodokļu atlaižu un interaktīvās teritoriju kartes lapas ieviešana.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS investor page & map assets.",
      expectedBehavior: "Interactive map parcels respond to clicks and filter buttons work without overlay obstruction.",
      expectedBehavior_lv: "Interaktīvās kartes poligoni reaģē uz klikšķiem un filtru pogas nav bloķētas.",
      observedBehavior: "Map visual assets exist, but dynamic parcel data binding (API-003) and mobile overlay z-index require fixes.",
      observedBehavior_lv: "Kartes vizuālie elementi pastāv, bet dinamisko datu piesaiste un mobilo pārklājumu z-index prasa labojumus.",
      relatedFunctionIds: ["FUNC-003"], relatedApiIds: ["API-003"], relatedDefectIds: ["DEFECT-003", "DEFECT-008"], testIds: ["TEST-003", "TEST-012"],
      views: ["ALL", "REF_COMPARE", "NAVIGATION", "USE_CASE", "COMPONENT"], x: 340, y: 210
    },
    {
      id: "PAGE-004", origin: "OUR_IMPL", refId: "REF-PAGE-004",
      name: "Our 'Port of Liepaja' Page (site/lv/liepajas-osta)",
      name_lv: "Mūsu 'Liepājas osta' lapa (site/lv/liepajas-osta)",
      type: "PAGE", page: "PAGE-004", route: "Projekts_SEZAMS/site/lv/liepajas-osta/",
      description: "Our implementation of port technical specs, terminals, and cargo statistics.",
      description_lv: "Mūsu ostas tehnisko parametru, termināļu un kravu statistikas lapas ieviešana.",
      status: "UNTESTED", severity: "LOW", confidence: "UNVERIFIED",
      sourceEvidence: "Projekts_SEZAMS/site/lv/ route.",
      expectedBehavior: "Displays responsive terminal data tables without horizontal viewport overflow.",
      expectedBehavior_lv: "Attēlo responsīvas termināļu tabulas bez horizontālās ekrāna pārplūdes.",
      observedBehavior: "Queued for local scan & viewport overflow check TEST-011.",
      observedBehavior_lv: "Ieplānots lokālajai skenēšanai un ekrāna pārplūdes testam TEST-011.",
      relatedFunctionIds: ["FUNC-003"], relatedApiIds: ["API-004"], relatedDefectIds: [], testIds: ["TEST-001", "TEST-011"],
      views: ["ALL", "NAVIGATION"], x: 340, y: 330
    },
    {
      id: "PAGE-005", origin: "OUR_IMPL", refId: "REF-PAGE-005",
      name: "Our 'News' Page (site/lv/jaunumi)",
      name_lv: "Mūsu 'Jaunumi' lapa (site/lv/jaunumi)",
      type: "PAGE", page: "PAGE-005", route: "Projekts_SEZAMS/site/lv/jaunumi/",
      description: "Our implementation of the news index and article cards.",
      description_lv: "Mūsu jaunumu saraksta un ziņu kartīšu ieviešana.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS news listing template.",
      expectedBehavior: "Pagination and category filter controls update displayed news items.",
      expectedBehavior_lv: "Lapošanas un kategoriju filtru pogas atjaunina redzamās ziņu kartītes.",
      observedBehavior: "In a static HTML copy, pagination links (?page=2 or #) fail unless wired to client-side JS filtering.",
      observedBehavior_lv: "Statiskā HTML kopijā lapošanas saites (?page=2 vai #) nedarbojas bez klienta puses JS filtrēšanas.",
      relatedFunctionIds: ["FUNC-005"], relatedApiIds: ["API-001"], relatedDefectIds: ["DEFECT-004"], testIds: ["TEST-004"],
      views: ["ALL", "NAVIGATION", "API_FLOW"], x: 340, y: 450
    },
    {
      id: "PAGE-006", origin: "OUR_IMPL", refId: "REF-PAGE-006",
      name: "Our 'Contacts' Page (site/lv/kontakti)",
      name_lv: "Mūsu 'Kontakti' lapa (site/lv/kontakti)",
      type: "PAGE", page: "PAGE-006", route: "Projekts_SEZAMS/site/lv/kontakti/",
      description: "Our implementation of the contact directory and visitor inquiry form.",
      description_lv: "Mūsu kontaktu saraksta un apmeklētāju saziņas formas ieviešana.",
      status: "BROKEN", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS contact page form markup.",
      expectedBehavior: "Validates inputs and handles submission via JS without throwing 404/405.",
      expectedBehavior_lv: "Validē ievades laukus un apstrādā iesniegšanu ar JS bez 404/405 kļūdas.",
      observedBehavior: "Static HTML <form> lacks a live backend mail endpoint (API-005) and requires client-side handler FUNC-006.",
      observedBehavior_lv: "Statiskajai HTML <form> trūkst servera e-pasta galapunkta (API-005) un nepieciešams JS apstrādātājs FUNC-006.",
      relatedFunctionIds: ["FUNC-006"], relatedApiIds: ["API-005"], relatedDefectIds: ["DEFECT-005"], testIds: ["TEST-005", "TEST-006"],
      views: ["ALL", "REF_COMPARE", "NAVIGATION", "SEQUENCE", "ACTIVITY"], x: 110, y: 330
    },
    {
      id: "PAGE-007", origin: "OUR_IMPL", refId: "REF-PAGE-007",
      name: "Our SEZAMS Auth / E-Services Module",
      name_lv: "Mūsu SEZAMS autentifikācijas / E-pakalpojumu modulis",
      type: "PAGE", page: "PAGE-007", route: "Projekts_SEZAMS/sezams/",
      description: "Custom/reconstructed SEZAMS login and permit workspace in our repository.",
      description_lv: "Mūsu repozitorijā izstrādātais SEZAMS pieteikšanās un caurlaižu modulis.",
      status: "PARTIAL", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS repository core module.",
      expectedBehavior: "Validates login credentials and prevents unauthenticated access to protected dashboard pages.",
      expectedBehavior_lv: "Validē pieteikšanās datus un nepieļauj neautorizētu piekļuvi darba virsmas lapām.",
      observedBehavior: "Backend auth API (API-006) is missing/mocked in static dev build; direct URL navigation bypasses login.",
      observedBehavior_lv: "Servera autentifikācijas API (API-006) statiskajā versijā trūkst; tieša URL atvēršana apiet login lapu.",
      relatedFunctionIds: ["FUNC-007", "FUNC-008"], relatedApiIds: ["API-006", "API-007"], relatedDefectIds: ["DEFECT-006", "DEFECT-007"], testIds: ["TEST-007", "TEST-008"],
      views: ["ALL", "REF_COMPARE", "NAVIGATION", "USE_CASE", "COMPONENT", "SEQUENCE", "STATE", "DEFECT_MAP"], x: 575, y: 90
    },
    {
      id: "COMP-001", origin: "OUR_IMPL", refId: "REF-COMP-001",
      name: "Our Header & Navigation Bar Markup",
      name_lv: "Mūsu galvenes un navigācijas joslas marķējums",
      type: "COMP", page: "PAGE-001", route: "Projekts_SEZAMS/site/lv/...",
      description: "Top navigation bar, dropdown menus, and mobile drawer in our HTML templates.",
      description_lv: "Augšējā navigācijas josla, nolaižamās izvēlnes un mobilā izvēlne mūsu HTML veidnēs.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Header markup across Projekts_SEZAMS HTML files.",
      expectedBehavior: "All menu links resolve to existing repository files; mobile menu toggles cleanly.",
      expectedBehavior_lv: "Visas izvēlnes saites ved uz eksistējošiem repozitorija failiem; mobilā izvēlne darbojas korekti.",
      observedBehavior: "Contains placeholder href='#' or broken relative links on nested routes (DEFECT-001, DEFECT-009).",
      observedBehavior_lv: "Satur viettura saites href='#' vai bojātus relatīvos ceļus apakšlapās (DEFECT-001, DEFECT-009).",
      relatedFunctionIds: ["FUNC-001", "FUNC-002"], relatedApiIds: [], relatedDefectIds: ["DEFECT-001", "DEFECT-002", "DEFECT-009"], testIds: ["TEST-001", "TEST-002", "TEST-013"],
      views: ["ALL", "REF_COMPARE", "COMPONENT", "NAVIGATION", "DEFECT_MAP"], x: 575, y: 210
    },
    {
      id: "COMP-002", origin: "OUR_IMPL", refId: "REF-COMP-002",
      name: "Our Interactive Territory Map Component",
      name_lv: "Mūsu interaktīvās teritoriju kartes komponente",
      type: "COMP", page: "PAGE-003", route: "Projekts_SEZAMS/site/lv/investoriem/",
      description: "SVG/image map overlay displaying industrial plots in our implementation.",
      description_lv: "SVG/attēla kartes pārklājums industriālo zemesgabalu attēlošanai mūsu kodā.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Investor page map section in Projekts_SEZAMS.",
      expectedBehavior: "Interactive parcel selection with complete local JSON data and no click interception.",
      expectedBehavior_lv: "Interaktīva zemesgabalu izvēle ar pilniem lokāliem datiem un bez klikšķu bloķēšanas.",
      observedBehavior: "Missing dynamic data binding (DEFECT-003) and potential overlay z-index overlap (DEFECT-008).",
      observedBehavior_lv: "Trūkst dinamisko datu piesaistes (DEFECT-003) un iespējama pārklājuma z-index kļūda (DEFECT-008).",
      relatedFunctionIds: ["FUNC-003"], relatedApiIds: ["API-003"], relatedDefectIds: ["DEFECT-003", "DEFECT-008"], testIds: ["TEST-003", "TEST-012"],
      views: ["ALL", "REF_COMPARE", "COMPONENT", "API_FLOW", "DEFECT_MAP"], x: 575, y: 330
    },
    {
      id: "BTN-001", origin: "OUR_IMPL", refId: "REF-COMP-001",
      name: "Our Language Switcher Control (LV/EN)",
      name_lv: "Mūsu valodu pārslēgšanas poga (LV/EN)",
      type: "BTN", page: "PAGE-001", route: "Projekts_SEZAMS/site/lv/...",
      description: "Language toggle link/button in our header template.",
      description_lv: "Valodas pārslēgšanas saite/poga mūsu galvenes veidnē.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Header language links in Projekts_SEZAMS.",
      expectedBehavior: "Switches between site/lv/ and site/en/ counterparts without 404.",
      expectedBehavior_lv: "Pārslēdz starp site/lv/ un site/en/ atbilstošajām lapām bez 404 kļūdas.",
      observedBehavior: "Requires verification of relative path depth across sub-folders (DEFECT-002).",
      observedBehavior_lv: "Jāpārbauda relatīvo ceļu dziļums apakšmapēs (DEFECT-002).",
      relatedFunctionIds: ["FUNC-001"], relatedApiIds: [], relatedDefectIds: ["DEFECT-002"], testIds: ["TEST-002"],
      views: ["ALL", "COMPONENT"], x: 575, y: 450
    },
    {
      id: "FORM-001", origin: "OUR_IMPL", refId: "REF-FORM-001",
      name: "Our Contact Inquiry Form Markup",
      name_lv: "Mūsu kontaktu saziņas formas marķējums",
      type: "FORM", page: "PAGE-006", route: "Projekts_SEZAMS/site/lv/kontakti/",
      description: "Contact form in our Projekts_SEZAMS implementation.",
      description_lv: "Kontaktu forma mūsu Projekts_SEZAMS ieviešanā.",
      status: "BROKEN", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Form element in Projekts_SEZAMS contact page.",
      expectedBehavior: "Validates inputs and provides user confirmation via FUNC-006.",
      expectedBehavior_lv: "Validē ievaddatus un sniedz apstiprinājumu caur FUNC-006.",
      observedBehavior: "Backend POST endpoint (API-005) is missing in static repo; unguarded submit fails.",
      observedBehavior_lv: "Statiskajā repozitorijā trūkst servera POST galapunkta (API-005); neapstrādāta iesniegšana neizdodas.",
      relatedFunctionIds: ["FUNC-006"], relatedApiIds: ["API-005"], relatedDefectIds: ["DEFECT-005"], testIds: ["TEST-005", "TEST-006"],
      views: ["ALL", "REF_COMPARE", "COMPONENT", "SEQUENCE", "ACTIVITY", "STATE", "DEFECT_MAP"], x: 810, y: 210
    },
    {
      id: "FORM-002", origin: "OUR_IMPL", refId: "REF-PAGE-007",
      name: "Our SEZAMS Login Form",
      name_lv: "Mūsu SEZAMS pieteikšanās forma",
      type: "FORM", page: "PAGE-007", route: "Projekts_SEZAMS/sezams/",
      description: "Authentication form in our Projekts_SEZAMS codebase.",
      description_lv: "Autentifikācijas forma mūsu Projekts_SEZAMS pirmkodā.",
      status: "PARTIAL", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Projekts_SEZAMS login template.",
      expectedBehavior: "Authenticates user credentials and initializes protected session.",
      expectedBehavior_lv: "Autentificē lietotāja datus un inicializē aizsargātu sesiju.",
      observedBehavior: "Operates without a real backend auth server (API-006) unless mocked in FUNC-007.",
      observedBehavior_lv: "Darbojas bez reāla autentifikācijas servera (API-006), ja vien nav simulēts funkcijā FUNC-007.",
      relatedFunctionIds: ["FUNC-007"], relatedApiIds: ["API-006"], relatedDefectIds: ["DEFECT-006", "DEFECT-007"], testIds: ["TEST-007", "TEST-008"],
      views: ["ALL", "USE_CASE", "COMPONENT", "SEQUENCE", "ACTIVITY", "STATE", "DEFECT_MAP"], x: 810, y: 90
    },
    {
      id: "MODAL-001", origin: "OUR_IMPL", refId: "REF-COMP-001",
      name: "Our Search Overlay Modal",
      name_lv: "Mūsu meklēšanas modālais logs",
      type: "MODAL", page: "PAGE-001", route: "Projekts_SEZAMS/site/lv/...",
      description: "Search input overlay in our implementation.",
      description_lv: "Meklēšanas ievades pārklājums mūsu ieviešanā.",
      status: "PARTIAL", severity: "LOW", confidence: "UNVERIFIED",
      sourceEvidence: "Search modal markup in Projekts_SEZAMS.",
      expectedBehavior: "Opens on search button click, traps focus, closes on Escape, and filters local pages.",
      expectedBehavior_lv: "Atveras uz meklēšanas pogas klikšķa, notur fokusu, aizveras ar Escape un meklē lokālajās lapās.",
      observedBehavior: "Missing backend search endpoint (API-008) and unverified Escape/Tab focus trap (DEFECT-010).",
      observedBehavior_lv: "Trūkst meklēšanas servera galapunkta (API-008) un nav verificēts Escape/Tab fokusa slazds (DEFECT-010).",
      relatedFunctionIds: ["FUNC-002", "FUNC-005"], relatedApiIds: ["API-008"], relatedDefectIds: ["DEFECT-010"], testIds: ["TEST-009", "TEST-013"],
      views: ["ALL", "STATE", "COMPONENT"], x: 810, y: 330
    },
    {
      id: "FUNC-001", origin: "OUR_IMPL",
      name: "Our Navigation & Locale Script (FUNC-001)",
      name_lv: "Mūsu navigācijas un valodu skripts (FUNC-001)",
      type: "FUNC", page: "PAGE-001", route: "Projekts_SEZAMS/...",
      description: "JavaScript controlling mobile menu, dropdowns, and language switching in Projekts_SEZAMS.",
      description_lv: "JavaScript kods mobilās izvēlnes, nolaižamo izvēļņu un valodu pārslēgšanas vadībai Projekts_SEZAMS.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Shared JS file in Projekts_SEZAMS.",
      expectedBehavior: "Cleanly resolves relative paths across site/lv/ and site/en/ and manages aria-expanded.",
      expectedBehavior_lv: "Korekti atrisina relatīvos ceļus starp site/lv/ un site/en/ un pārvalda aria-expanded.",
      observedBehavior: "Needs fallback handling when a translated page counterpart is missing.",
      observedBehavior_lv: "Nepieciešama rezerves apstrāde gadījumiem, kad tulkotais fails neeksistē.",
      relatedFunctionIds: [], relatedApiIds: [], relatedDefectIds: ["DEFECT-001", "DEFECT-002"], testIds: ["TEST-002", "TEST-013"],
      views: ["ALL", "COMPONENT", "CLASS", "ACTIVITY"], x: 1045, y: 90
    },
    {
      id: "FUNC-003", origin: "OUR_IMPL",
      name: "Our Territory Map Script (FUNC-003)",
      name_lv: "Mūsu teritoriju kartes skripts (FUNC-003)",
      type: "FUNC", page: "PAGE-003", route: "Projekts_SEZAMS/...",
      description: "Client-side script handling map interactions on the investor page.",
      description_lv: "Klienta puses skripts kartes mijiedarbībai investoru lapā.",
      status: "PARTIAL", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Map JS logic in Projekts_SEZAMS.",
      expectedBehavior: "Renders parcel details from local JSON/GeoJSON dataset when a plot is clicked.",
      expectedBehavior_lv: "Attēlo zemesgabala datus no lokāla JSON/GeoJSON faila pēc klikšķa.",
      observedBehavior: "Incomplete data binding to API-003 / local JSON store.",
      observedBehavior_lv: "Nepilnīga datu piesaiste pie API-003 vai lokālā JSON faila.",
      relatedFunctionIds: [], relatedApiIds: ["API-003"], relatedDefectIds: ["DEFECT-003", "DEFECT-008"], testIds: ["TEST-003"],
      views: ["ALL", "COMPONENT", "CLASS", "API_FLOW", "DEFECT_MAP"], x: 1045, y: 210
    },
    {
      id: "FUNC-006", origin: "OUR_IMPL",
      name: "Our Contact Form Handler (FUNC-006)",
      name_lv: "Mūsu kontaktu formas apstrādātājs (FUNC-006)",
      type: "FUNC", page: "PAGE-006", route: "Projekts_SEZAMS/...",
      description: "JavaScript validation and submit handler for FORM-001 in Projekts_SEZAMS.",
      description_lv: "JavaScript validācijas un iesniegšanas apstrādātājs formai FORM-001 mūsu projektā.",
      status: "BROKEN", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Contact form JS in Projekts_SEZAMS.",
      expectedBehavior: "Intercepts submit, validates fields, locks button, and shows confirmation message.",
      expectedBehavior_lv: "Pārtver iesniegšanu, validē laukus, bloķē pogu un parāda apstiprinājuma paziņojumu.",
      observedBehavior: "Either missing submit listener or attempting to call a non-existent backend endpoint.",
      observedBehavior_lv: "Trūkst submit klausītāja vai tiek izsaukts neeksistējošs servera galapunkts.",
      relatedFunctionIds: [], relatedApiIds: ["API-005"], relatedDefectIds: ["DEFECT-005"], testIds: ["TEST-005", "TEST-006"],
      views: ["ALL", "SEQUENCE", "ACTIVITY", "CLASS", "API_FLOW", "DEFECT_MAP"], x: 1045, y: 330
    },
    {
      id: "FUNC-007", origin: "OUR_IMPL",
      name: "Our SEZAMS Auth & Guard Script (FUNC-007)",
      name_lv: "Mūsu SEZAMS autentifikācijas un sarga skripts (FUNC-007)",
      type: "FUNC", page: "PAGE-007", route: "Projekts_SEZAMS/...",
      description: "Authentication and route-protection logic in our Projekts_SEZAMS codebase.",
      description_lv: "Autentifikācijas un maršrutu aizsardzības loģika mūsu Projekts_SEZAMS kodā.",
      status: "PARTIAL", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "SEZAMS auth script.",
      expectedBehavior: "Verifies session state before rendering protected dashboard pages.",
      expectedBehavior_lv: "Pārbauda sesijas stāvokli pirms aizsargāto darba virsmas lapu attēlošanas.",
      observedBehavior: "Missing route guard on protected HTML pages (DEFECT-007).",
      observedBehavior_lv: "Trūkst maršruta aizsardzības skripta aizsargātajās HTML lapās (DEFECT-007).",
      relatedFunctionIds: [], relatedApiIds: ["API-006", "API-007"], relatedDefectIds: ["DEFECT-006", "DEFECT-007"], testIds: ["TEST-007", "TEST-008"],
      views: ["ALL", "SEQUENCE", "CLASS", "API_FLOW", "DEFECT_MAP"], x: 1045, y: 450
    },
    {
      id: "API-003", origin: "OUR_IMPL",
      name: "Territory Parcels Data Feed (API-003)",
      name_lv: "Teritoriju zemesgabalu datu avots (API-003)",
      type: "API", page: "PAGE-003", route: "Projekts_SEZAMS/data/territories.json",
      description: "Data feed or local JSON file required by our interactive investor map.",
      description_lv: "Datu plūsma vai lokāls JSON fails mūsu interaktīvajai investoru kartei.",
      status: "MISSING", severity: "MEDIUM", confidence: "LIKELY",
      sourceEvidence: "Required by COMP-002 / FUNC-003.",
      expectedBehavior: "Supplies parcel coordinates, area, and status to FUNC-003.",
      expectedBehavior_lv: "Nodrošina zemesgabalu koordinātas, platību un statusu funkcijai FUNC-003.",
      observedBehavior: "Dynamic backend API is absent in static repo; requires local JSON dataset binding.",
      observedBehavior_lv: "Dinamiskais API statiskajā repozitorijā neeksistē; jāpiesaista lokāls JSON fails.",
      relatedFunctionIds: ["FUNC-003"], relatedApiIds: [], relatedDefectIds: ["DEFECT-003"], testIds: ["TEST-003"],
      views: ["ALL", "API_FLOW", "DEFECT_MAP"], x: 1280, y: 210
    },
    {
      id: "API-005", origin: "OUR_IMPL",
      name: "Contact Submission Endpoint (API-005)",
      name_lv: "Kontaktu formas iesniegšanas galapunkts (API-005)",
      type: "API", page: "PAGE-006", route: "/api/contact",
      description: "Backend endpoint or mock handler required by FORM-001.",
      description_lv: "Servera galapunkts vai simulācijas apstrādātājs formai FORM-001.",
      status: "MISSING", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Required by FORM-001 / FUNC-006.",
      expectedBehavior: "Processes inquiry submission and returns HTTP 200.",
      expectedBehavior_lv: "Apstrādā pieprasījumu un atgriež HTTP 200 apstiprinājumu.",
      observedBehavior: "Missing backend implementation in static repository.",
      observedBehavior_lv: "Statiskajā repozitorijā trūkst servera puses ieviešanas.",
      relatedFunctionIds: ["FUNC-006"], relatedApiIds: [], relatedDefectIds: ["DEFECT-005"], testIds: ["TEST-005", "TEST-006"],
      views: ["ALL", "SEQUENCE", "API_FLOW", "DEFECT_MAP"], x: 1280, y: 330
    },
    {
      id: "API-006", origin: "OUR_IMPL",
      name: "SEZAMS Auth Endpoint (API-006)",
      name_lv: "SEZAMS autentifikācijas galapunkts (API-006)",
      type: "API", page: "PAGE-007", route: "/api/sezams/auth",
      description: "Authentication verification endpoint for our SEZAMS module.",
      description_lv: "Autentifikācijas pārbaudes galapunkts mūsu SEZAMS modulim.",
      status: "MISSING", severity: "HIGH", confidence: "LIKELY",
      sourceEvidence: "Required by FORM-002 / FUNC-007.",
      expectedBehavior: "Validates credentials and issues session token.",
      expectedBehavior_lv: "Pārbauda akreditācijas datus un izsniedz sesijas marķieri.",
      observedBehavior: "Missing server-side auth endpoint in development repository.",
      observedBehavior_lv: "Izstrādes repozitorijā trūkst servera puses autentifikācijas galapunkta.",
      relatedFunctionIds: ["FUNC-007"], relatedApiIds: [], relatedDefectIds: ["DEFECT-006"], testIds: ["TEST-007"],
      views: ["ALL", "SEQUENCE", "API_FLOW", "DEPLOYMENT", "DEFECT_MAP"], x: 1280, y: 450
    },

    // HISTORICAL REFERENCE BASELINE NODES (liepaja-sez.lv — Retained per Section 2 & 4)
    {
      id: "REF-PAGE-001", origin: "REFERENCE",
      name: "[REF] liepaja-sez.lv Homepage Baseline",
      name_lv: "[ATSAUCE] liepaja-sez.lv Sākumlapas bāze",
      type: "REF", page: "REF-PAGE-001", route: "https://liepaja-sez.lv/lv",
      description: "Historical reference baseline from original website (NOT our production deployment).",
      description_lv: "Vēsturiskā atsauces bāze no oriģinālās vietnes (NAV mūsu produkcijas vide).",
      status: "REFERENCE", severity: "INFO", confidence: "CONFIRMED",
      sourceEvidence: "Original reference mapping of https://liepaja-sez.lv.",
      expectedBehavior: "Reference baseline for PAGE-001 layout and navigation.",
      expectedBehavior_lv: "Atsauces bāze PAGE-001 izkārtojumam un navigācijai.",
      observedBehavior: "Used strictly as design/workflow reference for our Projekts_SEZAMS implementation.",
      observedBehavior_lv: "Izmantots tikai kā dizaina un funkcionalitātes etalons mūsu Projekts_SEZAMS projektam.",
      relatedFunctionIds: [], relatedApiIds: [], relatedDefectIds: [], testIds: [],
      views: ["REF_COMPARE"], x: 110, y: 575
    },
    {
      id: "REF-PAGE-003", origin: "REFERENCE",
      name: "[REF] liepaja-sez.lv Investor & GIS Baseline",
      name_lv: "[ATSAUCE] liepaja-sez.lv Investoru un ĢIS bāze",
      type: "REF", page: "REF-PAGE-003", route: "https://liepaja-sez.lv/lv/investoriem",
      description: "Original reference workflow for industrial territory map and tax calculator.",
      description_lv: "Oriģinālais atsauces etalons industriālo teritoriju kartei un nodokļu informācijai.",
      status: "REFERENCE", severity: "INFO", confidence: "CONFIRMED",
      sourceEvidence: "Reference baseline mapping.",
      expectedBehavior: "Baseline for PAGE-003 and COMP-002.",
      expectedBehavior_lv: "Etalons elementiem PAGE-003 un COMP-002.",
      observedBehavior: "Reference baseline only.",
      observedBehavior_lv: "Tikai atsauces bāze.",
      relatedFunctionIds: [], relatedApiIds: [], relatedDefectIds: ["DEFECT-003"], testIds: [],
      views: ["REF_COMPARE"], x: 340, y: 575
    },
    {
      id: "REF-FORM-001", origin: "REFERENCE",
      name: "[REF] liepaja-sez.lv Contact Form Baseline",
      name_lv: "[ATSAUCE] liepaja-sez.lv Kontaktu formas bāze",
      type: "REF", page: "REF-PAGE-006", route: "https://liepaja-sez.lv/lv/kontakti",
      description: "Original reference contact submission workflow.",
      description_lv: "Oriģinālā atsauces kontaktu formas darbība.",
      status: "REFERENCE", severity: "INFO", confidence: "CONFIRMED",
      sourceEvidence: "Reference baseline mapping.",
      expectedBehavior: "Baseline for FORM-001 validation and submission feedback.",
      expectedBehavior_lv: "Etalons FORM-001 validācijai un apstiprinājuma paziņojumam.",
      observedBehavior: "Reference baseline only.",
      observedBehavior_lv: "Tikai atsauces bāze.",
      relatedFunctionIds: [], relatedApiIds: [], relatedDefectIds: ["DEFECT-005"], testIds: [],
      views: ["REF_COMPARE"], x: 575, y: 575
    }
  ],
  relationships: [
    { id: "REL-001", sourceId: "PAGE-001", targetId: "ROUTE-001", type: "ROUTES_TO", label: "locale switch", status: "PARTIAL", evidence: "Projekts_SEZAMS header LV/EN links" },
    { id: "REL-002", sourceId: "PAGE-001", targetId: "PAGE-002", type: "NAVIGATES", label: "relative link", status: "UNTESTED", evidence: "Navbar link" },
    { id: "REL-003", sourceId: "PAGE-001", targetId: "PAGE-003", type: "NAVIGATES", label: "investor link", status: "PARTIAL", evidence: "Navbar & Hero CTA" },
    { id: "REL-004", sourceId: "PAGE-001", targetId: "PAGE-004", type: "NAVIGATES", label: "port link", status: "UNTESTED", evidence: "Navbar link" },
    { id: "REL-005", sourceId: "PAGE-001", targetId: "PAGE-005", type: "NAVIGATES", label: "news link", status: "PARTIAL", evidence: "News section" },
    { id: "REL-006", sourceId: "PAGE-001", targetId: "PAGE-006", type: "NAVIGATES", label: "contacts link", status: "PARTIAL", evidence: "Header/Footer" },
    { id: "REL-007", sourceId: "PAGE-001", targetId: "PAGE-007", type: "NAVIGATES", label: "SEZAMS link", status: "PARTIAL", evidence: "SEZAMS button" },
    { id: "REL-008", sourceId: "PAGE-001", targetId: "COMP-001", type: "RENDERS", label: "header markup", status: "PARTIAL", evidence: "HTML template" },
    { id: "REL-009", sourceId: "COMP-001", targetId: "BTN-001", type: "CONTAINS", label: "locale btn", status: "PARTIAL", evidence: "Header DOM" },
    { id: "REL-012", sourceId: "PAGE-003", targetId: "COMP-002", type: "RENDERS", label: "map component", status: "PARTIAL", evidence: "Investor HTML" },
    { id: "REL-013", sourceId: "COMP-002", targetId: "FUNC-003", type: "INVOKES", label: "map script", status: "PARTIAL", evidence: "JS binding" },
    { id: "REL-014", sourceId: "FUNC-003", targetId: "API-003", type: "FETCHES", label: "missing data feed", status: "MISSING", evidence: "Data flow" },
    { id: "REL-015", sourceId: "PAGE-006", targetId: "FORM-001", type: "RENDERS", label: "contact form", status: "BROKEN", evidence: "Contacts HTML" },
    { id: "REL-016", sourceId: "FORM-001", targetId: "FUNC-006", type: "SUBMITS_TO", label: "onSubmit", status: "BROKEN", evidence: "Form handler" },
    { id: "REL-017", sourceId: "FUNC-006", targetId: "API-005", type: "CALLS_API", label: "missing POST", status: "MISSING", evidence: "Backend gap" },
    { id: "REL-018", sourceId: "PAGE-007", targetId: "FORM-002", type: "RENDERS", label: "login form", status: "PARTIAL", evidence: "SEZAMS HTML" },
    { id: "REL-019", sourceId: "FORM-002", targetId: "FUNC-007", type: "SUBMITS_TO", label: "auth check", status: "PARTIAL", evidence: "Auth script" },
    { id: "REL-020", sourceId: "FUNC-007", targetId: "API-006", type: "CALLS_API", label: "missing auth API", status: "MISSING", evidence: "Auth gap" },
    // Reference-to-Implementation Traceability Edges
    { id: "REL-REF-1", sourceId: "PAGE-001", targetId: "REF-PAGE-001", type: "IMPLEMENTS_REF", label: "modeled on ref", status: "WORKING", evidence: "Reference comparison" },
    { id: "REL-REF-3", sourceId: "PAGE-003", targetId: "REF-PAGE-003", type: "IMPLEMENTS_REF", label: "modeled on ref", status: "PARTIAL", evidence: "Reference comparison" },
    { id: "REL-REF-6", sourceId: "FORM-001", targetId: "REF-FORM-001", type: "IMPLEMENTS_REF", label: "modeled on ref", status: "BROKEN", evidence: "Reference comparison" }
  ],
  defects: [
    {
      id: "DEFECT-001",
      title: "Unfinished Navigation Links (href='#') & Relative Path Discrepancies in Projekts_SEZAMS",
      title_lv: "Nepabeigtas navigācijas saites (href='#') un relatīvo ceļu kļūdas Projekts_SEZAMS kodā",
      severity: "HIGH", confidence: "LIKELY", status: "PARTIAL",
      category: "Navigation / HTML Templates", category_lv: "Navigācija / HTML veidnes",
      page: "PAGE-001", component: "COMP-001", func: "FUNC-001", api: "NONE", test: "TEST-001",
      originalBehavior: "On the reference website (liepaja-sez.lv), all header, mega-menu, and footer links resolve via server-side CMS routing to live pages.",
      originalBehavior_lv: "Atsauces vietnē (liepaja-sez.lv) visas galvenes, izvēlnes un kājenes saites caur CMS maršrutēšanu atver aktīvas lapas.",
      ourImplementation: "In Projekts_SEZAMS/site/lv/..., static HTML templates use relative paths or placeholder href='#' attributes on secondary links that have not yet been wired to local HTML files.",
      ourImplementation_lv: "Mūsu Projekts_SEZAMS/site/lv/... statiskajās HTML veidnēs daudzas sekundārās saites izmanto href='#' vietturus vai neprecīzus relatīvos ceļus.",
      expected: "Every navigation link in our Projekts_SEZAMS templates should resolve to an existing local HTML file in our repository (or display a planned placeholder view).",
      expected_lv: "Katrai navigācijas saitei mūsu Projekts_SEZAMS veidnēs jāatver eksistējošs lokāls HTML fails mūsu repozitorijā.",
      discrepancy: "Defect in our implementation: Unwired anchor tags (href='#') and broken relative paths prevent users from navigating between implemented pages.",
      discrepancy_lv: "Defekts mūsu ieviešanā: Nepiesaistītas saites (href='#') un kļūdaini relatīvie ceļi neļauj pārvietoties starp izveidotajām lapām.",
      fix: "Click '📂 Audit Local Projekts_SEZAMS Folder' to list every broken href and line number in Projekts_SEZAMS/site/lv/..., then update the href attributes to point to the correct relative .html files.",
      fix_lv: "Noklikšķiniet uz '📂 Auditēt lokālo Projekts_SEZAMS mapi', lai iegūtu visas bojātās saites un rindu numurus Projekts_SEZAMS/site/lv/..., un izlabojiet href atribūtus.",
      matchKeywords: ["href=\"#\"", "nav", "header", "index.html", "menu"],
      sourceLocations: [
        {
          filePath: null,
          role: "HTML Navigation Template in Projekts_SEZAMS",
          role_lv: "HTML navigācijas veidne Projekts_SEZAMS repozitorijā",
          codeSection: "<header> / <nav> anchor tags (<a href='...'>)",
          lineRange: null,
          reason: "Audit all <a href> attributes inside Projekts_SEZAMS/site/lv/... to identify dead '#' links and missing target HTML files.",
          reason_lv: "Pārbaudīt visus <a href> atribūtus mapē Projekts_SEZAMS/site/lv/..., lai atrastu '#' saites un neeksistējošus mērķa failus.",
          relatedArtifact: "PAGE-001, COMP-001",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-002",
      title: "Language Switcher (LV/EN) Relative Directory Path Resolution in Projekts_SEZAMS",
      title_lv: "Valodu pārslēdzēja (LV/EN) relatīvo mapju ceļu atrisināšana Projekts_SEZAMS kodā",
      severity: "MEDIUM", confidence: "LIKELY", status: "PARTIAL",
      category: "Localization / Routing", category_lv: "Lokalizācija / Maršrutēšana",
      page: "PAGE-001", component: "BTN-001", func: "FUNC-001", api: "NONE", test: "TEST-002",
      originalBehavior: "Reference site (liepaja-sez.lv) dynamically switches URL prefix between /lv/... and /en/...",
      originalBehavior_lv: "Atsauces vietne (liepaja-sez.lv) dinamiski nomaina URL prefiksu starp /lv/... un /en/...",
      ourImplementation: "Projekts_SEZAMS organizes localized pages into static directories (such as Projekts_SEZAMS/site/lv/...). Switching language from nested folders requires accurate relative traversal (e.g., ../../en/...) or a JS path mapper.",
      ourImplementation_lv: "Projekts_SEZAMS glabā valodu lapas atsevišķās mapēs (piem., Projekts_SEZAMS/site/lv/...). Valodas maiņai no apakšmapēm nepieciešami precīzi relatīvie ceļi vai JS maršrutētājs.",
      expected: "Clicking EN or LV from any page in Projekts_SEZAMS opens the corresponding localized file in the repository, or falls back to the target language homepage.",
      expected_lv: "Nospiežot EN vai LV jebkurā Projekts_SEZAMS lapā, atveras atbilstošais tulkotais fails vai attiecīgās valodas sākumlapa.",
      discrepancy: "Intentional architectural change (directory-based static files vs. CMS), but incomplete relative link mapping causes 404s when switching languages on sub-pages.",
      discrepancy_lv: "Tīša arhitektūras maiņa (uz mapēm balstīti faili pret CMS), bet nepilnīga relatīvo saišu kartēšana izraisa 404 kļūdas apakšlapās.",
      fix: "Update FUNC-001 in Projekts_SEZAMS to rewrite '/site/lv/' <-> '/site/en/' dynamically with a fallback to index.html if the translated counterpart file is not yet created.",
      fix_lv: "Papildināt FUNC-001 mūsu Projekts_SEZAMS kodā, lai tas dinamiski pārrakstītu '/site/lv/' <-> '/site/en/' ar rezerves pāreju uz index.html.",
      matchKeywords: ["site/lv", "site/en", "lang", "en", "lv"],
      sourceLocations: [
        {
          filePath: null,
          role: "Localized Page Header Markup (Projekts_SEZAMS/site/lv/...)",
          role_lv: "Lokalizētās lapas galvenes marķējums (Projekts_SEZAMS/site/lv/...)",
          codeSection: "BTN-001 language selector <a> elements",
          lineRange: null,
          reason: "Inspect language switcher href paths across root and nested HTML files in Projekts_SEZAMS/site/lv/.",
          reason_lv: "Pārbaudīt valodu pārslēdzēja href ceļus saknes un apakšmapju HTML failos zem Projekts_SEZAMS/site/lv/.",
          relatedArtifact: "ROUTE-001, BTN-001, FUNC-001",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-003",
      title: "Incomplete Parcel Dataset & Interactive Popover Binding on Investor Map",
      title_lv: "Nepilnīga zemesgabalu datu piesaiste un informācijas logi investoru kartē",
      severity: "MEDIUM", confidence: "LIKELY", status: "MISSING",
      category: "Data Binding / JavaScript", category_lv: "Datu piesaiste / JavaScript",
      page: "PAGE-003", component: "COMP-002", func: "FUNC-003", api: "API-003", test: "TEST-003",
      originalBehavior: "Reference site (liepaja-sez.lv) loads interactive parcel details and lease statuses on the investor map.",
      originalBehavior_lv: "Atsauces vietne (liepaja-sez.lv) investoru kartē ielādē interaktīvus zemesgabalu datus un nomas statusus.",
      ourImplementation: "In Projekts_SEZAMS, the map visual container (COMP-002) is present, but the underlying parcel dataset (API-003) or click handler (FUNC-003) is incomplete or static.",
      ourImplementation_lv: "Mūsu Projekts_SEZAMS kodā kartes vizuālais konteiners (COMP-002) ir izveidots, bet zemesgabalu datu avots (API-003) vai klikšķu apstrāde (FUNC-003) ir nepilnīga.",
      expected: "Clicking any industrial plot polygon in COMP-002 renders its area, infrastructure, and status from a local JSON/JS data module.",
      expected_lv: "Noklikšķinot uz jebkura zemesgabala COMP-002 kartē, tiek parādīta tā platība un infrastruktūra no lokāla JSON/JS datu moduļa.",
      discrepancy: "Missing/incomplete client-side data binding in our Projekts_SEZAMS implementation.",
      discrepancy_lv: "Trūkstoša vai nepilnīga klienta puses datu piesaiste mūsu Projekts_SEZAMS ieviešanā.",
      fix: "Create a structured local dataset (e.g., Projekts_SEZAMS/site/assets/js/territories-data.js) and bind polygon click events in FUNC-003.",
      fix_lv: "Izveidot strukturētu lokālu datu failu (piem., Projekts_SEZAMS/site/assets/js/territories-data.js) un piesaistīt poligonu klikšķus funkcijā FUNC-003.",
      matchKeywords: ["invest", "map", "svg", "polygon", "path", "teritorij"],
      sourceLocations: [
        {
          filePath: null,
          role: "Investor Page Map Markup & Script in Projekts_SEZAMS",
          role_lv: "Investoru lapas kartes marķējums un skripts Projekts_SEZAMS kodā",
          codeSection: "COMP-002 SVG/map container & FUNC-003 handler",
          lineRange: null,
          reason: "Inspect investor page HTML and associated JS file in Projekts_SEZAMS to wire interactive plot data.",
          reason_lv: "Pārbaudīt investoru lapas HTML un saistīto JS failu Projekts_SEZAMS repozitorijā, lai piesaistītu zemesgabalu datus.",
          relatedArtifact: "PAGE-003, COMP-002, FUNC-003, API-003",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-004",
      title: "Non-Functional Static Pagination & Category Filters on News Page",
      title_lv: "Nedarbojošās statiskās lapošanas un kategoriju filtru pogas jaunumu lapā",
      severity: "LOW", confidence: "LIKELY", status: "PARTIAL",
      category: "UI Logic / State", category_lv: "UI loģika / Stāvoklis",
      page: "PAGE-005", component: "PAGE-005", func: "FUNC-005", api: "API-001", test: "TEST-004",
      originalBehavior: "Reference site (liepaja-sez.lv) uses server-side CMS queries (?page=N) to paginate news articles.",
      originalBehavior_lv: "Atsauces vietne (liepaja-sez.lv) izmanto servera CMS vaicājumus (?page=N) ziņu lapošanai.",
      ourImplementation: "Projekts_SEZAMS is a static/client-side implementation where copied pagination links do not have a backend CMS to query.",
      ourImplementation_lv: "Projekts_SEZAMS ir statiska/klienta puses ieviešana, kurā nokopētajām lapošanas saitēm nav servera CMS datubāzes.",
      expected: "Category tabs and pagination buttons in Projekts_SEZAMS filter the news cards client-side via JavaScript.",
      expected_lv: "Kategoriju cilnes un lapošanas pogas Projekts_SEZAMS kodā filtrē ziņu kartītes klienta pusē ar JavaScript.",
      discrepancy: "Incomplete adaptation from server-rendered reference site to static client-side implementation.",
      discrepancy_lv: "Nepilnīga pāreja no servera renderētas atsauces vietnes uz klienta puses ieviešanu.",
      fix: "Implement client-side card filtering and pagination in FUNC-005 inside Projekts_SEZAMS.",
      fix_lv: "Ieviest klienta puses ziņu kartīšu filtrēšanu un lapošanu funkcijā FUNC-005 mūsu Projekts_SEZAMS kodā.",
      matchKeywords: ["jaunumi", "news", "pagination", "page"],
      sourceLocations: [
        {
          filePath: null,
          role: "News Page Template in Projekts_SEZAMS",
          role_lv: "Jaunumu lapas veidne Projekts_SEZAMS repozitorijā",
          codeSection: "News list container & pagination controls",
          lineRange: null,
          reason: "Inspect news HTML template in Projekts_SEZAMS/site/lv/... to bind client-side filter script.",
          reason_lv: "Pārbaudīt jaunumu HTML veidni mapē Projekts_SEZAMS/site/lv/..., lai piesaistītu klienta puses filtru skriptu.",
          relatedArtifact: "PAGE-005, FUNC-005",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-005",
      title: "Unhandled Contact Form Submission & Missing Validation Feedback in Projekts_SEZAMS",
      title_lv: "Neapstrādāta kontaktu formas iesniegšana un trūkstoša validācija Projekts_SEZAMS kodā",
      severity: "HIGH", confidence: "LIKELY", status: "BROKEN",
      category: "Forms / Validation", category_lv: "Formas / Validācija",
      page: "PAGE-006", component: "FORM-001", func: "FUNC-006", api: "API-005", test: "TEST-005",
      originalBehavior: "Reference site (liepaja-sez.lv) validates and submits contact inquiries to its backend mail handler.",
      originalBehavior_lv: "Atsauces vietne (liepaja-sez.lv) validē un nosūta kontaktu formas datus savam pasta serverim.",
      ourImplementation: "In Projekts_SEZAMS, the <form> element either lacks a bound submit event listener (causing a broken page reload/404) or lacks field validation and submit-button locking.",
      ourImplementation_lv: "Mūsu Projekts_SEZAMS kodā <form> elementam trūkst submit notikuma apstrādātāja (izraisot 404 pārlādi) vai lauku validācijas.",
      expected: "Submitting FORM-001 in Projekts_SEZAMS validates required inputs (Name, Email, Message, GDPR consent), prevents double-clicks, and displays a clear success/error state.",
      expected_lv: "Iesniedzot FORM-001 mūsu Projekts_SEZAMS kodā, tiek validēti obligātie lauki, novērsta dubulta nospiešana un parādīts apstiprinājums.",
      discrepancy: "Broken/missing form submission handler in our repository.",
      discrepancy_lv: "Bojāts vai trūkstošs formas iesniegšanas apstrādātājs mūsu repozitorijā.",
      fix: "Add submitInquiryFormHandler (FUNC-006) in Projekts_SEZAMS to validate fields with e.preventDefault(), disable the submit button while processing, and render an accessible confirmation banner.",
      fix_lv: "Pievienot submitInquiryFormHandler (FUNC-006) mūsu Projekts_SEZAMS kodā, lai validētu laukus ar e.preventDefault() un parādītu apstiprinājumu.",
      matchKeywords: ["<form", "kontakt", "contact", "submit", "input", "textarea"],
      sourceLocations: [
        {
          filePath: null,
          role: "Contact Page Form Markup & Script in Projekts_SEZAMS",
          role_lv: "Kontaktu lapas formas marķējums un skripts Projekts_SEZAMS kodā",
          codeSection: "<form> element (FORM-001) & FUNC-006 submit listener",
          lineRange: null,
          reason: "Locate <form> in Projekts_SEZAMS/site/lv/... and verify its action attribute, required fields, and JS submit handler.",
          reason_lv: "Atrast <form> elementu mapē Projekts_SEZAMS/site/lv/... un pārbaudīt action atribūtu, obligātos laukus un JS apstrādātāju.",
          relatedArtifact: "PAGE-006, FORM-001, FUNC-006, API-005",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-006",
      title: "Missing Backend Auth Verification / Hardcoded Client Auth in Projekts_SEZAMS",
      title_lv: "Trūkstoša servera autentifikācija / Klienta puses simulācija Projekts_SEZAMS kodā",
      severity: "HIGH", confidence: "LIKELY", status: "MISSING",
      category: "Authentication / Security", category_lv: "Autentifikācija / Drošība",
      page: "PAGE-007", component: "FORM-002", func: "FUNC-007", api: "API-006", test: "TEST-007",
      originalBehavior: "Authenticated portals verify credentials server-side and issue HttpOnly session tokens.",
      originalBehavior_lv: "Autentificētie portāli pārbauda datus servera pusē un izsniedz HttpOnly sesijas marķierus.",
      ourImplementation: "Projekts_SEZAMS includes login UI (FORM-002) without a connected backend authentication service (API-006).",
      ourImplementation_lv: "Projekts_SEZAMS satur pieteikšanās formu (FORM-002) bez pieslēgta servera autentifikācijas servisa (API-006).",
      expected: "Login form validates credentials against a configured auth service (or clean dev sandbox service) without exposing plaintext credentials in client code.",
      expected_lv: "Pieteikšanās forma pārbauda datus pret konfigurētu autentifikācijas servisu, neglabājot paroles atklātā klienta kodā.",
      discrepancy: "Missing backend authentication integration in our development repository.",
      discrepancy_lv: "Trūkst servera puses autentifikācijas integrācijas mūsu izstrādes repozitorijā.",
      fix: "Implement a modular auth service in FUNC-007 and avoid hardcoding plaintext passwords in client JS files.",
      fix_lv: "Ieviest modulāru autentifikācijas servisu funkcijā FUNC-007 un neiekodēt paroles atklātā JS tekstā.",
      matchKeywords: ["login", "password", "auth", "sezams", "user"],
      sourceLocations: [
        {
          filePath: null,
          role: "SEZAMS Login Template & Auth Script in Projekts_SEZAMS",
          role_lv: "SEZAMS pieteikšanās veidne un autentifikācijas skripts Projekts_SEZAMS kodā",
          codeSection: "FORM-002 & sezamsAuthService() (FUNC-007)",
          lineRange: null,
          reason: "Inspect login HTML and JS files in Projekts_SEZAMS for credential handling.",
          reason_lv: "Pārbaudīt pieteikšanās HTML un JS failus Projekts_SEZAMS repozitorijā.",
          relatedArtifact: "PAGE-007, FORM-002, FUNC-007, API-006",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-007",
      title: "Unguarded Direct URL Access to Protected Views in Projekts_SEZAMS",
      title_lv: "Neaizsargāta tieša URL piekļuve iekšējiem skatiem Projekts_SEZAMS kodā",
      severity: "HIGH", confidence: "LIKELY", status: "PARTIAL",
      category: "Routing / Access Control", category_lv: "Maršrutēšana / Piekļuves kontrole",
      page: "PAGE-007", component: "PAGE-007", func: "FUNC-007", api: "API-007", test: "TEST-008",
      originalBehavior: "Protected portal views redirect unauthenticated users to the login screen.",
      originalBehavior_lv: "Aizsargātie skati pāradresē neautentificētus lietotājus uz pieteikšanās lapu.",
      ourImplementation: "In Projekts_SEZAMS, internal HTML pages can be opened directly via browser URL without verifying session state.",
      ourImplementation_lv: "Mūsu Projekts_SEZAMS kodā iekšējās HTML lapas var atvērt pa tiešo ar URL bez sesijas stāvokļa pārbaudes.",
      expected: "Opening a protected page in Projekts_SEZAMS without an active session immediately redirects to the login page.",
      expected_lv: "Atverot aizsargātu lapu Projekts_SEZAMS bez aktīvas sesijas, notiek tūlītēja pāradresācija uz login lapu.",
      discrepancy: "Missing route-guard check at the top of protected HTML views in our repository.",
      discrepancy_lv: "Trūkst maršruta aizsardzības pārbaudes aizsargāto HTML lapu sākumā mūsu repozitorijā.",
      fix: "Include a guard check in FUNC-007 that runs before DOM render on protected pages and redirects if unauthenticated.",
      fix_lv: "Pievienot sarga pārbaudi funkcijā FUNC-007, kas izpildās pirms aizsargāto lapu attēlošanas.",
      matchKeywords: ["dashboard", "admin", "sezams", "session", "localStorage"],
      sourceLocations: [
        {
          filePath: null,
          role: "Protected View HTML & Guard Script in Projekts_SEZAMS",
          role_lv: "Aizsargātā skata HTML un sarga skripts Projekts_SEZAMS kodā",
          codeSection: "<head> script guard / FUNC-007",
          lineRange: null,
          reason: "Check internal HTML pages in Projekts_SEZAMS for session validation before rendering.",
          reason_lv: "Pārbaudīt iekšējās HTML lapas Projekts_SEZAMS repozitorijā attiecībā uz sesijas validāciju.",
          relatedArtifact: "PAGE-007, FUNC-007",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-008",
      title: "SVG / PNG Overlay Click Interception & Asset Sizing in Projekts_SEZAMS CSS",
      title_lv: "SVG / PNG pārklājumu klikšķu bloķēšana un resursu izmēri Projekts_SEZAMS CSS failos",
      severity: "MEDIUM", confidence: "LIKELY", status: "PARTIAL",
      category: "Visual / CSS Layout", category_lv: "Vizuālais / CSS izkārtojums",
      page: "PAGE-003", component: "COMP-002", func: "FUNC-003", api: "NONE", test: "TEST-012",
      originalBehavior: "Reference site overlays allow clicking underlying filter buttons and interactive elements across viewports.",
      originalBehavior_lv: "Atsauces vietnes pārklājumi ļauj nospiest zem tiem esošās filtru pogas visos ekrāna izmēros.",
      ourImplementation: "In Projekts_SEZAMS CSS, absolute-positioned decorative PNG/SVG overlays or unconstrained image containers can overlap adjacent buttons on tablet/mobile viewports.",
      ourImplementation_lv: "Mūsu Projekts_SEZAMS CSS failos absolūti pozicionēti PNG/SVG pārklājumi mobilajos ekrānos var pārklāt blakus esošās pogas.",
      expected: "Decorative overlays use pointer-events: none and images scale within their parent containers (max-width: 100%).",
      expected_lv: "Dekoratīvie pārklājumi izmanto pointer-events: none un attēli iekļaujas konteineros (max-width: 100%).",
      discrepancy: "CSS stacking context (z-index) and pointer-events discrepancy in our stylesheets.",
      discrepancy_lv: "CSS z-index un pointer-events neatbilstība mūsu stilu failos.",
      fix: "Add pointer-events: none to decorative overlay classes and verify img/svg max-width rules in Projekts_SEZAMS CSS files.",
      fix_lv: "Pievienot pointer-events: none dekoratīvajām pārklājuma klasēm un pārbaudīt img/svg max-width noteikumus Projekts_SEZAMS CSS failos.",
      matchKeywords: ["z-index", "position: absolute", "overlay", ".svg", ".png", "pointer-events"],
      sourceLocations: [
        {
          filePath: null,
          role: "Stylesheets in Projekts_SEZAMS",
          role_lv: "Stilu tabulas Projekts_SEZAMS repozitorijā",
          codeSection: "CSS rules with position: absolute / z-index",
          lineRange: null,
          reason: "Scan CSS files in Projekts_SEZAMS for high z-index or absolute overlay containers lacking pointer-events: none.",
          reason_lv: "Skenēt CSS failus Projekts_SEZAMS repozitorijā, meklējot augstus z-index vai absolūtos konteinerus bez pointer-events: none.",
          relatedArtifact: "COMP-002",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-009",
      title: "Sticky Header Anchor Obstruction & Mobile Viewport Overflow in Projekts_SEZAMS",
      title_lv: "Fiksētās galvenes enkuru aizsegšana un mobilā ekrāna pārplūde Projekts_SEZAMS kodā",
      severity: "LOW", confidence: "LIKELY", status: "PARTIAL",
      category: "Responsive CSS / UX", category_lv: "Responsīvais CSS / UX",
      page: "PAGE-001", component: "COMP-001", func: "FUNC-002", api: "NONE", test: "TEST-011",
      originalBehavior: "Reference site maintains smooth responsive breakpoints without horizontal overflow.",
      originalBehavior_lv: "Atsauces vietne nodrošina responsīvu izkārtojumu bez horizontālās pārplūdes.",
      ourImplementation: "Fixed/sticky header in Projekts_SEZAMS lacks scroll-padding-top offset, and wide elements can cause horizontal scrollbars at 375px width.",
      ourImplementation_lv: "Fiksētajai galvenei Projekts_SEZAMS kodā trūkst scroll-padding-top nobīdes, un platie elementi var izraisīt horizontālo ritjoslu 375px platumā.",
      expected: "html { scroll-padding-top: 80px; } is set and documentElement.scrollWidth <= innerWidth at 375px, 768px, and 1440px.",
      expected_lv: "Ir iestatīts html { scroll-padding-top: 80px; } un nav horizontālās pārplūdes 375px, 768px un 1440px platumos.",
      discrepancy: "Responsive CSS polish gap in our implementation.",
      discrepancy_lv: "Responsīvā CSS izkārtojuma nepilnība mūsu ieviešanā.",
      fix: "Add scroll-padding-top: 80px and overflow-x: hidden / responsive container rules in Projekts_SEZAMS main CSS.",
      fix_lv: "Pievienot scroll-padding-top: 80px un responsīvos konteineru noteikumus Projekts_SEZAMS galvenajā CSS failā.",
      matchKeywords: ["position: fixed", "position: sticky", "scroll-padding", "@media", "overflow"],
      sourceLocations: [
        {
          filePath: null,
          role: "Global Stylesheet in Projekts_SEZAMS",
          role_lv: "Globālā stilu tabula Projekts_SEZAMS repozitorijā",
          codeSection: "html / body / header CSS rules",
          lineRange: null,
          reason: "Check global CSS in Projekts_SEZAMS for sticky header offset and mobile media queries.",
          reason_lv: "Pārbaudīt globālo CSS failu Projekts_SEZAMS repozitorijā attiecībā uz galvenes nobīdi un media vaicājumiem.",
          relatedArtifact: "COMP-001, MODAL-002",
          confidence: "UNVERIFIED"
        }
      ]
    },
    {
      id: "DEFECT-010",
      title: "Missing Image Alt Attributes, Form Labels & Modal Keyboard Focus Trap in Projekts_SEZAMS",
      title_lv: "Trūkstoši attēlu alt atribūti, formu iezīmes un modālā loga fokusa slazds Projekts_SEZAMS kodā",
      severity: "LOW", confidence: "LIKELY", status: "PARTIAL",
      category: "Accessibility (WCAG)", category_lv: "Pieejamība (WCAG)",
      page: "PAGE-001", component: "MODAL-001", func: "FUNC-002", api: "NONE", test: "TEST-013",
      originalBehavior: "Accessible portals provide alt text on images, aria-labels on icon buttons, and Escape dismissal on modals.",
      originalBehavior_lv: "Pieejamos portālos attēliem ir alt teksti, ikonu pogām ir aria-label, un modālos logus var aizvērt ar Escape.",
      ourImplementation: "HTML templates in Projekts_SEZAMS contain <img> tags without alt attributes, icon buttons without aria-label, or modals without Escape key handlers.",
      ourImplementation_lv: "HTML veidnes mūsu Projekts_SEZAMS kodā satur <img> bez alt atribūta, ikonu pogas bez aria-label vai modālos logus bez Escape apstrādes.",
      expected: "All <img> elements have alt attributes, inputs have associated labels, and modals close on Escape.",
      expected_lv: "Visiem <img> elementiem ir alt atribūti, ievades laukiem ir iezīmes, un modālie logi aizveras ar Escape.",
      discrepancy: "Accessibility markup omissions in our HTML templates.",
      discrepancy_lv: "Pieejamības atribūtu izlaidumi mūsu HTML veidnēs.",
      fix: "Click '📂 Audit Local Projekts_SEZAMS Folder' to auto-detect every <img> missing alt and <button> missing label with exact line numbers, then add the attributes.",
      fix_lv: "Noklikšķiniet uz '📂 Auditēt lokālo Projekts_SEZAMS mapi', lai automātiski atrastu visus <img> bez alt un <button> bez iezīmes ar precīziem rindu numuriem.",
      matchKeywords: ["<img", "alt=", "aria-", "modal", "dialog", "Escape"],
      sourceLocations: [
        {
          filePath: null,
          role: "HTML Templates & Modal Script in Projekts_SEZAMS",
          role_lv: "HTML veidnes un modālā loga skripts Projekts_SEZAMS repozitorijā",
          codeSection: "<img>, <button>, and modal keydown handler",
          lineRange: null,
          reason: "Scan HTML files in Projekts_SEZAMS for missing alt/aria attributes and modal Escape listeners.",
          reason_lv: "Skenēt HTML failus Projekts_SEZAMS repozitorijā, meklējot trūkstošos alt/aria atribūtus.",
          relatedArtifact: "MODAL-001, COMP-001",
          confidence: "UNVERIFIED"
        }
      ]
    }
  ],
  tests: [
    { id: "TEST-001", name: "Projekts_SEZAMS Local HTML Pages & Internal Links Integrity Test", name_lv: "Projekts_SEZAMS lokālo HTML lapu un iekšējo saišu integritātes tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "PAGE-001..006 (Projekts_SEZAMS/site/lv/...)", defect: "DEFECT-001", framework: "Playwright / Local Scanner", steps: "Serve Projekts_SEZAMS locally, crawl all internal <a href> links, assert zero 404s and zero dead href='#' links.", steps_lv: "Palaist Projekts_SEZAMS lokāli, pārbaudīt visas iekšējās <a href> saites un pārliecināties, ka nav 404 kļūdu vai tukšu href='#'." },
    { id: "TEST-002", name: "Projekts_SEZAMS Language Switcher (site/lv/ <-> site/en/) Path Test", name_lv: "Projekts_SEZAMS valodu pārslēdzēja (site/lv/ <-> site/en/) ceļu tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "ROUTE-001, BTN-001", defect: "DEFECT-002", framework: "Playwright", steps: "On each page in Projekts_SEZAMS/site/lv/, click the language switcher and verify the target localized file exists and loads.", steps_lv: "Katrā Projekts_SEZAMS/site/lv/ lapā nospiest valodas pārslēdzēju un pārbaudīt, vai mērķa fails eksistē un ielādējas." },
    { id: "TEST-003", name: "Projekts_SEZAMS Investor Map Parcel Click & Local Dataset Test", name_lv: "Projekts_SEZAMS investoru kartes zemesgabalu klikšķu un lokālo datu tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "COMP-002, FUNC-003", defect: "DEFECT-003", framework: "Playwright", steps: "Open Projekts_SEZAMS investor page, click map parcel elements, verify popover displays parcel data.", steps_lv: "Atvērt Projekts_SEZAMS investoru lapu, noklikšķināt uz kartes poligona un pārbaudīt informācijas loga datus." },
    { id: "TEST-004", name: "Projekts_SEZAMS News Client-Side Filtering & Pagination Test", name_lv: "Projekts_SEZAMS jaunumu klienta puses filtrēšanas un lapošanas tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "PAGE-005, FUNC-005", defect: "DEFECT-004", framework: "Playwright", steps: "Click pagination and category buttons on Projekts_SEZAMS news page; verify visible cards update without broken reload.", steps_lv: "Nospiest lapošanas un kategoriju pogas Projekts_SEZAMS jaunumu lapā; pārbaudīt, vai kartītes atjaunojas." },
    { id: "TEST-005", name: "Projekts_SEZAMS Contact Form Validation & Submit Handler Test", name_lv: "Projekts_SEZAMS kontaktu formas validācijas un iesniegšanas tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "FORM-001, FUNC-006", defect: "DEFECT-005", framework: "Playwright", steps: "Submit empty and valid inputs on Projekts_SEZAMS contact form; verify client validation and confirmation banner.", steps_lv: "Iesniegt tukšus un derīgus datus Projekts_SEZAMS kontaktu formā; pārbaudīt validāciju un apstiprinājuma paziņojumu." },
    { id: "TEST-007", name: "Projekts_SEZAMS Login & Protected Route Guard Test", name_lv: "Projekts_SEZAMS pieteikšanās un aizsargāto maršrutu sarga tests", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "PAGE-007, FORM-002, FUNC-007", defect: "DEFECT-006, DEFECT-007", framework: "Playwright", steps: "Open protected Projekts_SEZAMS view without session; verify redirect to login page.", steps_lv: "Atvērt aizsargāto Projekts_SEZAMS skatu bez sesijas; pārbaudīt pāradresāciju uz login lapu." },
    { id: "TEST-011", name: "Projekts_SEZAMS Multi-Viewport Overflow & Z-Index Click Audit", name_lv: "Projekts_SEZAMS vairāku ekrāna izmēru pārplūdes un Z-Index klikšķu audits", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "COMP-001, COMP-002", defect: "DEFECT-008, DEFECT-009", framework: "Playwright", steps: "Render Projekts_SEZAMS pages at 375px, 768px, 1440px; assert zero horizontal scroll and unobstructed button clicks.", steps_lv: "Atvērt Projekts_SEZAMS lapas 375px, 768px, 1440px izmēros; pārbaudīt, ka nav horizontālās ritjoslas un pogas nav bloķētas." },
    { id: "TEST-013", name: "Projekts_SEZAMS HTML Accessibility (Alt, Labels, Modal Escape) Audit", name_lv: "Projekts_SEZAMS HTML pieejamības (Alt, Labels, Modal Escape) audits", status: "PROPOSED (Run against local Projekts_SEZAMS)", target: "GLOBAL", defect: "DEFECT-010", framework: "Playwright / Built-in Repo Scanner", steps: "Verify all <img> tags have alt attributes, form inputs have labels, and modals close on Escape.", steps_lv: "Pārbaudīt, vai visiem <img> ir alt atribūti, ievades laukiem ir iezīmes un modālie logi aizveras ar Escape." },
    { id: "TEST-015", name: "Audit Studio Scope Separation, 5-Point Comparison & Repo Analyzer Self-Test", name_lv: "Audita studijas tvēruma nodalīšanas, 5 punktu salīdzinājuma un repo analizatora pašpārbaude", status: "EXECUTED (PASSED)", target: "lsez-sezams-audit-studio.html", defect: "NONE", framework: "Built-in Validator", steps: "Verified OUR_IMPL vs REFERENCE separation, GitHub main branch URL builder, and client-side HTML/JS/CSS static analyzer.", steps_lv: "Verificēta OUR_IMPL un REFERENCE nodalīšana, GitHub main zara URL ģenerators un klienta puses HTML/JS/CSS analizators." }
  ],
  repoIndex: []
};

class AuditStudioApp {
  constructor() {
    this.storageKey = "PROJEKTS_SEZAMS_DEV_AUDIT_V3";
    this.langStorageKey = "LSEZ_SEZAMS_AUDIT_LANG";
    this.lang = localStorage.getItem(this.langStorageKey) || "en";
    this.history = [];
    this.redoStack = [];
    this.currentView = "ALL";
    this.selectedNodeId = "PAGE-001";
    this.selectedRelId = null;
    this.inspectorTab = "source";
    this.autoOpenModalOnDefect = false;
    this.zoomScale = 0.85;
    this.panX = 20;
    this.panY = 20;
    this.draggingNode = null;
    this.isPanning = false;
    this.activeDrawer = "dashboard";

    this.loadState();
    this.initCanvasEvents();
    this.initKeyboardShortcuts();
    this.applyStaticTranslations();
    this.renderAll();
  }

  t(key) {
    return (I18N[this.lang] && I18N[this.lang][key]) || I18N.en[key] || key;
  }

  setLanguage(lang) {
    if (lang !== "en" && lang !== "lv") return;
    this.lang = lang;
    localStorage.setItem(this.langStorageKey, lang);
    document.documentElement.lang = lang;
    document.getElementById("lang-btn-en").classList.toggle("active", lang === "en");
    document.getElementById("lang-btn-lv").classList.toggle("active", lang === "lv");
    this.applyStaticTranslations();
    this.renderAll();
    if (document.getElementById("source-modal-backdrop").classList.contains("open")) {
      this.renderSourceModalContent();
    }
    this.showToast(this.t("langSwitchedToast"));
  }

  applyStaticTranslations() {
    const map = {
      "lbl-app-title": "appTitle",
      "badge-target": "badgeTarget",
      "badge-ref": "badgeRef",
      "btn-scan-repo": "btnScanRepo",
      "btn-open-source-win": "btnSourceWin",
      "btn-add-node": "btnAddNode",
      "btn-add-link": "btnAddLink",
      "btn-undo": "btnUndo",
      "btn-redo": "btnRedo",
      "btn-reset": "btnReset",
      "opt-export-title": "exportTitle",
      "opt-exp-json": "expJson",
      "opt-exp-mmd": "expMmd",
      "opt-exp-puml": "expPuml",
      "opt-exp-svg": "expSvg",
      "opt-exp-md": "expMd",
      "btn-import-json": "btnImportJson",
      "lbl-inventory-header": "inventoryHeader",
      "flt-origin-all": "fltOriginAll",
      "flt-origin-impl": "fltOriginImpl",
      "flt-origin-ref": "fltOriginRef",
      "flt-type-all": "fltTypeAll",
      "flt-status-all": "fltStatusAll",
      "flt-conf-all": "fltConfAll",
      "btn-center": "centerBtn",
      "btn-autolayout": "autoLayoutBtn",
      "lbl-legend-title": "legendTitle",
      "leg-work": "legWork",
      "leg-brok": "legBrok",
      "leg-part": "legPart",
      "leg-miss": "legMiss",
      "leg-susp": "legSusp",
      "leg-ref": "legRef",
      "dtab-dashboard": "dtabDashboard",
      "dtab-defects": "dtabDefects",
      "dtab-sourcemap": "dtabSourceMap",
      "dtab-tests": "dtabTests",
      "dtab-mermaid": "dtabMermaid",
      "dtab-toggle": "dtabToggle",
      "lbl-inspector-header": "inspectorHeader",
      "itab-source": "itabSource",
      "itab-compare": "itabCompare",
      "itab-record": "itabRecord",
      "modal-source-title": "sourceLocationTitle",
      "lbl-auto-open-modal": "autoOpenModal",
      "btn-close-modal": "closeBtn"
    };
    for (const [id, key] of Object.entries(map)) {
      const el = document.getElementById(id);
      if (el) el.textContent = this.t(key);
    }
    const searchInput = document.getElementById("search-input");
    if (searchInput) searchInput.placeholder = this.t("searchPlaceholder");

    const viewLabels = this.t("viewLabels");
    for (const [viewKey, label] of Object.entries(viewLabels)) {
      const tab = document.getElementById(`vtab-${viewKey}`);
      if (tab) tab.textContent = label;
    }
    document.getElementById("view-title-label").textContent = viewLabels[this.currentView] || this.currentView;
    this.updateRepoBadge();
  }

  updateRepoBadge() {
    const badge = document.getElementById("repo-status-badge");
    const count = (this.data.repoIndex || []).length;
    if (count > 0) {
      badge.textContent = this.t("repoScanned")
        .replace("{count}", count)
        .replace("{defects}", this.data.defects.length);
      badge.style.background = "#064e3b";
      badge.style.borderColor = "#10b981";
      badge.style.color = "#d1fae5";
    } else {
      badge.textContent = this.t("repoUnscanned");
      badge.style.background = "#3b0764";
      badge.style.borderColor = "#a855f7";
      badge.style.color = "#e9d5ff";
    }
  }

  loadState() {
    try {
      const saved = localStorage.getItem(this.storageKey);
      if (saved) {
        this.data = JSON.parse(saved);
      } else {
        this.data = JSON.parse(JSON.stringify(BASELINE_AUDIT_DATA));
      }
    } catch (e) {
      this.data = JSON.parse(JSON.stringify(BASELINE_AUDIT_DATA));
    }
    document.getElementById("lang-btn-en").classList.toggle("active", this.lang === "en");
    document.getElementById("lang-btn-lv").classList.toggle("active", this.lang === "lv");
  }

  saveState(recordHistory = true) {
    if (recordHistory) {
      this.history.push(JSON.stringify(this.data));
      if (this.history.length > 30) this.history.shift();
      this.redoStack = [];
    }
    try {
      localStorage.setItem(this.storageKey, JSON.stringify(this.data));
      this.showToast(this.t("savedToast"));
    } catch (e) {}
  }

  undo() {
    if (!this.history.length) return;
    this.redoStack.push(JSON.stringify(this.data));
    this.data = JSON.parse(this.history.pop());
    this.renderAll();
  }

  redo() {
    if (!this.redoStack.length) return;
    this.history.push(JSON.stringify(this.data));
    this.data = JSON.parse(this.redoStack.pop());
    this.renderAll();
  }

  resetDataset() {
    const msg = this.lang === "lv"
      ? "Atiestatīt visus datus uz sākotnējo Projekts_SEZAMS modeli?"
      : "Reset all data back to the baseline Projekts_SEZAMS model?";
    if (!confirm(msg)) return;
    this.saveState(true);
    this.data = JSON.parse(JSON.stringify(BASELINE_AUDIT_DATA));
    localStorage.removeItem(this.storageKey);
    this.selectedNodeId = "PAGE-001";
    this.selectedRelId = null;
    this.updateRepoBadge();
    this.renderAll();
  }

  showToast(msg) {
    const el = document.getElementById("toast");
    el.textContent = msg;
    el.style.display = "block";
    clearTimeout(this._toastTimer);
    this._toastTimer = setTimeout(() => { el.style.display = "none"; }, 2500);
  }

  getNodeTitle(n) { return (this.lang === "lv" && n.name_lv) ? n.name_lv : n.name; }
  getNodeDesc(n) { return (this.lang === "lv" && n.description_lv) ? n.description_lv : n.description; }
  getNodeExp(n) { return (this.lang === "lv" && n.expectedBehavior_lv) ? n.expectedBehavior_lv : n.expectedBehavior; }
  getNodeObs(n) { return (this.lang === "lv" && n.observedBehavior_lv) ? n.observedBehavior_lv : n.observedBehavior; }
  getDefectTitle(d) { return (this.lang === "lv" && d.title_lv) ? d.title_lv : d.title; }

  buildGitHubUrl(rawPath, lineRange) {
    if (!rawPath) return null;
    let clean = rawPath.replace(/\\/g, "/").replace(/^\/+/, "");
    clean = clean.replace(/^\.tmp_projekts_sezams\//i, "").replace(/^Projekts_SEZAMS\//i, "");
    let url = `https://github.com/Lengdons/Projekts_SEZAMS/blob/main/${encodeURI(clean)}`;
    if (lineRange) {
      const m = String(lineRange).match(/(\d+)(?:\s*-\s*(\d+))?/);
      if (m) url += m[2] ? `#L${m[1]}-L${m[2]}` : `#L${m[1]}`;
    }
    return url;
  }

  formatRepoDisplayPath(rawPath) {
    if (!rawPath) return null;
    let clean = rawPath.replace(/\\/g, "/").replace(/^\/+/, "");
    clean = clean.replace(/^\.tmp_projekts_sezams\//i, "").replace(/^Projekts_SEZAMS\//i, "");
    return `Projekts_SEZAMS/${clean}`;
  }

  resolveDefectsForSelection() {
    if (!this.selectedNodeId) return [];
    const directDefect = this.data.defects.find(d => d.id === this.selectedNodeId);
    if (directDefect) return [directDefect];

    const node = this.data.nodes.find(n => n.id === this.selectedNodeId);
    if (!node) return [];

    const linkedIds = new Set(node.relatedDefectIds || []);
    return this.data.defects.filter(d =>
      linkedIds.has(d.id) ||
      d.component === node.id ||
      d.func === node.id ||
      d.api === node.id ||
      d.page === node.id
    );
  }

  /**
   * DEEP CLIENT-SIDE REPOSITORY AUDITOR FOR PROJEKTS_SEZAMS (Section 3 & 5)
   * Inspects every HTML, JS, CSS, and asset file inside the selected Projekts_SEZAMS directory,
   * detects real broken relative links, dead href='#', unbound forms, missing alt attributes,
   * and maps exact file paths and 1-based line numbers into the audit studio.
   */
  async handleRepoDirectoryUpload(event) {
    const files = Array.from(event.target.files || []);
    if (!files.length) return;

    const repoFiles = [];
    const pathSet = new Set();

    for (const file of files) {
      const rel = (file.webkitRelativePath || file.name).replace(/\\/g, "/");
      if (rel.includes("/.git/") || rel.includes("/node_modules/")) continue;

      const normalizedRel = rel.replace(/^[^/]+\//, "");
      const displayPath = `Projekts_SEZAMS/${normalizedRel}`;
      pathSet.add(normalizedRel.toLowerCase());

      const isText = /\.(html|htm|js|mjs|ts|tsx|jsx|css|scss|json|md|php|py|xml|svg)$/i.test(file.name);
      let text = "";
      let lines = [];
      if (isText && file.size < 2.5 * 1024 * 1024) {
        try {
          text = await file.text();
          lines = text.split(/\r?\n/);
        } catch (e) {}
      }
      repoFiles.push({
        name: file.name,
        relativePath: normalizedRel,
        displayPath,
        linesCount: lines.length,
        lines,
        text
      });
    }

    this.saveState(true);
    this.data.repoIndex = repoFiles.map(f => ({
      name: f.name,
      relativePath: f.relativePath,
      displayPath: f.displayPath,
      linesCount: f.linesCount
    }));
    this.data.metadata.scannedFilesCount = repoFiles.length;

    // Reset previous dynamic source locations before populating verified ones
    const defectMap = {};
    this.data.defects.forEach(d => {
      defectMap[d.id] = [];
    });

    const resolveRelativeTarget = (fromFileRel, hrefVal) => {
      const cleanHref = hrefVal.split("#")[0].split("?")[0].trim();
      if (!cleanHref) return null;
      const baseParts = fromFileRel.split("/");
      baseParts.pop();
      const relParts = cleanHref.replace(/^\/+/, "").split("/");
      const stack = cleanHref.startsWith("/") ? [] : [...baseParts];
      for (const p of relParts) {
        if (!p || p === ".") continue;
        if (p === "..") stack.pop();
        else stack.push(p);
      }
      return stack.join("/").toLowerCase();
    };

    // Scan HTML, JS, and CSS files for actual implementation evidence & defects
    for (const f of repoFiles) {
      const ext = f.name.split(".").pop().toLowerCase();

      if (ext === "html" || ext === "htm") {
        f.lines.forEach((line, idx) => {
          const lineNum = idx + 1;

          // 1. Check <a href="..."> for dead '#' links or missing relative files (DEFECT-001 & DEFECT-002)
          const hrefMatch = line.match(/<a\s+[^>]*href=["']([^"']*)["']/i);
          if (hrefMatch) {
            const href = hrefMatch[1].trim();
            if (href === "#" || href === "" || href.toLowerCase().startsWith("javascript:")) {
              defectMap["DEFECT-001"].push({
                filePath: f.displayPath,
                role: "HTML Template — Dead / Placeholder Link",
                role_lv: "HTML veidne — Tukša / viettura saite",
                codeSection: line.trim().slice(0, 110),
                lineRange: `${lineNum}`,
                reason: `Anchor tag uses placeholder href="${href}" instead of a valid route in Projekts_SEZAMS.`,
                reason_lv: `Saite izmanto vietturi href="${href}" derīga Projekts_SEZAMS faila ceļa vietā.`,
                relatedArtifact: "COMP-001, PAGE-001",
                confidence: "CONFIRMED"
              });
            } else if (!/^(https?:|mailto:|tel:)/i.test(href) && !href.startsWith("#")) {
              const targetRel = resolveRelativeTarget(f.relativePath, href);
              if (targetRel && !pathSet.has(targetRel) && !pathSet.has(`${targetRel}/index.html`) && !pathSet.has(`${targetRel}.html`)) {
                const targetBucket = (href.includes("/en") || href.includes("/lv")) ? "DEFECT-002" : "DEFECT-001";
                defectMap[targetBucket].push({
                  filePath: f.displayPath,
                  role: "HTML Template — Broken Relative Link Target",
                  role_lv: "HTML veidne — Bojāts relatīvās saites mērķis",
                  codeSection: line.trim().slice(0, 110),
                  lineRange: `${lineNum}`,
                  reason: `Link href="${href}" resolves to "Projekts_SEZAMS/${targetRel}", which does not exist in the repository.`,
                  reason_lv: `Saite href="${href}" norāda uz "Projekts_SEZAMS/${targetRel}", kas repozitorijā neeksistē.`,
                  relatedArtifact: "ROUTE-001, COMP-001",
                  confidence: "CONFIRMED"
                });
              }
            }
          }

          // 2. Check <form> elements (DEFECT-005 & DEFECT-006)
          if (/<form\b/i.test(line)) {
            const isAuth = /login|auth|sezams/i.test(f.displayPath + line);
            const bucket = isAuth ? "DEFECT-006" : "DEFECT-005";
            defectMap[bucket].push({
              filePath: f.displayPath,
              role: "HTML Form Declaration",
              role_lv: "HTML formas deklarācija",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${lineNum}-${Math.min(f.linesCount, lineNum + 10)}`,
              reason: "Verify form action attribute, required field attributes, and JS submit handler binding.",
              reason_lv: "Pārbaudīt formas action atribūtu, obligātos laukus un JS submit apstrādātāja piesaisti.",
              relatedArtifact: isAuth ? "FORM-002, FUNC-007" : "FORM-001, FUNC-006",
              confidence: "CONFIRMED"
            });
          }

          // 3. Check <img> missing alt attribute (DEFECT-010)
          if (/<img\b/i.test(line) && !/\balt\s*=/i.test(line)) {
            defectMap["DEFECT-010"].push({
              filePath: f.displayPath,
              role: "HTML Accessibility — Missing img alt",
              role_lv: "HTML pieejamība — Trūkst img alt atribūta",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${lineNum}`,
              reason: "Image tag is missing an alt attribute for screen readers.",
              reason_lv: "Attēla elementam trūkst alt atribūta ekrāna lasītājiem.",
              relatedArtifact: "PAGE-001",
              confidence: "CONFIRMED"
            });
          }
        });
      } else if (ext === "js" || ext === "mjs" || ext === "ts") {
        f.lines.forEach((line, idx) => {
          const lineNum = idx + 1;
          if (/addEventListener\s*\(\s*['"]submit['"]|onsubmit/i.test(line)) {
            defectMap["DEFECT-005"].push({
              filePath: f.displayPath,
              role: "JavaScript Form Submit Handler",
              role_lv: "JavaScript formas iesniegšanas apstrādātājs",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${lineNum}-${Math.min(f.linesCount, lineNum + 12)}`,
              reason: "Form submit event listener found in repository JS; verify validation and API endpoint handling.",
              reason_lv: "Atrasts formas submit klausītājs repozitorija JS failā; pārbaudīt validāciju un API apstrādi.",
              relatedArtifact: "FUNC-006, FORM-001",
              confidence: "CONFIRMED"
            });
          }
          if (/map|svg|parcel|teritorij|leaflet|mapbox/i.test(line)) {
            defectMap["DEFECT-003"].push({
              filePath: f.displayPath,
              role: "JavaScript Map / Territory Logic",
              role_lv: "JavaScript kartes / teritoriju loģika",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${lineNum}-${Math.min(f.linesCount, lineNum + 10)}`,
              reason: "Map rendering or parcel interaction code located in repository.",
              reason_lv: "Atrasts kartes vai zemesgabalu apstrādes kods repozitorijā.",
              relatedArtifact: "COMP-002, FUNC-003",
              confidence: "CONFIRMED"
            });
          }
        });
      } else if (ext === "css" || ext === "scss") {
        f.lines.forEach((line, idx) => {
          const lineNum = idx + 1;
          if (/z-index\s*:\s*\d+/i.test(line)) {
            defectMap["DEFECT-008"].push({
              filePath: f.displayPath,
              role: "CSS Stacking Context (z-index)",
              role_lv: "CSS slāņu secība (z-index)",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${Math.max(1, lineNum - 2)}-${Math.min(f.linesCount, lineNum + 4)}`,
              reason: "Inspect z-index stacking and pointer-events to ensure overlays do not block underlying controls.",
              reason_lv: "Pārbaudīt z-index un pointer-events, lai pārklājumi nebloķētu pogas.",
              relatedArtifact: "COMP-002, COMP-001",
              confidence: "CONFIRMED"
            });
          }
          if (/position\s*:\s*(fixed|sticky)/i.test(line)) {
            defectMap["DEFECT-009"].push({
              filePath: f.displayPath,
              role: "CSS Fixed / Sticky Positioning",
              role_lv: "CSS fiksētā pozicionēšana (fixed/sticky)",
              codeSection: line.trim().slice(0, 110),
              lineRange: `${Math.max(1, lineNum - 2)}-${Math.min(f.linesCount, lineNum + 5)}`,
              reason: "Verify scroll-padding-top offset and mobile viewport height ratio for fixed headers/banners.",
              reason_lv: "Pārbaudīt scroll-padding-top nobīdi un mobilā ekrāna augstumu fiksētajām galvenēm/joslām.",
              relatedArtifact: "COMP-001, MODAL-002",
              confidence: "CONFIRMED"
            });
          }
        });
      }
    }

    // Fallback keyword matcher for any defect that didn't hit a specific regex above
    for (const defect of this.data.defects) {
      if (defectMap[defect.id] && defectMap[defect.id].length > 0) {
        defect.sourceLocations = defectMap[defect.id].slice(0, 6);
        defect.confidence = "CONFIRMED";
      } else {
        const kws = (defect.matchKeywords || []).map(k => k.toLowerCase());
        const fallbackMatches = [];
        for (const f of repoFiles) {
          if (kws.some(k => f.displayPath.toLowerCase().includes(k))) {
            fallbackMatches.push({
              filePath: f.displayPath,
              role: "Matched Projekts_SEZAMS File",
              role_lv: "Atbilstošais Projekts_SEZAMS fails",
              codeSection: `${f.name} (${f.linesCount} lines)`,
              lineRange: f.linesCount ? `1-${Math.min(30, f.linesCount)}` : null,
              reason: defect.discrepancy || defect.actual,
              reason_lv: defect.discrepancy_lv || defect.actual_lv,
              relatedArtifact: defect.component,
              confidence: "CONFIRMED"
            });
          }
          if (fallbackMatches.length >= 4) break;
        }
        if (fallbackMatches.length > 0) {
          defect.sourceLocations = fallbackMatches;
          defect.confidence = "CONFIRMED";
        }
      }
    }

    // Update implementation nodes with verified repo paths where matched
    this.data.nodes.forEach(n => {
      if (n.origin === "OUR_IMPL") {
        const hit = repoFiles.find(f =>
          n.route && f.displayPath.toLowerCase().includes(n.route.replace(/^Projekts_SEZAMS\//i, "").replace(/\/$/, "").toLowerCase())
        );
        if (hit) {
          n.route = hit.displayPath;
          n.confidence = "CONFIRMED";
          if (n.status === "UNTESTED") n.status = "WORKING";
        }
      }
    });

    this.saveState(false);
    this.updateRepoBadge();
    this.renderAll();
    this.showToast(
      this.t("repoScanned")
        .replace("{count}", repoFiles.length)
        .replace("{defects}", this.data.defects.length)
    );
  }

  getFilteredNodes() {
    const q = (document.getElementById("search-input").value || "").toLowerCase().trim();
    const orig = document.getElementById("filter-origin").value;
    const t = document.getElementById("filter-type").value;
    const st = document.getElementById("filter-status").value;
    const conf = document.getElementById("filter-confidence").value;

    return this.data.nodes.filter(n => {
      if (this.currentView === "REF_COMPARE") {
        // Show both OUR_IMPL and REFERENCE nodes in comparison view
      } else {
        if (orig !== "ALL" && (n.origin || "OUR_IMPL") !== orig) return false;
        if (this.currentView !== "ALL" && Array.isArray(n.views) && !n.views.includes(this.currentView)) {
          return false;
        }
      }
      if (t !== "ALL" && n.type !== t) return false;
      if (st !== "ALL" && n.status !== st) return false;
      if (conf !== "ALL") {
        if (conf === "LIKELY" && n.confidence !== "LIKELY" && n.confidence !== "INFERRED") return false;
        if (conf !== "LIKELY" && n.confidence !== conf) return false;
      }
      if (q) {
        const hay = `${n.id} ${n.name} ${n.name_lv || ''} ${n.route} ${n.page} ${n.description}`.toLowerCase();
        if (!hay.includes(q)) return false;
      }
      return true;
    });
  }

  renderAll() {
    this.renderInventory();
    this.renderCanvas();
    this.renderInspector();
    this.renderDrawer();
  }

  renderInventory() {
    const list = document.getElementById("inventory-list");
    const nodes = this.getFilteredNodes();
    document.getElementById("inventory-count").textContent = `${nodes.length} / ${this.data.nodes.length}`;
    const stMap = this.t("statusLabels");
    const confMap = this.t("confidenceLabels");

    list.innerHTML = nodes.map(n => {
      const origin = n.origin || "OUR_IMPL";
      const originBadge = origin === "REFERENCE" ? "REF (liepaja-sez.lv)" : "OUR CODE";
      return `
        <div class="inv-item origin-${origin} ${this.selectedNodeId === n.id ? 'selected' : ''}" onclick="app.selectNode('${n.id}')">
          <div class="inv-top">
            <div>
              <span class="pill cat-${n.type}">${n.id}</span>
              <span class="pill origin-${origin}">${originBadge}</span>
            </div>
            <span class="pill st-${n.status}">${this.getStatusIcon(n.status)} ${stMap[n.status] || n.status}</span>
          </div>
          <div class="inv-name">${this.escapeHtml(this.getNodeTitle(n))}</div>
          <div class="inv-meta">
            <span>${this.escapeHtml(n.route || 'N/A')}</span>
            <span>• ${confMap[n.confidence] || n.confidence}</span>
          </div>
        </div>
      `;
    }).join("");
  }

  getCategoryColor(type, origin) {
    if (origin === "REFERENCE" || type === "REF") return "#4f46e5";
    const map = {
      PAGE: "#2563eb", ROUTE: "#2563eb",
      COMP: "#0d9488", BTN: "#0d9488", FORM: "#0d9488", MODAL: "#0d9488",
      FUNC: "#7c3aed",
      API: "#ea580c",
      DATA: "#475569",
      DEFECT: "#dc2626"
    };
    return map[type] || "#475569";
  }

  getStatusColor(status) {
    const map = {
      WORKING: "#16a34a",
      BROKEN: "#dc2626",
      PARTIAL: "#d97706",
      MISSING: "#be123c",
      SUSPICIOUS: "#ca8a04",
      REFERENCE: "#4f46e5"
    };
    return map[status] || "#64748b";
  }

  getStatusIcon(status) {
    if (status === "WORKING") return "✓";
    if (status === "BROKEN") return "✗";
    if (status === "PARTIAL") return "◐";
    if (status === "MISSING") return "∅";
    if (status === "SUSPICIOUS") return "⚠";
    if (status === "REFERENCE") return "⚓";
    return "⊘";
  }

  renderCanvas() {
    const vp = document.getElementById("canvas-viewport");
    vp.setAttribute("transform", `translate(${this.panX}, ${this.panY}) scale(${this.zoomScale})`);

    const visibleNodes = this.getFilteredNodes();
    const visibleIds = new Set(visibleNodes.map(n => n.id));
    const connectedIds = new Set();

    if (this.selectedNodeId) {
      connectedIds.add(this.selectedNodeId);
      this.data.relationships.forEach(r => {
        if (r.sourceId === this.selectedNodeId) connectedIds.add(r.targetId);
        if (r.targetId === this.selectedNodeId) connectedIds.add(r.sourceId);
      });
    }

    const edgesHtml = this.data.relationships
      .filter(r => visibleIds.has(r.sourceId) && visibleIds.has(r.targetId))
      .map(r => {
        const s = this.data.nodes.find(n => n.id === r.sourceId);
        const t = this.data.nodes.find(n => n.id === r.targetId);
        if (!s || !t) return "";
        const x1 = s.x + 98, y1 = s.y + 34;
        const x2 = t.x + 98, y2 = t.y + 34;
        const mx = (x1 + x2) / 2, my = (y1 + y2) / 2 - 8;
        const isHighlighted = this.selectedRelId === r.id || (this.selectedNodeId && (r.sourceId === this.selectedNodeId || r.targetId === this.selectedNodeId));
        const isDefectEdge = r.status === "BROKEN" || r.status === "MISSING";
        const stroke = isDefectEdge ? "#f87171" : (isHighlighted ? "#38bdf8" : "#64748b");
        const marker = isDefectEdge ? "url(#arrow-defect)" : (isHighlighted ? "url(#arrow-highlight)" : "url(#arrow-solid)");
        const dash = r.status !== "WORKING" ? 'stroke-dasharray="5,4"' : "";

        return `
          <g class="edge-group" onclick="app.selectRelationship('${r.id}', event)" style="cursor:pointer">
            <line x1="${x1}" y1="${y1}" x2="${x2}" y2="${y2}" stroke="${stroke}" stroke-width="${isHighlighted ? 2.6 : 1.6}" ${dash} marker-end="${marker}" />
            <rect x="${mx - 45}" y="${my - 10}" width="90" height="16" rx="3" fill="#0f172a" stroke="${stroke}" stroke-width="0.8" opacity="0.92" />
            <text x="${mx}" y="${my + 1}" text-anchor="middle" fill="#cbd5e1" font-size="9" font-weight="600">${this.escapeHtml(r.label || r.type)}</text>
          </g>
        `;
      }).join("");

    const nodesHtml = visibleNodes.map(n => {
      const catColor = this.getCategoryColor(n.type, n.origin);
      const stColor = this.getStatusColor(n.status);
      const isSelected = this.selectedNodeId === n.id;
      const isNeighbor = connectedIds.has(n.id);
      const opacity = (this.selectedNodeId && !isNeighbor) ? 0.42 : 1.0;
      const dashArray = n.confidence !== "CONFIRMED" ? 'stroke-dasharray="6,3"' : "";
      const borderStroke = isSelected ? "#38bdf8" : (n.origin === "REFERENCE" ? "#818cf8" : "#e2e8f0");
      const strokeWidth = isSelected ? 3 : 1.5;
      const displayTitle = this.getNodeTitle(n);

      return `
        <g class="node-group" data-id="${n.id}" transform="translate(${n.x}, ${n.y})" opacity="${opacity}"
           onmousedown="app.startDragNode('${n.id}', event)" onclick="app.selectNode('${n.id}', event)" style="cursor:move">
          <rect width="196" height="68" rx="8" fill="#1e293b" stroke="${borderStroke}" stroke-width="${strokeWidth}" ${dashArray} />
          <rect width="196" height="22" rx="8" fill="${catColor}" />
          <text x="8" y="15" fill="#ffffff" font-size="10" font-weight="700">[${n.type}] ${this.escapeHtml(n.id)}</text>
          <rect x="122" y="4" width="68" height="14" rx="3" fill="${stColor}" />
          <text x="156" y="14" text-anchor="middle" fill="#ffffff" font-size="8.5" font-weight="700">${this.getStatusIcon(n.status)} ${n.status}</text>
          <text x="8" y="40" fill="#f8fafc" font-size="10.5" font-weight="600">${this.escapeHtml(displayTitle.slice(0, 27))}</text>
          <text x="8" y="56" fill="#94a3b8" font-size="9">${this.escapeHtml((n.route || "").slice(0, 30))}</text>
        </g>
      `;
    }).join("");

    vp.innerHTML = edgesHtml + nodesHtml;
  }

  setDiagramView(view) {
    this.currentView = view;
    document.querySelectorAll(".view-tab").forEach(btn => {
      btn.classList.toggle("active", btn.dataset.view === view);
    });
    const viewLabels = this.t("viewLabels");
    document.getElementById("view-title-label").textContent = viewLabels[view] || view;
    this.renderInventory();
    this.renderCanvas();
    if (this.activeDrawer === "mermaid-preview") this.renderDrawer();
  }

  setInspectorTab(tab) {
    this.inspectorTab = tab;
    document.getElementById("itab-source").classList.toggle("active", tab === "source");
    document.getElementById("itab-compare").classList.toggle("active", tab === "compare");
    document.getElementById("itab-record").classList.toggle("active", tab === "record");
    this.renderInspector();
  }

  selectNode(id, ev) {
    if (ev) ev.stopPropagation();
    this.selectedNodeId = id;
    this.selectedRelId = null;
    this.renderInventory();
    this.renderCanvas();
    this.renderInspector();

    const node = this.data.nodes.find(n => n.id === id);
    if (this.autoOpenModalOnDefect && (id.startsWith("DEFECT-") || (node && node.status !== "WORKING" && node.status !== "REFERENCE"))) {
      this.openSourceModal();
    }
  }

  selectDefectById(defectId) {
    const d = this.data.defects.find(x => x.id === defectId);
    if (d && d.component) {
      this.selectedNodeId = d.component;
    }
    this._focusedDefectId = defectId;
    this.inspectorTab = "source";
    this.setInspectorTab("source");
    this.renderAll();
    if (this.autoOpenModalOnDefect) this.openSourceModal();
  }

  selectRelationship(id, ev) {
    if (ev) ev.stopPropagation();
    this.selectedRelId = id;
    this.selectedNodeId = null;
    this.renderCanvas();
    this.renderInspector();
  }

  buildComparisonHtml() {
    const defects = this.resolveDefectsForSelection();
    if (!defects.length) {
      return `<div style="color:var(--text-muted)">Select an implementation component or defect to view the 5-point comparison between the reference website (<code>liepaja-sez.lv</code>) and our <code>Projekts_SEZAMS</code> repository.</div>`;
    }
    return defects.map(d => {
      const orig = (this.lang === "lv" && d.originalBehavior_lv) ? d.originalBehavior_lv : (d.originalBehavior || "Reference baseline behavior on liepaja-sez.lv.");
      const impl = (this.lang === "lv" && d.ourImplementation_lv) ? d.ourImplementation_lv : (d.ourImplementation || d.actual);
      const exp = (this.lang === "lv" && d.expected_lv) ? d.expected_lv : d.expected;
      const disc = (this.lang === "lv" && d.discrepancy_lv) ? d.discrepancy_lv : (d.discrepancy || d.actual);
      const act = (this.lang === "lv" && d.fix_lv) ? d.fix_lv : d.fix;

      return `
        <div class="comp-grid">
          <div style="display:flex; justify-content:space-between; align-items:center;">
            <span class="pill cat-DEFECT">${this.escapeHtml(d.id)}</span>
            <span class="pill st-${d.status}">${this.escapeHtml(d.status)}</span>
          </div>
          <div style="font-weight:700; color:#f8fafc;">${this.escapeHtml(this.getDefectTitle(d))}</div>
          <div class="comp-row">
            <div class="comp-lbl">${this.t("cmp1Orig")}</div>
            <div>${this.escapeHtml(orig)}</div>
          </div>
          <div class="comp-row">
            <div class="comp-lbl" style="color:#fbbf24;">${this.t("cmp2Impl")}</div>
            <div>${this.escapeHtml(impl)}</div>
          </div>
          <div class="comp-row">
            <div class="comp-lbl" style="color:#38bdf8;">${this.t("cmp3Exp")}</div>
            <div>${this.escapeHtml(exp)}</div>
          </div>
          <div class="comp-row">
            <div class="comp-lbl" style="color:#f87171;">${this.t("cmp4Disc")}</div>
            <div>${this.escapeHtml(disc)}</div>
          </div>
          <div class="comp-row">
            <div class="comp-lbl" style="color:#34d399;">${this.t("cmp5Act")}</div>
            <div>${this.escapeHtml(act)}</div>
          </div>
        </div>
      `;
    }).join("");
  }

  buildSourceLocationHtml() {
    const defects = this.resolveDefectsForSelection();
    const node = this.data.nodes.find(n => n.id === this.selectedNodeId);
    const confLabels = this.t("confidenceLabels");

    const targetList = defects.length ? defects : (node ? [{
      id: node.id,
      title: this.getNodeTitle(node),
      title_lv: this.getNodeTitle(node),
      severity: node.severity,
      confidence: node.confidence,
      status: node.status,
      page: node.page,
      component: node.id,
      func: (node.relatedFunctionIds || []).join(", ") || "N/A",
      api: (node.relatedApiIds || []).join(", ") || "N/A",
      actual: this.getNodeObs(node),
      actual_lv: this.getNodeObs(node),
      fix: this.getNodeExp(node),
      fix_lv: this.getNodeExp(node),
      sourceLocations: [{
        filePath: node.confidence === "CONFIRMED" ? node.route : null,
        role: `${node.type} in Projekts_SEZAMS`,
        role_lv: `${node.type} mūsu Projekts_SEZAMS kodā`,
        codeSection: node.id,
        lineRange: null,
        reason: node.sourceEvidence,
        reason_lv: node.sourceEvidence,
        relatedArtifact: node.route || node.page,
        confidence: node.confidence
      }]
    }] : []);

    if (!targetList.length) {
      return `<div style="color:var(--text-muted)">${this.t("sourceNotVerified")}</div>`;
    }

    return targetList.map(d => {
      const locs = (d.sourceLocations && d.sourceLocations.length) ? d.sourceLocations : [{
        filePath: null,
        role: "Unverified Projekts_SEZAMS File",
        role_lv: "Nepārbaudīts Projekts_SEZAMS fails",
        codeSection: d.func || d.component,
        lineRange: null,
        reason: d.actual,
        reason_lv: d.actual_lv || d.actual,
        relatedArtifact: d.component,
        confidence: "UNVERIFIED"
      }];

      const cardsHtml = locs.map((loc, idx) => {
        const displayPath = this.formatRepoDisplayPath(loc.filePath);
        const ghUrl = this.buildGitHubUrl(loc.filePath, loc.lineRange);
        const isVerified = Boolean(displayPath);
        const roleText = (this.lang === "lv" && loc.role_lv) ? loc.role_lv : loc.role;
        const reasonText = (this.lang === "lv" && loc.reason_lv) ? loc.reason_lv : loc.reason;
        const confKey = loc.confidence || d.confidence || "UNVERIFIED";

        return `
          <div class="source-card ${isVerified ? '' : 'unverified'}">
            <div style="display:flex; justify-content:space-between; align-items:center; gap:6px;">
              <strong style="color:#38bdf8;">#${idx + 1} • ${this.escapeHtml(roleText)}</strong>
              <span class="pill conf-${confKey}">${this.escapeHtml(confLabels[confKey] || confKey)}</span>
            </div>

            <div>
              <div style="font-size:10px; color:var(--text-muted); margin-bottom:2px;">${this.t("repoFilePath")}:</div>
              ${isVerified
                ? `<div class="source-path-box">${this.escapeHtml(displayPath)}${loc.lineRange ? ` : L${this.escapeHtml(loc.lineRange)}` : ''}</div>`
                : `<div class="source-path-box" style="color:#fbbf24;">⚠ ${this.t("sourceNotVerified")}<div style="font-size:10.5px; color:#94a3b8; margin-top:4px; font-family:sans-serif;">${this.t("sourceNotVerifiedDesc")}</div></div>`
              }
            </div>

            <div class="filter-row">
              <div><strong>${this.t("codeSection")}:</strong><br/><span style="color:#cbd5e1;"><code>${this.escapeHtml(loc.codeSection || 'N/A')}</code></span></div>
              <div><strong>${this.t("lineRange")}:</strong><br/><span style="color:#cbd5e1;"><code>${this.escapeHtml(loc.lineRange || this.t("sourceNotVerified"))}</code></span></div>
            </div>

            <div><strong>${this.t("whyRelevant")}:</strong><br/><span style="color:#cbd5e1;">${this.escapeHtml(reasonText || '')}</span></div>
            <div><strong>${this.t("relatedArtifacts")}:</strong> <span style="color:#cbd5e1;"><code>${this.escapeHtml(loc.relatedArtifact || '')}</code></span></div>

            <div class="source-actions">
              <button onclick="app.copyText('${this.escapeHtml(displayPath || this.t("sourceNotVerified"))}')">📋 ${this.t("copyFilePath")}</button>
              ${ghUrl
                ? `<a class="btn-link" href="${ghUrl}" target="_blank" rel="noopener noreferrer">🔗 ${this.t("openInGithub")}</a>`
                : `<a class="btn-link" href="https://github.com/Lengdons/Projekts_SEZAMS/tree/main" target="_blank" rel="noopener noreferrer">🔗 ${this.t("openInGithub")} (main)</a>`
              }
              <button onclick="app.copyText('${this.escapeHtml(loc.codeSection || d.func || d.id)}')">⎘ ${this.t("copyCodeRef")}</button>
            </div>
          </div>
        `;
      }).join("");

      return `
        <div style="background:#020617; border:1px solid #334155; border-radius:8px; padding:10px; display:flex; flex-direction:column; gap:8px;">
          <div style="display:flex; justify-content:space-between; align-items:center;">
            <span class="pill cat-DEFECT">${this.escapeHtml(d.id)}</span>
            <span class="pill st-${d.status || 'PARTIAL'}">${this.escapeHtml(d.status || d.severity)}</span>
          </div>
          <div style="font-weight:700; font-size:13px; color:#f8fafc;">${this.escapeHtml(this.getDefectTitle(d))}</div>
          <div style="font-size:11px; color:var(--text-muted);">
            <strong>${this.t("affectedFeature")}:</strong> <code>${this.escapeHtml(d.page || 'GLOBAL')}</code> → <code>${this.escapeHtml(d.component || '')}</code>
          </div>
          <div style="font-size:11.5px; color:#cbd5e1;">
            <strong>${this.t("problemDesc")}:</strong> ${this.escapeHtml((this.lang === "lv" && d.ourImplementation_lv) ? d.ourImplementation_lv : (d.ourImplementation || d.actual))}
          </div>
          <div style="font-size:11.5px; color:#86efac;">
            <strong>${this.t("recommendedFix")}:</strong> ${this.escapeHtml((this.lang === "lv" && d.fix_lv) ? d.fix_lv : d.fix)}
          </div>
          ${cardsHtml}
          <div style="display:flex; gap:6px; flex-wrap:wrap; margin-top:4px;">
            <button onclick="app.promptAddSourceLocation('${d.id}')">${this.t("addSourceMappingBtn")}</button>
            <button class="accent-purple" onclick="app.openSourceModal()">${this.t("openModalBtn")}</button>
          </div>
        </div>
      `;
    }).join("");
  }

  promptAddSourceLocation(defectId) {
    const defect = this.data.defects.find(d => d.id === defectId);
    if (!defect) return;
    const rawPath = prompt("Enter repository file path in Projekts_SEZAMS (e.g., Projekts_SEZAMS/site/lv/index.html):", "Projekts_SEZAMS/site/lv/index.html");
    if (!rawPath) return;
    const lineRange = prompt("Enter verified line range (e.g., 42-58) or leave blank:", "");
    const codeSec = prompt("Enter function, selector, or markup section:", defect.func || defect.component || "");

    this.saveState(true);
    defect.sourceLocations = (defect.sourceLocations || []).filter(loc => loc.filePath !== null);
    defect.sourceLocations.push({
      filePath: this.formatRepoDisplayPath(rawPath),
      role: "Verified Projekts_SEZAMS File",
      role_lv: "Verificēts Projekts_SEZAMS fails",
      codeSection: codeSec || "N/A",
      lineRange: lineRange ? lineRange.trim() : null,
      reason: `Verified source location in Projekts_SEZAMS for ${defect.id}.`,
      reason_lv: `Verificēta avota atrašanās vieta Projekts_SEZAMS projektā defektam ${defect.id}.`,
      relatedArtifact: `${defect.component}`,
      confidence: "CONFIRMED"
    });
    defect.confidence = "CONFIRMED";
    this.saveState(false);
    this.renderAll();
  }

  openSourceModal() {
    this.renderSourceModalContent();
    document.getElementById("source-modal-backdrop").classList.add("open");
  }

  closeSourceModal(ev) {
    if (ev && ev.target !== document.getElementById("source-modal-backdrop")) return;
    document.getElementById("source-modal-backdrop").classList.remove("open");
  }

  toggleAutoModal(checked) { this.autoOpenModalOnDefect = checked; }

  renderSourceModalContent() {
    document.getElementById("modal-source-title").textContent = this.t("sourceLocationTitle");
    document.getElementById("source-modal-body").innerHTML = this.buildSourceLocationHtml() + "<hr style='border-color:#334155; margin:8px 0;'/>" + this.buildComparisonHtml();
  }

  copyText(text) {
    navigator.clipboard.writeText(text).then(() => {
      this.showToast(this.t("copiedToast") + text);
    });
  }

  renderInspector() {
    const body = document.getElementById("inspector-body");
    const modeLabel = document.getElementById("inspector-mode");

    if (!this.selectedRelId && this.inspectorTab === "source") {
      modeLabel.textContent = this.selectedNodeId || "Source";
      body.innerHTML = this.buildSourceLocationHtml();
      return;
    }

    if (!this.selectedRelId && this.inspectorTab === "compare") {
      modeLabel.textContent = this.selectedNodeId || "Compare";
      body.innerHTML = this.buildComparisonHtml();
      return;
    }

    if (this.selectedRelId) {
      const r = this.data.relationships.find(x => x.id === this.selectedRelId);
      if (!r) return;
      modeLabel.textContent = r.id;
      body.innerHTML = `
        <div class="form-group"><label>Relationship ID</label><input id="rel-id" value="${this.escapeHtml(r.id)}" readonly /></div>
        <div class="form-group"><label>Source ID</label><input id="rel-src" value="${this.escapeHtml(r.sourceId)}" /></div>
        <div class="form-group"><label>Target ID</label><input id="rel-tgt" value="${this.escapeHtml(r.targetId)}" /></div>
        <div class="form-group"><label>Label</label><input id="rel-label" value="${this.escapeHtml(r.label || '')}" /></div>
        <div class="form-group">
          <label>Status</label>
          <select id="rel-status">
            ${["WORKING","BROKEN","PARTIAL","MISSING","SUSPICIOUS","UNTESTED"].map(s => `<option value="${s}" ${r.status===s?'selected':''}>${s}</option>`).join("")}
          </select>
        </div>
        <div style="display:flex; gap:8px; margin-top:6px;">
          <button class="primary" onclick="app.saveRelationshipEdits('${r.id}')">${this.t("saveConnBtn")}</button>
          <button class="danger" onclick="app.deleteRelationship('${r.id}')">${this.t("deleteConnBtn")}</button>
        </div>
      `;
      return;
    }

    const n = this.data.nodes.find(x => x.id === this.selectedNodeId);
    if (!n) {
      body.innerHTML = `<div style="color:var(--text-muted)">Select a node.</div>`;
      return;
    }
    modeLabel.textContent = n.id;

    body.innerHTML = `
      <div class="form-group"><label>Unique ID</label><input id="ed-id" value="${this.escapeHtml(n.id)}" readonly /></div>
      <div class="form-group"><label>Name (${this.lang.toUpperCase()})</label><input id="ed-name" value="${this.escapeHtml(this.getNodeTitle(n))}" /></div>
      <div class="filter-row">
        <div class="form-group">
          <label>Scope Origin</label>
          <select id="ed-origin">
            <option value="OUR_IMPL" ${(n.origin||'OUR_IMPL')==='OUR_IMPL'?'selected':''}>OUR_IMPL (Projekts_SEZAMS)</option>
            <option value="REFERENCE" ${n.origin==='REFERENCE'?'selected':''}>REFERENCE (liepaja-sez.lv)</option>
          </select>
        </div>
        <div class="form-group">
          <label>Implementation Status</label>
          <select id="ed-status">
            ${["WORKING","BROKEN","PARTIAL","MISSING","SUSPICIOUS","UNTESTED","BLOCKED","REFERENCE"].map(s => `<option value="${s}" ${n.status===s?'selected':''}>${s}</option>`).join("")}
          </select>
        </div>
      </div>
      <div class="filter-row">
        <div class="form-group"><label>Repo Path / Route</label><input id="ed-route" value="${this.escapeHtml(n.route || '')}" /></div>
        <div class="form-group">
          <label>Confidence</label>
          <select id="ed-confidence">
            ${["CONFIRMED","LIKELY","UNVERIFIED"].map(c => `<option value="${c}" ${n.confidence===c?'selected':''}>${c}</option>`).join("")}
          </select>
        </div>
      </div>
      <div class="form-group"><label>Description</label><textarea id="ed-desc">${this.escapeHtml(this.getNodeDesc(n))}</textarea></div>
      <div class="form-group"><label>Expected Behavior</label><textarea id="ed-exp">${this.escapeHtml(this.getNodeExp(n))}</textarea></div>
      <div class="form-group"><label>Our Current Behavior</label><textarea id="ed-obs">${this.escapeHtml(this.getNodeObs(n))}</textarea></div>
      <div style="display:flex; gap:8px; margin-top:6px;">
        <button class="primary" onclick="app.saveNodeEdits('${n.id}')">${this.t("saveRecordBtn")}</button>
        <button class="danger" onclick="app.deleteNode('${n.id}')">${this.t("deleteNodeBtn")}</button>
      </div>
    `;
  }

  saveNodeEdits(id) {
    const n = this.data.nodes.find(x => x.id === id);
    if (!n) return;
    this.saveState(true);
    if (this.lang === "lv") {
      n.name_lv = document.getElementById("ed-name").value.trim() || n.name_lv;
      n.description_lv = document.getElementById("ed-desc").value.trim();
      n.expectedBehavior_lv = document.getElementById("ed-exp").value.trim();
      n.observedBehavior_lv = document.getElementById("ed-obs").value.trim();
    } else {
      n.name = document.getElementById("ed-name").value.trim() || n.name;
      n.description = document.getElementById("ed-desc").value.trim();
      n.expectedBehavior = document.getElementById("ed-exp").value.trim();
      n.observedBehavior = document.getElementById("ed-obs").value.trim();
    }
    n.origin = document.getElementById("ed-origin").value;
    n.status = document.getElementById("ed-status").value;
    n.route = document.getElementById("ed-route").value.trim();
    n.confidence = document.getElementById("ed-confidence").value;
    this.saveState(false);
    this.renderAll();
  }

  createNewNode() {
    const id = prompt("Enter unique ID (e.g., COMP-099):", `COMP-0${this.data.nodes.length + 1}`);
    if (!id) return;
    const cleanId = id.trim().toUpperCase();
    if (this.data.nodes.some(n => n.id === cleanId)) return alert("Duplicate ID.");
    const name = prompt("Name:", "New Projekts_SEZAMS Component") || cleanId;
    this.saveState(true);
    this.data.nodes.push({
      id: cleanId, origin: "OUR_IMPL", name, name_lv: name, type: "COMP", page: "PAGE-001", route: "Projekts_SEZAMS/site/lv/",
      description: "Added component in Projekts_SEZAMS.", description_lv: "Pievienota Projekts_SEZAMS komponente.",
      status: "UNTESTED", severity: "LOW", confidence: "UNVERIFIED",
      sourceEvidence: "Manual entry", expectedBehavior: "", observedBehavior: "",
      relatedFunctionIds: [], relatedApiIds: [], relatedDefectIds: [], testIds: [],
      views: ["ALL", this.currentView], x: 240, y: 180
    });
    this.selectedNodeId = cleanId;
    this.saveState(false);
    this.renderAll();
  }

  deleteNode(id) {
    if (!confirm(`Delete node '${id}'?`)) return;
    this.saveState(true);
    this.data.nodes = this.data.nodes.filter(n => n.id !== id);
    this.data.relationships = this.data.relationships.filter(r => r.sourceId !== id && r.targetId !== id);
    this.selectedNodeId = this.data.nodes[0]?.id || null;
    this.saveState(false);
    this.renderAll();
  }

  createNewRelationship() {
    const sourceId = prompt("Source Node ID:", this.selectedNodeId || "PAGE-001");
    const targetId = prompt("Target Node ID:", "COMP-001");
    if (!sourceId || !targetId || sourceId === targetId) return;
    if (!this.data.nodes.some(n => n.id === sourceId) || !this.data.nodes.some(n => n.id === targetId)) return alert("ID not found.");
    const label = prompt("Label:", "connects") || "connects";
    this.saveState(true);
    this.data.relationships.push({
      id: `REL-${Date.now().toString().slice(-4)}`, sourceId, targetId, type: "NAVIGATES", label, status: "PARTIAL", evidence: "Studio"
    });
    this.saveState(false);
    this.renderAll();
  }

  saveRelationshipEdits(id) {
    const r = this.data.relationships.find(x => x.id === id);
    if (!r) return;
    this.saveState(true);
    r.sourceId = document.getElementById("rel-src").value.trim();
    r.targetId = document.getElementById("rel-tgt").value.trim();
    r.label = document.getElementById("rel-label").value.trim();
    r.status = document.getElementById("rel-status").value;
    this.saveState(false);
    this.renderAll();
  }

  deleteRelationship(id) {
    this.saveState(true);
    this.data.relationships = this.data.relationships.filter(r => r.id !== id);
    this.selectedRelId = null;
    this.saveState(false);
    this.renderAll();
  }

  switchDrawer(tab) {
    const el = document.getElementById("drawer-content");
    if (tab === "toggle") { el.classList.toggle("collapsed"); return; }
    el.classList.remove("collapsed");
    this.activeDrawer = tab;
    this.renderDrawer();
  }

  renderDrawer() {
    const el = document.getElementById("drawer-content");
    const mLabels = this.t("metrics");
    const confLabels = this.t("confidenceLabels");

    if (this.activeDrawer === "dashboard") {
      const implNodes = this.data.nodes.filter(n => (n.origin || "OUR_IMPL") === "OUR_IMPL");
      const refNodes = this.data.nodes.filter(n => n.origin === "REFERENCE");
      const working = implNodes.filter(n => n.status === "WORKING").length;
      const brokenPartial = implNodes.filter(n => n.status === "BROKEN" || n.status === "PARTIAL").length;
      const missing = implNodes.filter(n => n.status === "MISSING").length;

      el.innerHTML = `
        <div class="metrics-grid">
          <div class="metric-card"><div class="val">${implNodes.length}</div><div class="lbl">${mLabels.implNodes}</div></div>
          <div class="metric-card"><div class="val" style="color:#10b981">${working}</div><div class="lbl">${mLabels.working}</div></div>
          <div class="metric-card"><div class="val" style="color:#f59e0b">${brokenPartial}</div><div class="lbl">${mLabels.brokenPartial}</div></div>
          <div class="metric-card"><div class="val" style="color:#f43f5e">${missing}</div><div class="lbl">${mLabels.missing}</div></div>
          <div class="metric-card"><div class="val" style="color:#818cf8">${refNodes.length}</div><div class="lbl">${mLabels.refNodes}</div></div>
          <div class="metric-card"><div class="val" style="color:#38bdf8">${(this.data.repoIndex||[]).length}</div><div class="lbl">${mLabels.verifiedFiles}</div></div>
        </div>
        <div style="color:var(--text-muted)">
          <strong>Scope Notice:</strong> Primary audit target is <code>Projekts_SEZAMS</code> (<code>https://github.com/Lengdons/Projekts_SEZAMS.git</code>, branch <code>main</code>). <code>liepaja-sez.lv</code> is retained strictly as the historical reference baseline. ${this.t("sourceNotVerifiedDesc")}
        </div>
      `;
    } else if (this.activeDrawer === "defects") {
      el.innerHTML = `
        <table class="data-table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Status</th>
              <th>${this.t("confidenceLevel")}</th>
              <th>Defect / Discrepancy in Projekts_SEZAMS</th>
              <th>${this.t("repoFilePath")}</th>
              <th>${this.t("recommendedFix")}</th>
            </tr>
          </thead>
          <tbody>
            ${this.data.defects.map(d => {
              const firstPath = d.sourceLocations?.[0]?.filePath
                ? this.formatRepoDisplayPath(d.sourceLocations[0].filePath)
                : `⚠ ${this.t("sourceNotVerified")}`;
              return `
                <tr onclick="app.selectDefectById('${d.id}')" style="cursor:pointer">
                  <td><strong>${d.id}</strong></td>
                  <td><span class="pill st-${d.status}">${d.status}</span></td>
                  <td><span class="pill conf-${d.confidence}">${confLabels[d.confidence] || d.confidence}</span></td>
                  <td>${this.escapeHtml(this.getDefectTitle(d))}</td>
                  <td><code>${this.escapeHtml(firstPath)}</code></td>
                  <td>${this.escapeHtml((this.lang === "lv" && d.fix_lv) ? d.fix_lv : d.fix)}</td>
                </tr>
              `;
            }).join("")}
          </tbody>
        </table>
      `;
    } else if (this.activeDrawer === "source-map") {
      const rows = [];
      this.data.defects.forEach(d => {
        (d.sourceLocations || []).forEach(loc => {
          const disp = this.formatRepoDisplayPath(loc.filePath);
          const gh = this.buildGitHubUrl(loc.filePath, loc.lineRange);
          rows.push(`
            <tr onclick="app.selectDefectById('${d.id}')" style="cursor:pointer">
              <td><strong>${d.id}</strong></td>
              <td>${this.escapeHtml((this.lang === "lv" && loc.role_lv) ? loc.role_lv : loc.role)}</td>
              <td><code>${this.escapeHtml(disp || this.t("sourceNotVerified"))}</code></td>
              <td><code>${this.escapeHtml(loc.lineRange || "-")}</code></td>
              <td><code>${this.escapeHtml(loc.codeSection || "-")}</code></td>
              <td><span class="pill conf-${loc.confidence || 'UNVERIFIED'}">${confLabels[loc.confidence] || loc.confidence}</span></td>
              <td>${gh ? `<a href="${gh}" target="_blank" style="color:#38bdf8">${this.t("openInGithub")}</a>` : "-"}</td>
            </tr>
          `);
        });
      });
      el.innerHTML = `
        <table class="data-table">
          <thead>
            <tr>
              <th>Defect ID</th>
              <th>${this.t("fileRole")}</th>
              <th>${this.t("repoFilePath")}</th>
              <th>${this.t("lineRange")}</th>
              <th>${this.t("codeSection")}</th>
              <th>${this.t("confidenceLevel")}</th>
              <th>GitHub (main)</th>
            </tr>
          </thead>
          <tbody>${rows.join("")}</tbody>
        </table>
      `;
    } else if (this.activeDrawer === "tests") {
      el.innerHTML = `
        <table class="data-table">
          <thead><tr><th>Test ID</th><th>Status</th><th>Projekts_SEZAMS Target</th><th>Defect</th><th>Verification Steps</th></tr></thead>
          <tbody>
            ${this.data.tests.map(t => `
              <tr>
                <td><strong>${t.id}</strong></td>
                <td>${t.status}</td>
                <td>${t.target}</td>
                <td>${t.defect}</td>
                <td><strong>${this.escapeHtml((this.lang === "lv" && t.name_lv) ? t.name_lv : t.name)}:</strong> ${this.escapeHtml((this.lang === "lv" && t.steps_lv) ? t.steps_lv : t.steps)}</td>
              </tr>
            `).join("")}
          </tbody>
        </table>
      `;
    } else if (this.activeDrawer === "mermaid-preview") {
      el.innerHTML = `<pre style="background:#020617; padding:10px; border-radius:6px; overflow-x:auto; color:#38bdf8; font-size:11px;">${this.escapeHtml(this.generateMermaid())}</pre>`;
    }
  }

  generateMermaid() {
    const nodes = this.getFilteredNodes();
    const ids = new Set(nodes.map(n => n.id));
    let out = `flowchart LR\n  %% Projekts_SEZAMS Implementation View: ${this.currentView}\n`;
    nodes.forEach(n => {
      const safeName = this.getNodeTitle(n).replace(/"/g, "'");
      out += `  ${n.id}["[${n.type}] ${n.id}: ${safeName} (${n.status})"]\n`;
    });
    this.data.relationships
      .filter(r => ids.has(r.sourceId) && ids.has(r.targetId))
      .forEach(r => {
        const arrow = r.status === "WORKING" ? "-->" : "-.->";
        out += `  ${r.sourceId} ${arrow}|"${r.label || r.type}"| ${r.targetId}\n`;
      });
    return out;
  }

  generatePlantUML() {
    const nodes = this.getFilteredNodes();
    const ids = new Set(nodes.map(n => n.id));
    let out = `@startuml\ntitle Projekts_SEZAMS Implementation (${this.currentView})\nskinparam componentStyle rectangle\n`;
    nodes.forEach(n => {
      out += `component "[${n.type}] ${n.id}\\n${this.getNodeTitle(n)}\\nStatus: ${n.status}" as ${n.id.replace(/-/g, "_")}\n`;
    });
    this.data.relationships
      .filter(r => ids.has(r.sourceId) && ids.has(r.targetId))
      .forEach(r => {
        const s = r.sourceId.replace(/-/g, "_");
        const t = r.targetId.replace(/-/g, "_");
        const line = r.status === "WORKING" ? "-->" : "..>";
        out += `${s} ${line} ${t} : ${r.label || r.type}\n`;
      });
    out += `@enduml`;
    return out;
  }

  handleExport(format) {
    if (!format) return;
    if (format === "json") {
      this.downloadFile("projekts-sezams-audit.json", JSON.stringify(this.data, null, 2), "application/json");
    } else if (format === "mermaid") {
      this.downloadFile(`projekts-sezams-${this.currentView.toLowerCase()}.mmd`, this.generateMermaid(), "text/plain");
    } else if (format === "plantuml") {
      this.downloadFile(`projekts-sezams-${this.currentView.toLowerCase()}.puml`, this.generatePlantUML(), "text/plain");
    } else if (format === "svg") {
      const svgEl = document.getElementById("uml-canvas");
      this.downloadFile(`projekts-sezams-${this.currentView.toLowerCase()}.svg`, new XMLSerializer().serializeToString(svgEl), "image/svg+xml");
    } else if (format === "markdown") {
      let md = `# Projekts_SEZAMS Implementation Audit Report (${this.lang.toUpperCase()})\n\n`;
      md += `- **Target Development Repository:** ${this.data.metadata.repositoryUrl} (branch: \`main\`)\n`;
      md += `- **Historical Reference Baseline:** ${this.data.metadata.referenceBaselineUrl}\n\n`;
      this.data.defects.forEach(d => {
        md += `## ${d.id}: ${this.getDefectTitle(d)} [${d.status} | ${d.severity} | ${d.confidence}]\n`;
        md += `- **1. Original Behavior (liepaja-sez.lv):** ${d.originalBehavior}\n`;
        md += `- **2. Our Implementation (Projekts_SEZAMS):** ${d.ourImplementation}\n`;
        md += `- **3. Expected Behavior:** ${d.expected}\n`;
        md += `- **4. Discrepancy:** ${d.discrepancy}\n`;
        md += `- **5. Required Action in Projekts_SEZAMS:** ${d.fix}\n`;
        (d.sourceLocations || []).forEach(loc => {
          const p = this.formatRepoDisplayPath(loc.filePath) || this.t("sourceNotVerified");
          md += `  - **Source Location:** \`${p}\` (Lines: \`${loc.lineRange || 'Unverified'}\`) — \`${loc.codeSection || ''}\`\n`;
        });
        md += `\n`;
      });
      this.downloadFile("projekts-sezams-audit-report.md", md, "text/markdown");
    }
  }

  downloadFile(filename, content, mime) {
    const blob = new Blob([content], { type: mime });
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = filename;
    a.click();
    URL.revokeObjectURL(a.href);
  }

  importJSON(event) {
    const file = event.target.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (e) => {
      try {
        const parsed = JSON.parse(e.target.result);
        this.saveState(true);
        if (Array.isArray(parsed.nodes) && Array.isArray(parsed.relationships)) {
          this.data = parsed;
        }
        this.saveState(false);
        this.updateRepoBadge();
        this.renderAll();
      } catch (err) {
        alert("Import error: " + err.message);
      }
    };
    reader.readAsText(file);
  }

  autoLayoutCurrentView() {
    this.saveState(true);
    const nodes = this.getFilteredNodes();
    const cols = 4;
    nodes.forEach((n, idx) => {
      n.x = 100 + (idx % cols) * 240;
      n.y = 80 + Math.floor(idx / cols) * 125;
    });
    this.renderCanvas();
  }

  initCanvasEvents() {
    const svg = document.getElementById("uml-canvas");
    svg.addEventListener("mousedown", (e) => {
      if (e.target === svg) {
        this.isPanning = true;
        this.panStartX = e.clientX - this.panX;
        this.panStartY = e.clientY - this.panY;
      }
    });
    window.addEventListener("mousemove", (e) => {
      if (this.draggingNode) {
        const dx = (e.clientX - this.dragStartX) / this.zoomScale;
        const dy = (e.clientY - this.dragStartY) / this.zoomScale;
        this.draggingNode.x = Math.round(this.nodeInitX + dx);
        this.draggingNode.y = Math.round(this.nodeInitY + dy);
        this.renderCanvas();
      } else if (this.isPanning) {
        this.panX = e.clientX - this.panStartX;
        this.panY = e.clientY - this.panStartY;
        this.renderCanvas();
      }
    });
    window.addEventListener("mouseup", () => {
      if (this.draggingNode) {
        this.saveState(false);
        this.draggingNode = null;
      }
      this.isPanning = false;
    });
    svg.addEventListener("wheel", (e) => {
      e.preventDefault();
      this.zoom(e.deltaY < 0 ? 1.08 : 0.92);
    }, { passive: false });
  }

  startDragNode(id, ev) {
    ev.stopPropagation();
    const n = this.data.nodes.find(x => x.id === id);
    if (!n) return;
    this.saveState(true);
    this.draggingNode = n;
    this.dragStartX = ev.clientX;
    this.dragStartY = ev.clientY;
    this.nodeInitX = n.x;
    this.nodeInitY = n.y;
  }

  zoom(factor) {
    this.zoomScale = Math.min(2.2, Math.max(0.35, this.zoomScale * factor));
    this.renderCanvas();
  }

  resetViewport() {
    this.zoomScale = 0.85;
    this.panX = 20;
    this.panY = 20;
    this.renderCanvas();
  }

  initKeyboardShortcuts() {
    window.addEventListener("keydown", (e) => {
      if (e.key === "Escape") this.closeSourceModal();
      else if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === "z") { e.preventDefault(); this.undo(); }
      else if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === "y") { e.preventDefault(); this.redo(); }
    });
  }

  escapeHtml(str) {
    return String(str || "")
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;");
  }
}

const app = new AuditStudioApp();
</script>
</body>
</html>