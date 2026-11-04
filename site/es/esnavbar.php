<?php require_once __DIR__ . '/language.php'; ?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">x</div>
<script defer src="/site/js/search.js"></script>
<form action="/site/es/" id="search-form" method="get" target="_top">
<input type="hidden" name="lang" value="es">
<input id="search-text" name="search" placeholder="Busco..." type="text"/>
<button id="search-button" type="submit">
<span>Buscar</span>
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
<a aria-expanded="false" aria-label="Tamaño del texto" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls1">
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
<a aria-expanded="false" aria-label="Contraste" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls1">
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
    <a aria-expanded="false" aria-label="Seleccionar idioma"
       class="nav-link dropdown-toggle"
       data-bs-toggle="dropdown"
       href="#"
       id="language-controls1">
        es
    </a>

    <ul aria-labelledby="language-controls1" class="dropdown-menu text-center">
        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a>
        </li>

        <li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li>
    <li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($nlLink) ?>">nl</a></li></ul>
</li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/es/index.php">
<img alt="logotipo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Seleccionar idioma" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">

											es

										</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($enLink) ?>">en</a></li><li>
            <a class="dropdown-item" href="<?= htmlspecialchars($deLink) ?>">de</a>
        </li><li><a class="dropdown-item" href="<?= htmlspecialchars($frLink) ?>">fr</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($itLink) ?>">it</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li><li><a class="dropdown-item" href="<?= htmlspecialchars($nlLink) ?>">nl</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Abrir o cerrar el menú" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/es/index.php">Inicio</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/es/liepajas-sez/index.php" role="button">

									ZEE de Liepāja

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/es/investe-liepaja/index.php">Invertir en Liepāja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/es/osta/index.php">

									Puerto

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/es/par-ostu/index.php">Acerca del puerto</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/pramju-satiksme/index.php">Servicios de ferry</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/kruiza-kugi/index.php">Cruceros</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/jahtu-osta/index.php">Puerto de yates</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/oskara-kalpaka-tilts/index.php">Puente Oskar Kalpak</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="/site/es/kapitalsabiedribas/index.php">Sociedades de capital</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/attistibas-projekti/index.php">Proyectos de desarrollo</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/darbs-liepaja/index.php">Trabajar en Liepāja</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/teritoriju-karte/index.php">Mapa de territorios</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/es/parvalde/index.php" role="button">

									Gestión

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/es/parvaldiba/index.php">Gestión</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/korporativa-parvaldiba/index.php">Gobierno corporativo</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/iepirkumi-un-izsoles/index.php">Adquisiciones y subastas</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/es/darbibas-parskati/index.php">

									Informes de actividad

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/es/valdes-sedes-lemumi/index.php">Decisiones de la reunión de la junta</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/atskaites-par-darbibu/index.php">Informes de actividad</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/ostas-statistika/index.php">Estadísticas portuarias</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="/site/es/jaunumi-1/index.php" role="button">

									Noticias

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="/site/es/jaunumi-1/index.php">Para los medios</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/foto/index.php">Foto</a>
</li>
<li>
<a class="dropdown-item" href="/site/es/valdes-sedes/index.php">Reuniones de la junta directiva</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="/site/es/dokumenti/index.php">Documentos</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/es/teritoriju-karte/index.php">Mapa de territorios</a>
</li>
<li class="nav-item">
<a class="nav-link" href="/site/es/kontakti/index.php">Contacto</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Tamaño del texto" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls2">
<span>un</span>
<span>un</span>
<span>un</span>
</a>
<ul aria-labelledby="font-controls2" class="text-center font-size">
<li><a class="" data-size="14" href="index.php">75%</a></li>
<li><a class="active" data-size="15" href="index.php">100%</a></li>
<li><a class="" data-size="16.5" href="index.php">125%</a></li>
<li><a class="" data-size="17.5" href="index.php">150%</a></li>
</ul>
</li>
<li class="dropdown contrast-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Contraste" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls2">
<i class="bi bi-circle-half"></i>
</a>
<ul aria-labelledby="contrast-controls2" class="">
<li><a class="control contrast-default active" data-class="blue" href="index.php"><i>un</i></a></li>
<li><a class="control contrast1" data-class="black" href="index.php"><i>un</i></a></li>
<li><a class="control contrast2" data-class="yellow2" href="index.php"><i>un</i></a></li>
<li><a class="control contrast3" data-class="yellow" href="index.php"><i>un</i></a></li>
</ul>
</li>
</ul>
</div>
</div>
</nav>