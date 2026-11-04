const fs=require('node:fs');
const path=require('node:path');
const {spawnSync}=require('node:child_process');
const root=path.resolve(__dirname,'..');
const site=path.join(root,'site');
function walk(dir) {return fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]);}
function assert(value,message) {if(!value)throw new Error(message);}
if(process.argv[2]==='integrate') {
  for(const lang of ['lv','en','de','fr','it']) {
    const file=path.join(site,lang,lang+'navbar.php');
    let text=fs.readFileSync(file,'utf8');
    if(lang==='it')text=text.replace(/<li><a class="dropdown-item" href="<\?= htmlspecialchars\(\$itLink\) \?>">it<\/a><\/li>/g,'');
    text=text.replace(/(<ul\b[^>]*aria-labelledby="language-controls[12]"[^>]*>)([\s\S]*?)(<\/ul>)/g,(all,start,body,end)=>{
      const added=lang==='it'?'lv':'it';
      if(body.includes('htmlspecialchars($'+added+'Link)'))return all;
      return start+body+'<li><a class="dropdown-item" href="<?= htmlspecialchars($'+added+'Link) ?>">'+added+'</a></li>'+end;
    });
    if(lang==='it')text=text.replace(/href="\/site\/index\.php"/g,'href="/site/it/index.php"').replace(/(class="nav-link active" href=")index\.php"/,'$1/site/it/index.php"');
    fs.writeFileSync(file,text);
  }
  console.log('Italian language integrated into desktop and mobile navigation.');
  process.exit(0);
}
const source=walk(path.join(site,'lv'));
const italian=walk(path.join(site,'it'));
for(const file of source) {
  const rel=path.relative(path.join(site,'lv'),file).replace(/^lvnavbar\.php$/,'itnavbar.php');
  const target=path.join(site,'it',rel);
  assert(fs.existsSync(target),'Missing Italian copy '+rel);
  if(rel==='itnavbar.php')continue;
  const original=fs.readFileSync(file,'utf8'),translated=fs.readFileSync(target,'utf8');
  const hrefs=s=>[...s.matchAll(/\bhref\s*=\s*(["'])(.*?)\1/g)].map(m=>m[2]);
  const expected=hrefs(original).map(s=>s.replace(/\/lv\//g,'/it/'));
  assert(JSON.stringify(expected)===JSON.stringify(hrefs(translated)),'Changed href '+rel);
  assert(!/<html\b[^>]*lang="lv"/.test(translated),'Wrong HTML language '+rel);
  assert(!/var lang="lv"/.test(translated),'Wrong JS language '+rel);
  assert(!/lvnavbar\.php/.test(translated),'Wrong navigation '+rel);
  assert(!/\/lv\//.test(translated),'Remaining Latvian route '+rel);
}
console.log('All '+source.length+' source files copied; hrefs preserved with /it/ routes.');
const phpFiles=italian.filter(f=>f.endsWith('.php')).concat([path.join(site,'language.php'),...['lv','en','de','fr'].map(l=>path.join(site,l,l+'navbar.php'))]);
const syntax=spawnSync('php',['-n','-r',"foreach (json_decode(file_get_contents('php://stdin'), true) as $file) { try { token_get_all(file_get_contents($file), TOKEN_PARSE); } catch (ParseError $e) { fwrite(STDERR, $file . ': ' . $e->getMessage()); exit(1); } }"],{input:JSON.stringify(phpFiles),encoding:'utf8'});
assert(syntax.status===0,'PHP syntax error '+syntax.stdout+syntax.stderr);
console.log('PHP syntax passed: '+phpFiles.length+' files.');
for(const route of ['/site/it/','/site/it/index.php','/site/it/kontakti/index.php','/site/lv/kontakti/index.php','/site/fr/kontakti/index.php']) {
 const result=spawnSync('php',['-n','-r',"$_SERVER['REQUEST_URI']="+JSON.stringify(route)+"; require 'site/language.php'; echo json_encode([$lvLink,$enLink,$deLink,$frLink,$itLink]);"],{cwd:root,encoding:'utf8'});
 assert(result.status===0,'Language routing failed '+result.stderr);
 const links=JSON.parse(result.stdout),home=/^\/site\/it\/(?:index.php)?$/.test(route);
 const suffix=home?'index.php':'kontakti/index.php';
 assert(links[4]==='/site/it/'+suffix,'Wrong Italian link '+route);
 assert(links[0]===(home?'/site/index.php':'/site/lv/'+suffix),'Wrong Latvian return link '+route);
}
for(const lang of ['lv','en','de','fr','it']) {
 const text=fs.readFileSync(path.join(site,lang,lang+'navbar.php'),'utf8');
 assert((text.match(new RegExp('htmlspecialchars\\(\\$'+(lang==='it'?'lv':'it')+'Link\\)','g'))||[]).length===2,'Language selection missing in '+lang);
}
console.log('Desktop/mobile language menus and homepage/deep-page language routing passed.');
const render=spawnSync('php',['-n','-r',"$_SERVER['REQUEST_URI']='/site/it/'; require 'site/it/itnavbar.php';"],{cwd:root,encoding:'utf8'});
assert(render.status===0,'Italian navbar rendering failed '+render.stderr);
for(const lang of ['lv','en','de','fr']) {
  const url=lang==='lv'?'/site/index.php':'/site/'+lang+'/index.php';
  assert(render.stdout.includes('href="'+url+'">'+lang+'</a>'),'Broken rendered language option '+lang);
}
assert(!render.stdout.includes('&gt;'),'Escaped HTML delimiter in rendered navbar');
console.log('Rendered Italian navigation contains all four working language options.');
const cookie=fs.readFileSync(path.join(site,'it/cookieconsent.js'),'utf8');let config;
require('node:vm').runInNewContext(cookie,{lang:'it',initCookieConsent:()=>({run:c=>config=c}),document:{getElementById:()=>null},window:{}});
assert(config.languages.it && config.current_lang==='it','Italian cookies missing');
console.log('Italian cookie configuration passed.');
