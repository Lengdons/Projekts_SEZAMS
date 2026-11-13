/* Liepaja Industrial Park: lightweight, reference-informed architectural studies.
 * Footprints: the atlas OSM extract. Roofs, materials and facade details are
 * approximate, not a survey or a reconstruction of Google's 3D mesh.
 * Visual references: https://www.liepaja.lv/apstiprinats-liepajas-metalurga-teritorijas-lokalplanojums-videi-draudziga-industriala-parka-izveidei/
 * https://liepaja-sez.lv/lv/jaunumi-1/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3/
 */
(function (global) {
  'use strict';
  const ORIGIN = [21.0415, 56.525];
  const KX = 111320 * Math.cos(ORIGIN[1] * Math.PI / 180), KY = 111195;
  const cache = new WeakMap();
  const local = p => [(p[0] - ORIGIN[0]) * KX, (p[1] - ORIGIN[1]) * KY];
  const geographic = p => [ORIGIN[0] + p[0] / KX, ORIGIN[1] + p[1] / KY];
  const cross = (a, b, c) => (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]);
  const rgb = hex => hex.match(/[a-f\d]{2}/gi).map(c => parseInt(c, 16) / 255);
  const mix = (a, b, amount) => a.map((c, i) => c * (1 - amount) + b[i] * amount);
  function triangles(points) {
    let polygon = points.map((_, i) => i), result = [];
    const area = points.reduce((sum, p, i) => {
      const q = points[(i + 1) % points.length]; return sum + p[0] * q[1] - q[0] * p[1];
    }, 0);
    if (area < 0) polygon.reverse();
    for (let guard = points.length * points.length; polygon.length > 3 && guard-- > 0;) {
      let found = false;
      for (let j = 0; j < polygon.length; j++) {
        const a = polygon[(j + polygon.length - 1) % polygon.length], b = polygon[j], c = polygon[(j + 1) % polygon.length];
        if (cross(points[a], points[b], points[c]) <= 1e-7) continue;
        if (polygon.some(i => i !== a && i !== b && i !== c && cross(points[a], points[b], points[i]) >= -1e-7 && cross(points[b], points[c], points[i]) >= -1e-7 && cross(points[c], points[a], points[i]) >= -1e-7)) continue;
        result.push([points[a], points[b], points[c]]); polygon.splice(j, 1); found = true; break;
      }
      if (!found) break;
    }
    if (polygon.length === 3) result.push(polygon.map(i => points[i]));
    return result;
  }
  function clip(points, axis, limit, above) {
    const out = [], value = p => p[0] * axis[0] + p[1] * axis[1] - limit;
    for (let i = 0; i < points.length; i++) {
      const a = points[i], b = points[(i + 1) % points.length], da = value(a), db = value(b);
      const ia = above ? da >= -1e-7 : da <= 1e-7, ib = above ? db >= -1e-7 : db <= 1e-7;
      if (ia) out.push(a);
      if (ia !== ib) { const t = da / (da - db); out.push([a[0] + t * (b[0] - a[0]), a[1] + t * (b[1] - a[1])]); }
    }
    return out;
  }
  function build(feature) {
    if (cache.has(feature)) return cache.get(feature);
    const p = feature.properties, faces = [];
    const profile = p.modelProfile || {};
    const wall = rgb(profile.wall || (p.area > 1000 ? '#a78f71' : '#c3b6a0'));
    const roof = rgb(profile.roof || '#828b8c');
    const height = profile.eaves || Number(p.height) || 7;
    const rings = feature.geometry.type === 'MultiPolygon' ? feature.geometry.coordinates : [feature.geometry.coordinates];
    const face = (vertices, color, detail = false) => {
      if (vertices.length < 3) return;
      const [a, b, c] = vertices;
      const u = b.map((v, i) => v - a[i]), v = c.map((x, i) => x - a[i]);
      const normal = [u[1] * v[2] - u[2] * v[1], u[2] * v[0] - u[0] * v[2], u[0] * v[1] - u[1] * v[0]];
      const length = Math.hypot(...normal);
      if (length < 1e-6) return;
      const shade = detail ? 1 : .73 + .27 * Math.abs((normal[0] * -.4 + normal[1] * -.5 + normal[2] * .76) / length);
      faces.push({vertices, color: color.map(c => c * shade), detail, id: p.id});
    };
    for (const ringset of rings) {
      // The supplied LIP footprints have no interior holes. Leave unusual geometry
      // in the ordinary extrusion layer rather than filling a courtyard.
      if (ringset.length > 1) continue;
      let ring = ringset[0].map(local);
      if (Math.hypot(ring[0][0] - ring.at(-1)[0], ring[0][1] - ring.at(-1)[1]) < .01) ring.pop();
      const signed = ring.reduce((s, a, i) => { const b = ring[(i + 1) % ring.length]; return s + a[0] * b[1] - b[0] * a[1]; }, 0);
      if (signed < 0) ring.reverse();
      let longest = 0, direction = [1, 0];
      for (let i = 0; i < ring.length; i++) {
        const a = ring[i], b = ring[(i + 1) % ring.length], length = Math.hypot(b[0] - a[0], b[1] - a[1]);
        if (length > longest) { longest = length; direction = [(b[0] - a[0]) / length, (b[1] - a[1]) / length]; }
      }
      const axis = [-direction[1], direction[0]], values = ring.map(a => a[0] * axis[0] + a[1] * axis[1]);
      const low = Math.min(...values), high = Math.max(...values), width = high - low;
      const bays = profile.type === 'multi-bay' ? Math.max(2, Math.min(5, Math.round(width / 24))) : 1;
      const pitched = profile.type === 'gable' || profile.type === 'multi-bay';
      const rise = pitched ? Math.min(profile.rise || 3, width / bays * .2) : 0;
      const bayWidth = width / bays;
      const z = point => {
        if (!rise) return height;
        const t = Math.max(0, Math.min(bays - 1e-7, (point[0] * axis[0] + point[1] * axis[1] - low) / bayWidth));
        return height + rise * (1 - Math.abs((t % 1) * 2 - 1));
      };
      // Split the real outline into planar roof slopes, including irregular halls.
      const base = triangles(ring);
      for (const triangle of base) {
        if (!rise) { face(triangle.map(a => [...a, height]), roof); continue; }
        for (let half = 0; half < bays * 2; half++) {
          const a = low + half * bayWidth / 2, b = a + bayWidth / 2;
          const piece = clip(clip(triangle, axis, a, true), axis, b, false);
          face(piece.map(v => [...v, z(v)]), half % 2 ? mix(roof, [.25, .29, .3], .12) : roof);
        }
      }
      for (let i = 0; i < ring.length; i++) {
        const a = ring[i], b = ring[(i + 1) % ring.length], dx = b[0] - a[0], dy = b[1] - a[1], length = Math.hypot(dx, dy);
        if (length < .1) continue;
        const outside = [dy / length * .08, -dx / length * .08];
        const at = (t, h, offset = 0) => [a[0] + dx * t + outside[0] * offset, a[1] + dy * t + outside[1] * offset, h];
        face([at(0, 0), at(1, 0), at(1, height), at(0, height)], wall);
        face([at(0, .1, 1), at(1, .1, 1), at(1, .7, 1), at(0, .7, 1)], rgb('#777e78'));
        // Gable infill follows every roof ridge crossed by this facade.
        const va = a[0] * axis[0] + a[1] * axis[1], vb = b[0] * axis[0] + b[1] * axis[1];
        const stops = [0, 1];
        if (Math.abs(vb - va) > .01 && rise) for (let j = 0; j <= bays * 2; j++) {
          const t = (low + j * bayWidth / 2 - va) / (vb - va); if (t > 0 && t < 1) stops.push(t);
        }
        stops.sort((a, b) => a - b);
        for (let j = 1; j < stops.length; j++) {
          const x = stops[j - 1], y = stops[j];
          face([at(x, height), at(y, height), at(y, z(at(y, 0))), at(x, z(at(x, 0)))], wall);
        }
        if (length < 9) continue;
        const n = Math.min(30, Math.floor(length / 6)), windowTop = Math.min(height - 1.3, 7.8), windowBottom = Math.max(2, windowTop - 1.7);
        for (let j = 0; j < n; j++) {
          const t = (j + .5) / n, half = Math.min(1.6 / length, .3 / n);
          if (windowTop > windowBottom) face([at(t - half, windowBottom, 2), at(t + half, windowBottom, 2), at(t + half, windowTop, 2), at(t - half, windowTop, 2)], rgb('#586d72'), true);
          // Regular structural piers, rather than a noisy full texture.
          const rib = .17 / length;
          face([at(t - rib, .8, 1), at(t + rib, .8, 1), at(t + rib, height, 1), at(t - rib, height, 1)], mix(wall, [.85, .84, .78], .35));
        }
        if (length > 25 && p.area > 300) {
          const half = 2 / length, t = .17;
          face([at(t - half, .7, 3), at(t + half, .7, 3), at(t + half, Math.min(4.8, height - 1), 3), at(t - half, Math.min(4.8, height - 1), 3)], rgb('#66716e'), true);
        }
      }
    }
    cache.set(feature, faces); return faces;
  }
  function svg(feature, project, options) {
    const {selected, clickable, esc, coords} = options;
    const projected = build(feature).map(f => {
      const points = f.vertices.map(v => project(geographic(v), v[2]));
      const depth = f.vertices.reduce((sum, v) => sum + project(geographic(v), 0)[1] + v[2] * .02, 0) / f.vertices.length;
      return {f, points, depth};
    }).sort((a, b) => a.depth - b.depth || Number(a.f.detail) - Number(b.f.detail));
    const interaction = clickable ? `class="parcel-shape industrial-model" tabindex="0" role="button" data-map-object="${esc(feature.properties.id)}" aria-label="${esc(feature.properties.name)}"` : 'class="industrial-model"';
    let out = `<g ${interaction}><title>${esc(feature.properties.name)}</title>`;
    for (const {f, points} of projected) {
      const c = selected ? mix(f.color, rgb('#d6ad63'), .35) : f.color;
      const color = '#' + c.map(v => Math.round(v * 255).toString(16).padStart(2, '0')).join('');
      out += `<polygon points="${coords(points)}" fill="${color}" stroke="${color}" stroke-width=".35"/>`;
    }
    return out + '</g>';
  }
  function createLayer(getState, library) {
    let map, gl, program, buffer, vao, count = 0, mesh = [], lastKey = '', matrix, pickFaces = null;
    const origin = library.MercatorCoordinate.fromLngLat(ORIGIN, 0), units = origin.meterInMercatorCoordinateUnits();
    const layer = {
      id: 'lip-architectural-models', type: 'custom', renderingMode: '3d',
      onAdd(m, context) {
        map = m; gl = context;
        const shader = (type, source) => { const s = gl.createShader(type); gl.shaderSource(s, source); gl.compileShader(s); if (!gl.getShaderParameter(s, gl.COMPILE_STATUS)) throw Error(gl.getShaderInfoLog(s)); return s; };
        const vs = shader(gl.VERTEX_SHADER, '#version 300 es\nin vec3 a_pos;in vec3 a_color;uniform mat4 u_matrix;out vec3 v_color;void main(){gl_Position=u_matrix*vec4(a_pos,1.0);v_color=a_color;}');
        const fs = shader(gl.FRAGMENT_SHADER, '#version 300 es\nprecision mediump float;in vec3 v_color;out vec4 color;void main(){color=vec4(v_color,1.0);}');
        program = gl.createProgram(); gl.attachShader(program, vs); gl.attachShader(program, fs); gl.linkProgram(program);
        gl.deleteShader(vs); gl.deleteShader(fs);
        if (!gl.getProgramParameter(program, gl.LINK_STATUS)) throw Error(gl.getProgramInfoLog(program));
        buffer = gl.createBuffer(); vao = gl.createVertexArray();
        gl.bindVertexArray(vao); gl.bindBuffer(gl.ARRAY_BUFFER, buffer);
        for (const [name, offset] of [['a_pos', 0], ['a_color', 12]]) { const a = gl.getAttribLocation(program, name); gl.enableVertexAttribArray(a); gl.vertexAttribPointer(a, 3, gl.FLOAT, false, 24, offset); }
        gl.bindVertexArray(null);
      },
      render(context, args) {
        const state = getState();
        if (!state.enabled) { matrix = null; pickFaces = null; return; }
        const key = state.features.map(f => f.properties.id + (state.matched.has(f.properties.id) ? '+' : '-')).join(',') + state.selected;
        if (key !== lastKey) {
          mesh = state.features.flatMap(feature => build(feature)); const data = [];
          for (const f of mesh) {
            let color = f.id === state.selected ? mix(f.color, rgb('#d6ad63'), .35) : f.color;
            if (!state.matched.has(f.id)) color = mix(color, [.78, .81, .79], .6);
            for (let j = 1; j < f.vertices.length - 1; j++) for (const v of [f.vertices[0], f.vertices[j], f.vertices[j + 1]]) data.push(...v, ...color);
          }
          gl.bindBuffer(gl.ARRAY_BUFFER, buffer); gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(data), gl.STATIC_DRAW); count = data.length / 6; lastKey = key;
        }
        const base = args.defaultProjectionData.mainMatrix;
        // Multiply the origin transform on the CPU to avoid float32 precision loss.
        matrix = new Float64Array(16);
        for (let row = 0; row < 4; row++) {
          matrix[row] = base[row] * units; matrix[4 + row] = base[4 + row] * -units; matrix[8 + row] = base[8 + row] * units;
          matrix[12 + row] = base[row] * origin.x + base[4 + row] * origin.y + base[8 + row] * origin.z + base[12 + row];
        }
        gl.useProgram(program); gl.bindVertexArray(vao);
        gl.uniformMatrix4fv(gl.getUniformLocation(program, 'u_matrix'), false, new Float32Array(matrix));
        gl.enable(gl.DEPTH_TEST); gl.depthFunc(gl.LEQUAL); gl.depthMask(true); gl.disable(gl.CULL_FACE); gl.disable(gl.BLEND);
        gl.drawArrays(gl.TRIANGLES, 0, count); gl.bindVertexArray(null); pickFaces = null;
      },
      hit(point) {
        const state = getState();
        if (!matrix || !state.enabled) return null;
        const w = map.getCanvas().clientWidth, h = map.getCanvas().clientHeight;
        const project = v => {
          const q = [0, 0, 0, 0]; for (let i = 0; i < 4; i++) q[i] = matrix[i] * v[0] + matrix[4 + i] * v[1] + matrix[8 + i] * v[2] + matrix[12 + i];
          return q[3] <= 0 ? null : [(q[0] / q[3] + 1) * w / 2, (1 - q[1] / q[3]) * h / 2, q[2] / q[3]];
        };
        if (!pickFaces) pickFaces = mesh.map(face => {
          const ps = face.vertices.map(project); if (ps.some(p => !p)) return null;
          return {id: face.id, ps, minX: Math.min(...ps.map(p => p[0])), maxX: Math.max(...ps.map(p => p[0])), minY: Math.min(...ps.map(p => p[1])), maxY: Math.max(...ps.map(p => p[1]))};
        }).filter(Boolean);
        let id = null, nearest = Infinity;
        for (const face of pickFaces) {
          if (!state.matched.has(face.id)) continue;
          if (point.x < face.minX || point.x > face.maxX || point.y < face.minY || point.y > face.maxY) continue;
          const ps = face.ps;
          for (let j = 1; j < ps.length - 1; j++) {
            const [a, b, c] = [ps[0], ps[j], ps[j + 1]], area = cross(a, b, c); if (Math.abs(area) < .01) continue;
            const p = [point.x, point.y], u = cross(p, b, c) / area, v = cross(a, p, c) / area, t = 1 - u - v;
            if (u < 0 || v < 0 || t < 0) continue;
            const depth = u * a[2] + v * b[2] + t * c[2]; if (depth < nearest) { nearest = depth; id = face.id; }
          }
        }
        return id;
      },
      onRemove() { gl.deleteBuffer(buffer); gl.deleteVertexArray(vao); gl.deleteProgram(program); }
    };
    return layer;
  }
  global.LSEZIndustrialModels = {build, svg, createLayer, geographic, origin: ORIGIN};
})(window);
