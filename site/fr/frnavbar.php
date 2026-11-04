<?php require_once __DIR__ . '/../language.php'; ?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">X</div>
<form action="#" id="search-form" method="get" target="_top">
<input id="search-text" name="q" placeholder="Je recherche…" type="text"/>
<button id="search-button" type="submit">
<span>Rechercher</span>
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
<a aria-expanded="false" aria-label="Taille du texte" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/fr/index.php" id="font-controls1">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls1" class="dropdown-menu text-center font-size">
<li><a class="dropdown-item" data-size="14" href="/site/fr/index.php">75%</a></li>
<li><a class="dropdown-item active" data-size="15" href="/site/fr/index.php">100%</a></li>
<li><a class="dropdown-item" data-size="16.5" href="/site/fr/index.php">125%</a></li>
<li><a class="dropdown-item" data-size="17.5" href="/site/fr/index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls nocontrast">
<a aria-expanded="false" aria-label="Contraste" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/fr/index.php" id="contrast-controls1">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls1" class="dropdown-menu">
<li><a class="control dropdown-item contrast-default active" data-class="blue" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast1" data-class="black" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast2" data-class="yellow2" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control dropdown-item contrast3" data-class="yellow" href="/site/fr/index.php"><i>A</i></a></li>
</ul>
</li>
<li class="dropdown language-controls">
    <a aria-expanded="false" aria-label="Choisir la langue"
       class="nav-link dropdown-toggle"
       data-bs-toggle="dropdown"
       href="#"
       id="language-controls1">fr</a>

    <ul aria-labelledby="language-controls1" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($nlLink) ?>">nl</a></li></ul>
</li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/fr/index.php">
<img alt="logo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Choisir la langue" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">fr</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($esLink) ?>">es</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($nlLink) ?>">nl</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Basculer la navigation" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/fr/index.php">Accueil</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/fr/liepajas-sez/index.php" role="button">

									ZES de Liepāja

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/fr/investe-liepaja/index.php">Investir à Liepāja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/fr/osta/index.php">

									Port

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/fr/par-ostu/index.php">À propos du port</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/pramju-satiksme/index.php">Liaisons par ferry</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/kruiza-kugi/index.php">Navires de croisière</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/jahtu-osta/index.php">Port de plaisance</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/oskara-kalpaka-tilts/index.php">Pont Oskar Kalpak</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="/site/fr/kapitalsabiedribas/index.php">Entreprises</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/attistibas-projekti/index.php">Projets de développement</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/darbs-liepaja/index.php">Emplois à Liepāja</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/teritoriju-karte/index.php">Carte des territoires</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/fr/parvalde/index.php" role="button">

									Administration

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/fr/parvaldiba/index.php">Gestion</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/korporativa-parvaldiba/index.php">Gouvernance d'entreprise</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/iepirkumi-un-izsoles/index.php">Marchés publics et ventes aux enchères</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/fr/darbibas-parskati/index.php">

									Rapports d'activités

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/fr/valdes-sedes-lemumi/index.php">Décisions du conseil d'administration</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/atskaites-par-darbibu/index.php">Rapports d'activités</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/ostas-statistika/index.php">Statistiques portuaires</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/fr/jaunumi-1/index.php" role="button">

									Actualités

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/fr/jaunumi-1/index.php">Pour les médias</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/foto/index.php">Photos</a>
</li>
<li>
<a class="dropdown-item" href="/site/fr/valdes-sedes/index.php">Réunions du conseil d'administration</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="/site/fr/dokumenti/index.php">Documents</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/fr/kontakti/index.php">Contacts</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Taille du texte" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/fr/index.php" id="font-controls2">
<span>A</span>
<span>A</span>
<span>A</span>
</a>
<ul aria-labelledby="font-controls2" class="text-center font-size">
<li><a class="" data-size="14" href="/site/fr/index.php">75%</a></li>
<li><a class="active" data-size="15" href="/site/fr/index.php">100%</a></li>
<li><a class="" data-size="16.5" href="/site/fr/index.php">125%</a></li>
<li><a class="" data-size="17.5" href="/site/fr/index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Contraste" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="/site/fr/index.php" id="contrast-controls2">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls2" class="">
<li><a class="control contrast-default active" data-class="blue" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control contrast1" data-class="black" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control contrast2" data-class="yellow2" href="/site/fr/index.php"><i>A</i></a></li>
<li><a class="control contrast3" data-class="yellow" href="/site/fr/index.php"><i>A</i></a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>