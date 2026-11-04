<?php require_once __DIR__ . '/../language.php'; ?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">X</div>
<form action="#" id="search-form" method="get" target="_top">
<input id="search-text" name="q" placeholder="Cerco..." type="text"/>
<button id="search-button" type="submit">
<span>Cerca</span>
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
<a aria-expanded="false" aria-label="Dimensione del testo" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls1">
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
<a aria-expanded="false" aria-label="Contrasto" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls1">
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
    <a aria-expanded="false" aria-label="Seleziona la lingua"
       class="nav-link dropdown-toggle"
       data-bs-toggle="dropdown"
       href="#"
       id="language-controls1">
        it
    </a>

    <ul aria-labelledby="language-controls1" class="dropdown-menu text-center">
        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a>
        </li>

        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li>
    <li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li></ul>
</li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/it/index.php">
<img alt="logo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Seleziona la lingua" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">

											it

										</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li><li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li><li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Apri o chiudi il menu" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/it/index.php">Home</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/it/liepajas-sez/index.php" role="button">

									ZES di Liepāja

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/it/investe-liepaja/index.php">Investire a Liepāja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/it/osta/index.php">

									Porto

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/it/par-ostu/index.php">Il porto</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/pramju-satiksme/index.php">Collegamenti in traghetto</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/kruiza-kugi/index.php">Navi da crociera</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/jahtu-osta/index.php">Porto degli yacht</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/oskara-kalpaka-tilts/index.php">Ponte Oskar Kalpak</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="/site/it/kapitalsabiedribas/index.php">Società di capitali</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/attistibas-projekti/index.php">Progetti di sviluppo</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/darbs-liepaja/index.php">Lavorare a Liepāja</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/teritoriju-karte/index.php">Mappa dei territori</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/it/parvalde/index.php" role="button">

									Gestione

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/it/parvaldiba/index.php">Gestione</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/korporativa-parvaldiba/index.php">Governo societario</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/iepirkumi-un-izsoles/index.php">Appalti e aste</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/it/darbibas-parskati/index.php">

									Rapporti di attività

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/it/valdes-sedes-lemumi/index.php">Decisioni del consiglio direttivo</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/atskaites-par-darbibu/index.php">Rapporti di attività</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/ostas-statistika/index.php">Statistiche portuali</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/it/jaunumi-1/index.php" role="button">

									Novità

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/it/jaunumi-1/index.php">Per i media</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/foto/index.php">Foto</a>
</li>
<li>
<a class="dropdown-item" href="/site/it/valdes-sedes/index.php">Riunioni del consiglio</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="/site/it/dokumenti/index.php">Documenti</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/it/kontakti/index.php">Contatti</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Dimensione del testo" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls2">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls2" class="text-center font-size">
<li><a class="" data-size="14" href="index.php">75%</a></li>
<li><a class="active" data-size="15" href="index.php">100%</a></li>
<li><a class="" data-size="16.5" href="index.php">125%</a></li>
<li><a class="" data-size="17.5" href="index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Contrasto" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls2">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls2" class="">
<li><a class="control contrast-default active" data-class="blue" href="index.php"><i>A</i></a></li>
<li><a class="control contrast1" data-class="black" href="index.php"><i>A</i></a></li>
<li><a class="control contrast2" data-class="yellow2" href="index.php"><i>A</i></a></li>
<li><a class="control contrast3" data-class="yellow" href="index.php"><i>A</i></a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>