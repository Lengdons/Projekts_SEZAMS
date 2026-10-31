$Base = "https://liepaja-sez.lv"
$Files = @(
  "favicon.ico",
  "css/jarallax.min.css", "css/bootstrap.min.css", "css/main.css",
  "css/block/banner/animate.min.css", "css/block/banner/glide.core.min.css",
  "css/block/banner/glide.theme.min.css", "css/block/banner/main.css",
  "css/block/magnet/main.css", "css/block/index/main.css", "css/block/news_three/main.css",
  "cc/dist/cookieconsent.css",
  "js/jarallax.min.js", "js/bootstrap.bundle.min.js", "js/main.js",
  "js/block/banner/glide.min.js", "js/block/banner/main.js",
  "js/block/magnet/main.js", "js/block/index/main.js",
  "cc/src/cookieconsent.js", "cc/demo/app2.js",
  "img/logo.svg", "img/logo-white.svg", "img/round-right.svg", "img/bg2.svg",
  "img/FB.svg", "img/TW.svg", "img/IG.svg", "img/YT.svg", "img/IN.svg", "img/flickr.svg", "img/cc.svg",
  "img/mod/magnet/35/1709199402_VALDEs_seede.svg",
  "img/block/banner/25/1695811369_HEADER_HD_razoshana.webp",
  "img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp",
  "img/block/banner/23/1695811334_HEADER_HD_osta.webp",
  "img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp",
  "img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp",
  "img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp",
  "img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp",
  "img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp",
  "img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp"
)

foreach ($f in $Files) {
    $dir = Split-Path $f -Parent
    if ($dir -and !(Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
    Invoke-WebRequest -Uri "$Base/$f" -OutFile $f -ErrorAction SilentlyContinue
}