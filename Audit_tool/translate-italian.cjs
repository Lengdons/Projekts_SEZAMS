const fs = require('node:fs');
const path = require('node:path');
const root = path.resolve(__dirname, '..');
const sourceRoot = path.join(root, 'site/lv');
const targetRoot = path.join(root, 'site/it');
const cachePath = path.join(__dirname, 'italian-translations.json');
const cache = fs.existsSync(cachePath) ? JSON.parse(fs.readFileSync(cachePath, 'utf8')) : {};
const mode = process.argv[2] || 'inventory';
if (mode === 'write') Object.assign(cache, {
  'Sākums': 'Home', 'Sākums » SEZ': 'Home » ZES', 'Liepājas SEZ': 'ZES di Liepāja',
  'Liepājas speciālās ekonomiskās zonas pārvalde': 'Autorità della Zona Economica Speciale di Liepāja',
  'Fēniksa iela 4, Liepāja,': 'Fēniksa iela 4, Liepāja,', 'LV-3401, Latvija': 'LV-3401, Lettonia',
  'Investē Liepājā': 'Investire a Liepāja', 'Osta': 'Porto', 'Par ostu': 'Il porto',
  'Prāmju satiksme': 'Collegamenti in traghetto', 'Kontakti': 'Contatti', 'Dokumenti': 'Documenti',
  'Es meklēju...': 'Cerco...', 'Meklēt': 'Cerca', 'Valodas izvēle': 'Seleziona la lingua',
  'Teksta izmērs': 'Dimensione del testo', 'Kontrasts': 'Contrasto',
  'Vai informācija bija noderīga?': 'Queste informazioni sono state utili?', 'Jā': 'Sì', 'Nē': 'No',
  'Lejupielādēt': 'Scarica', 'Tālrunis:': 'Telefono:', 'E-pasts:': 'E-mail:',
  'Background image': 'Immagine di sfondo', 'Scroll up': 'Torna in alto', 'scroll-up': 'Torna in alto',
  'cookie': 'Impostazioni dei cookie', 'Toggle navigation': 'Apri o chiudi il menu',
  'Liepājas SEZ valdes sēde notiks 25. novembrī': 'La riunione del consiglio direttivo della ZES di Liepāja si terrà il 25 novembre',
  'Liepājas SEZ valdes sēde notiks 25. novembrī » SEZ': 'La riunione del consiglio direttivo della ZES di Liepāja si terrà il 25 novembre » ZES',
  'Dokumenti iesniedzami': 'I documenti devono essere presentati',
  'Liepājas speciālās ekonomiskās zonas pārvaldes biroja administratorei': 'all’amministratrice dell’ufficio dell’Autorità della Zona Economica Speciale di Liepāja',
  'Fēniksa iela 4, Liepāja, LV- 3401, Latvija': 'Fēniksa iela 4, Liepāja, LV-3401, Lettonia',
  'Tel. Nr.': 'Tel.',
  'lv': 'it', 'en': 'en', 'de': 'de', 'fr': 'fr', 'it': 'it',
});
const entities = {nbsp:'\u00a0',amp:'&',quot:'"',apos:"'",lt:'<',gt:'>',ndash:'–',mdash:'—',laquo:'«',raquo:'»',hellip:'…',copy:'©',euro:'€',bull:'•',rsquo:'’',lsquo:'‘',rdquo:'”',ldquo:'“',scaron:'š',Scaron:'Š'};
function decode(s) { return s.replace(/&(#x[\da-f]+|#\d+|\w+);/gi, (all,k) => k[0]==='#' ? String.fromCodePoint(k[1].toLowerCase()==='x'?parseInt(k.slice(2),16):Number(k.slice(1))) : entities[k] ?? all); }
function encode(s, quote) { let out=s.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'); return quote ? out.replace(/"/g,'&quot;').replace(/'/g,'&#39;') : out; }
function keyOf(s) { return decode(s).replace(/\s+/g,' ').trim(); }
function translatable(s) { return /\p{L}/u.test(s) && !/^(?:https?:|mailto:|tel:|www\.|[\w.+-]+@)/i.test(s) && !/^[@\d\s.,:;()/%+–—-]+$/.test(s); }
const strings = new Set();
function translated(s, quote=false) {
  const key=keyOf(s);
  if (!translatable(key)) return s;
  strings.add(key);
  if (mode!=='write') return s;
  if (!cache[key]) throw new Error('Missing translation: '+key.slice(0,120));
  return (decode(s).match(/^\s*/)||[''])[0]+encode(cache[key],quote)+(decode(s).match(/\s*$/)||[''])[0];
}
function transform(content) {
  return content.replace(/<\?(?:php|=)?[\s\S]*?\?>|<!--[\s\S]*?-->|<script\b[^>]*>[\s\S]*?<\/script\s*>|<style\b[^>]*>[\s\S]*?<\/style\s*>|<(?:[^>"']|"[^"]*"|'[^']*')+>|[^<]+/gi, token=>{
    if (/^<\?|^<!--|^<script\b|^<style\b/i.test(token)) return token;
    if (token[0]!=='<') return translated(token);
    const isMeta=/^<meta\b/i.test(token) && /(?:name|property)\s*=\s*["'](?:description|og:title|og:description|og:site_name|twitter:title|twitter:description)["']/i.test(token);
    return token.replace(/\b(alt|title|placeholder|aria-label|content)\s*=\s*(["'])(.*?)\2/gi,(all,name,q,value)=>{
      if (name.toLowerCase()==='content'&&!isMeta) return all;
      return name+'='+q+translated(value,true)+q;
    });
  });
}
function walk(dir) { return fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]); }
const files=walk(sourceRoot);
const homepage=path.join(root,'site/index.php');
for (const file of [...files,homepage]) transform(fs.readFileSync(file,'utf8'));
const cookieSource=fs.readFileSync(path.join(root,'site/cc/demo/app2__251c29cb24.js'),'utf8');
let cookieConfig;
require('node:vm').runInNewContext(cookieSource,{lang:'lv',initCookieConsent:()=>({run:c=>cookieConfig=c}),document:{getElementById:()=>null},window:{}});
function cookieTranslate(value, key='') {
  if(Array.isArray(value)) return value.map(v=>cookieTranslate(v));
  if(value && typeof value==='object') return Object.fromEntries(Object.entries(value).map(([k,v])=>[k,cookieTranslate(v,k)]));
  if(typeof value==='string' && !['role','value','col1','col2'].includes(key)) return localize(transform(value));
  return value;
}
cookieTranslate(cookieConfig.languages.lv);
for(const header of cookieConfig.languages.lv.settings_modal.cookie_table_headers) for(const value of Object.values(header)) translated(value);
if(mode==='inventory') { console.log(JSON.stringify({files:files.length,uniqueStrings:strings.size,characters:[...strings].reduce((n,s)=>n+s.length,0),cached:Object.keys(cache).length})); fs.writeFileSync(path.join(__dirname,'italian-source-strings.json'),JSON.stringify([...strings],null,2)); }
async function request(text) {
  const uri='https://translate.googleapis.com/translate_a/single?client=dict-chrome-ex&sl=lv&tl=it&dt=t&q='+encodeURIComponent(text);
  const r=await fetch(uri,{signal:AbortSignal.timeout(45000)});
  if(!r.ok) throw new Error('Translation HTTP '+r.status);
  const data=await r.json();
  const out=data[0]?.map(x=>x[0]||'').join('');
  if(!out) throw new Error('Empty translation');
  return out;
}
async function translateAll() {
  const pending=[...strings].filter(s=>!cache[s]);
  const batches=[]; let batch=[];let size=0;
  for(const s of pending) { if(size+s.length>2400&&batch.length) {batches.push(batch);batch=[];size=0;}batch.push(s);size+=s.length+1;}if(batch.length)batches.push(batch);
  let next=0,done=0;
  async function worker() {
    while(next<batches.length) {
      const entries=batches[next++];
      for(let attempt=0;;attempt++) {
        try {
          const output=await request(entries.join('\n'));
          const lines=output.split(/\n/).map(s=>s.trim()).filter(Boolean);
          if(lines.length===entries.length) entries.forEach((s,i)=>cache[s]=lines[i]);
          else for(const s of entries) cache[s]=await request(s);
          break;
        }catch(e) { if(attempt>=4)throw e; await new Promise(r=>setTimeout(r,2000*(attempt+1))); }
      }
      done++;fs.writeFileSync(cachePath,JSON.stringify(cache,null,2));
      if(done%10===0||done===batches.length)console.log('Translated batches '+done+'/'+batches.length+'; strings '+Object.keys(cache).length);
    }
  }
  await Promise.all([worker(),worker()]);
}
function localize(content) {
  return content.replace(/\/lv\//g,'/it/').replace(/\blvnavbar\.php\b/g,'itnavbar.php').replace(/(<html\b[^>]*\blang\s*=\s*["'])lv(["'])/gi,'$1it$2').replace(/(\bvar\s+lang\s*=\s*["'])lv(["'])/g,'$1it$2');
}
function writeAll() {
  fs.mkdirSync(targetRoot,{recursive:true});
  for(const file of files) {
    const rel=path.relative(sourceRoot,file).replace(/^lvnavbar\.php$/,'itnavbar.php');
    const target=path.join(targetRoot,rel);fs.mkdirSync(path.dirname(target),{recursive:true});
    fs.writeFileSync(target,localize(transform(fs.readFileSync(file,'utf8'))));
  }
  let home=localize(transform(fs.readFileSync(homepage,'utf8'))).replace("'/it/itnavbar.php'","'/itnavbar.php'");
  home=home.replace('content="https://liepaja-sez.lv/" property="og:url"','content="https://liepaja-sez.lv/it/" property="og:url"');
  home=home.replace(/\b(href|src)=(['"])(?!https?:|\/|#|mailto:|tel:|data:)([^'"<>]+)\2/gi,(all,attr,q,url)=>attr+'='+q+'../'+url+q);
  fs.writeFileSync(path.join(targetRoot,'index.php'),home);
  const locale=cookieTranslate(cookieConfig.languages.lv);
  locale.settings_modal.cookie_table_headers=cookieConfig.languages.lv.settings_modal.cookie_table_headers.map(h=>Object.fromEntries(Object.entries(h).map(([k,v])=>[k,translated(v)])));
  fs.writeFileSync(path.join(targetRoot,'cookieconsent.js'),cookieSource.replace(/languages\s*:\s*\{/, 'languages: {\n        it: '+JSON.stringify(locale)+','));
  for(const file of walk(targetRoot)) if(file!==path.join(targetRoot,'cookieconsent.js')) {
    let content=fs.readFileSync(file,'utf8');
    content=content.replace(/(?:https:\/\/liepaja-sez\.lv\/|(?:\.\.\/)+|\/site\/)?cc\/demo\/app2(?:__251c29cb24)?\.js(?:\?v=6)?/g,'/site/it/cookieconsent.js');
    fs.writeFileSync(file,content);
  }
  console.log('Wrote '+(files.length+1)+' Italian files.');
}
if(mode==='translate')translateAll().catch(e=>{console.error(e);process.exitCode=1;});
if(mode==='write')writeAll();
