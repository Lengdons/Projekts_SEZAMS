const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');

const root = path.resolve(__dirname, '../..');
const implementation = fs.readFileSync(path.join(root, 'site/js/lsez-industrial-models.js'), 'utf8');
function load(locale) {
  const source = fs.readFileSync(path.join(root, `site/${locale}/teritoriju-karte/lsez-map.php`), 'utf8');
  const json = source.match(/<script[^>]*id="atlas-regional-geodata"[^>]*>([\s\S]*?)<\/script>/)[1];
  const regions = source.match(/<script[^>]*id="atlas-region-data"[^>]*>([\s\S]*?)<\/script>/)[1];
  const setup = source.slice(source.indexOf('// Only buildings inside'), source.indexOf('const catalog=new Map();'));
  const context = vm.createContext({window: {}});
  vm.runInContext(implementation, context);
  return vm.runInContext(`const GEO=${json},REGIONS=${regions};${setup};({data:GEO,models:window.LSEZIndustrialModels})`, context);
}
const area = points => Math.abs(points.reduce((sum, a, i) => {
  const b = points[(i + 1) % points.length]; return sum + a[0] * b[1] - b[0] * a[1];
}, 0)) / 2;

test('roof slopes cover every retained LIP footprint without gaps or duplicate surfaces', () => {
  const {data, models} = load('lv');
  assert.equal(data.lip.buildings.features.length, 50);
  for (const building of data.lip.buildings.features) {
    const faces = models.build(building);
    assert.ok(faces.length > 0, building.properties.id);
    for (const face of faces) {
      assert.ok(face.vertices.flat().every(Number.isFinite));
      assert.ok(face.color.every(c => c >= 0 && c <= 1));
      assert.equal(face.id, building.properties.id);
    }
    const eaves = building.properties.modelProfile.eaves;
    const roofArea = faces.filter(f => !f.detail && f.vertices.every(v => v[2] >= eaves - 1e-7)).reduce((sum, f) => sum + area(f.vertices), 0);
    const ring = building.geometry.coordinates[0];
    const origin = models.origin, kx = 111320 * Math.cos(origin[1] * Math.PI / 180);
    const footprint = area(ring.map(p => [(p[0] - origin[0]) * kx, (p[1] - origin[1]) * 111195]));
    assert.ok(Math.abs(roofArea - footprint) < .01, `${building.properties.id}: roof ${roofArea} vs footprint ${footprint}`);
    assert.strictEqual(models.build(building), faces, 'geometry is cached');
  }
});

test('SVG keeps all surfaces in one accessible, clickable building and can disable interaction', () => {
  const {data, models} = load('lv'), building = data.lip.buildings.features[0];
  const options = {selected: false, clickable: true, esc: String, coords: ps => ps.map(p => p.join(',')).join(' ')};
  const markup = models.svg(building, (p, z) => [p[0], p[1] - z], options);
  assert.equal((markup.match(/data-map-object=/g) || []).length, 1);
  assert.match(markup, /role="button"/);
  assert.ok((markup.match(/<polygon/g) || []).length > 10);
  assert.doesNotMatch(models.svg(building, (p, z) => [p[0], p[1] - z], {...options, clickable: false}), /data-map-object|role="button"/);
});

test('all seven locales use the same models, disclose approximation and leave outside buildings inactive', () => {
  for (const locale of ['lv', 'en', 'de', 'fr', 'es', 'it', 'nl']) {
    const {data, models} = load(locale), buildings = data.lip.buildings.features;
    assert.equal(buildings.length, 50);
    const ids = new Set(buildings.map(f => f.properties.id));
    for (const building of buildings) {
      assert.equal(building.properties.modelProfile.approximate, true);
      assert.ok(building.properties.geometryNote.length > 100);
      assert.ok(!building.properties.geometryNote.includes('fas?de'));
      assert.ok(models.build(building).length > 0);
    }
    assert.ok(data.lip.context.features.some(f => f.properties.kind === 'building' && !f.properties.objectId));
    assert.ok(data.lip.context.features.every(f => !f.properties.objectId || ids.has(f.properties.objectId)));
    assert.ok(data.northside.buildings.features.every(f => !f.properties.modelProfile));
  }
});
