<?php require_once __DIR__ . '/../language.php'; ?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">X</div>
<form action="#" id="search-form" method="get" target="_top">
<input id="search-text" name="q" placeholder="Ich suche ..." type="text"/>
<button id="search-button" type="submit">
<span>Suchen</span>
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
<a aria-expanded="false" aria-label="Schriftgröße" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/de/index.php" id="font-controls1">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls1" class="dropdown-menu text-center font-size">
<li><a class="dropdown-item" data-size="14" href="/site/de/index.php">75%</a></li>
<li><a class="dropdown-item active" data-size="15" href="/site/de/index.php">100%</a></li>
<li><a class="dropdown-item" data-size="16.5" href="/site/de/index.php">125%</a></li>
<li><a class="dropdown-item" data-size="17.5" href="/site/de/index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls nocontrast">
<a aria-expanded="false" aria-label="Kontrast" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/de/index.php" id="contrast-controls1">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls1" class="dropdown-menu">
<li><a class="control dropdown-item contrast-default active" data-class="blue" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast1" data-class="black" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast2" data-class="yellow2" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast3" data-class="yellow" href="/site/de/index.php"><i>A</i></a></li>
</ul>
</li>
<li class="dropdown language-controls">
    <a aria-expanded="false" aria-label="Valodas izvēle"
       class="nav-link dropdown-toggle"
       data-bs-toggle="dropdown"
       href="#"
       id="language-controls1">
        de
    </a>

    <ul aria-labelledby="language-controls1" class="dropdown-menu text-center">
        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a>
        </li>

        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a>
        </li>
    </ul>
</li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/de/index.php">
<img alt="Logo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Sprache auswählen" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">de</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Navigation umschalten" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/de/index.php">Startseite</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/de/liepajas-sez/index.php" role="button">

									Sonderwirtschaftszone Liepāja

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/de/investe-liepaja/index.php">Investieren in Liepāja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/de/osta/index.php">

									Hafen

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/de/par-ostu/index.php">Über den Hafen</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/pramju-satiksme/index.php">Fährverkehr</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/kruiza-kugi/index.php">Kreuzfahrtschiffe</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/jahtu-osta/index.php">Yachthafen</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/oskara-kalpaka-tilts/index.php">Oskars-Kalpaks-Brücke</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="/site/de/kapitalsabiedribas/index.php">Unternehmen</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/attistibas-projekti/index.php">Entwicklungsprojekte</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/darbs-liepaja/index.php">Stellenangebote in Liepāja</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/teritoriju-karte/index.php">Gebietskarte</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/de/parvalde/index.php" role="button">

									Verwaltung

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/de/parvaldiba/index.php">Unternehmensführung</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/korporativa-parvaldiba/index.php">Corporate Governance</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/iepirkumi-un-izsoles/index.php">Ausschreibungen und Versteigerungen</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/de/darbibas-parskati/index.php">

									Geschäftsberichte

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/de/valdes-sedes-lemumi/index.php">Vorstandsbeschlüsse</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/atskaites-par-darbibu/index.php">Tätigkeitsberichte</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/ostas-statistika/index.php">Hafenstatistik</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/de/jaunumi-1/index.php" role="button">

									Aktuelles

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/de/jaunumi-1/index.php">Für die Medien</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/foto/index.php">Fotos</a>
</li>
<li>
<a class="dropdown-item" href="/site/de/valdes-sedes/index.php">Vorstandssitzungen</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="/site/de/dokumenti/index.php">Dokumente</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/de/kontakti/index.php">Kontakt</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Schriftgröße" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/de/index.php" id="font-controls2">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls2" class="text-center font-size">
<li><a class="" data-size="14" href="/site/de/index.php">75%</a></li>
<li><a class="active" data-size="15" href="/site/de/index.php">100%</a></li>
<li><a class="" data-size="16.5" href="/site/de/index.php">125%</a></li>
<li><a class="" data-size="17.5" href="/site/de/index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Kontrast" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/de/index.php" id="contrast-controls2">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls2" class="">
<li><a class="control contrast-default active" data-class="blue" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control contrast1" data-class="black" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control contrast2" data-class="yellow2" href="/site/de/index.php"><i>A</i></a></li>
<li><a class="control contrast3" data-class="yellow" href="/site/de/index.php"><i>A</i></a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>