<?php
$path = parse_url($_SERVER['REQUEST_URI'] ?? '/site/nl/', PHP_URL_PATH) ?: '/site/nl/';
$isHome = (bool) preg_match('#^/site/(?:(?:lv|en|de|fr|it|es|nl)/)?(?:index\.php)?$#', $path);
foreach (['lv', 'en', 'de', 'fr', 'it', 'es', 'nl'] as $code) {
    ${$code . 'Link'} = $isHome
        ? ($code === 'lv' ? '/site/index.php' : '/site/' . $code . '/index.php')
        : preg_replace('#^/site/(lv|en|de|fr|it|es|nl)/#', '/site/' . $code . '/', $path);
}
?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">X</div>
<script defer src="/site/js/search.js"></script>
<form action="/site/nl/" id="search-form" method="get" target="_top">
<input type="hidden" name="lang" value="nl">
<input id="search-text" name="search" placeholder="Ik zoek..." type="text"/>
<button id="search-button" type="submit">
<span>Zoeken</span>
</button>
</form>
</div>
</div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light b-2 fixed-top color-border">
<div class="container align-items-end position-relative nav-container">
<ul class="controls d-none d-lg-block">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown font-controls">
<a aria-expanded="false" aria-label="Tekstgrootte" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls1">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls1" class="dropdown-menu text-center font-size">
<li><a class="dropdown-item" data-size="14" href="index.php">75%</a></li>
<li><a class="dropdown-item active" data-size="15" href="index.php">100%</a></li>
<li><a class="dropdown-item" data-size="16.5" href="index.php">125%</a></li>
<li><a class="dropdown-item" data-size="17.5" href="index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls nocontrast">
<a aria-expanded="false" aria-label="Contrast" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls1">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls1" class="dropdown-menu">
<li><a class="control dropdown-item contrast-default active" data-class="blue" href="index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast1" data-class="black" href="index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast2" data-class="yellow2" href="index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast3" data-class="yellow" href="index.php"><i>A</i></a></li>
</ul>
</li>
<li class="dropdown language-controls">
    <a aria-expanded="false" aria-label="Taal kiezen"
       class="nav-link dropdown-toggle"
       data-bs-toggle="dropdown"
       href="#"
       id="language-controls1">
        nl
    </a>

    <ul aria-labelledby="language-controls1" class="dropdown-menu text-center">
        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a>
        </li>

        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li>
    <li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li></ul>
</li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/nl/index.php">
<img alt="logo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Taal kiezen" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">

											nl

										</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li><li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li><li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Menu openen of sluiten" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/nl/index.php">Home</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/nl/liepajas-sez/index.php" role="button">

									SEZ Liepāja

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/nl/investe-liepaja/index.php">Investeren in Liepāja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/nl/osta/index.php">

									Haven

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/nl/par-ostu/index.php">Over de haven</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/pramju-satiksme/index.php">Veerverbindingen</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/kruiza-kugi/index.php">Cruiseschepen</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/jahtu-osta/index.php">Jachthaven</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/oskara-kalpaka-tilts/index.php">Oskar Kalpak-brug</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="/site/nl/kapitalsabiedribas/index.php">Kapitaalbedrijven</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/attistibas-projekti/index.php">Ontwikkelingsprojecten</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/darbs-liepaja/index.php">Werk in Liepāja</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/nl/parvalde/index.php" role="button">

									Beheer

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/nl/parvaldiba/index.php">Beheer</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/korporativa-parvaldiba/index.php">Corporate governance</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/iepirkumi-un-izsoles/index.php">Inkoop en veilingen</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/nl/darbibas-parskati/index.php">

									Activiteitenrapporten

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/nl/valdes-sedes-lemumi/index.php">Beslissingen van de bestuursvergadering</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/atskaites-par-darbibu/index.php">Activiteitenrapporten</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/ostas-statistika/index.php">Havenstatistieken</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/nl/jaunumi-1/index.php" role="button">

									Nieuws

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/nl/jaunumi-1/index.php">Voor de media</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/foto/index.php">Foto</a>
</li>
<li>
<a class="dropdown-item" href="/site/nl/valdes-sedes/index.php">Bestuursvergaderingen</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="/site/nl/dokumenti/index.php">Documenten</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/nl/teritoriju-karte/index.php">Kaart van territoria</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/nl/kontakti/index.php">Contact</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Tekstgrootte" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls2">
<span>EEN</span>
<span>EEN</span>
<span>EEN</span>
</a>
<ul aria-labelledby="font-controls2" class="text-center font-size">
<li><a class="" data-size="14" href="index.php">75%</a></li>
<li><a class="active" data-size="15" href="index.php">100%</a></li>
<li><a class="" data-size="16.5" href="index.php">125%</a></li>
<li><a class="" data-size="17.5" href="index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Contrast" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls2">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls2" class="">
<li><a class="control contrast-default active" data-class="blue" href="index.php"><i>EEN</i></a></li>
<li><a class="control contrast1" data-class="black" href="index.php"><i>EEN</i></a></li>
<li><a class="control contrast2" data-class="yellow2" href="index.php"><i>EEN</i></a></li>
<li><a class="control contrast3" data-class="yellow" href="index.php"><i>EEN</i></a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>
