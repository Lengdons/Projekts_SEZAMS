# Liepāja Industrial Park models

The atlas now renders architectural studies for the 50 building footprints retained inside its LIP territory contours. The same geometry is used by the MapLibre WebGL layer and the accessible SVG fallback. Other parks and background buildings retain their existing representation.

Visual references inspected during implementation:

- [Liepāja municipality: former steelworks aerial photograph](https://www.liepaja.lv/apstiprinats-liepajas-metalurga-teritorijas-lokalplanojums-videi-draudziga-industriala-parka-izveidei/)
- [LSEZ: Eksporta iela 3 property, published 6 October 2026](https://liepaja-sez.lv/lv/jaunumi-1/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3/)

The references inform the subdued metal/concrete palette, long industrial halls, pitched and repeated roof bays, window bands, structural piers and workshop doors. No source photographs or third-party 3D meshes are distributed with these models.

These are approximate visual studies, not individually surveyed replicas. The existing OSM footprints remain the ground geometry. Roof type, unmeasured eaves heights, materials and openings use explicit size-based assumptions in each atlas's `modelProfile` initialization. A future verified per-building profile can override those assumptions without changing either renderer. Chimneys, pipes and other structures without a verified location have not been added.

Modeled buildings retain whole-surface selection, selected-state tint, filters, building-layer visibility and keyboard selection in the SVG view. The MapLibre layer owns and releases its WebGL buffers, shaders and vertex array; meshes are cached by feature and picking geometry is cached between rendered frames.

Run geometry and integration checks from the repository root:

```powershell
node --test Audit_tool/tests/lsez-industrial-models.test.cjs
```

Browser validation used the local PHP server and headless Edge. WebGL was tested with a minimal map style to isolate local geometry from external tile availability; SVG was tested by explicitly disabling WebGL support. Both views were visually inspected. Model selection, layer hiding, 2D/3D switching and regional isolation were checked separately.
