<?php require_once __DIR__ . '/../language.php'; ?>
<div class="block" id="search-overlay">
<div class="centered">
<div id="search-box">
<div class="fa fa-times fa-2x" id="close-btn">X</div>
<form action="#" id="search-form" method="get" target="_top">
<input id="search-text" name="q" placeholder="I'm searching for..." type="text"/>
<button id="search-button" type="submit">
<span>Search</span>
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
<a aria-expanded="false" aria-label="Font size" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls1">
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
<a aria-expanded="false" aria-label="Select language" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls1">

										en

									</a><ul aria-labelledby="language-controls1" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li></ul> </li>
</ul>
<div class="brand-container">
<a class="navbar-brand" href="/site/en/index.php">
<img alt="logo" class="site-logo" src="/site/img/logo.svg" width="100"/>
</a>
</div>
<div class="mobile-controls">
<ul class="controls mobile d-flex d-lg-none">
<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
<li class="dropdown language-controls">
<a aria-expanded="false" aria-label="Select language" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="" id="language-controls2">

											en

										</a><ul aria-labelledby="language-controls2" class="dropdown-menu text-center"><li><a class="dropdown-item" href="<?= htmlspecialchars($lvLink) ?>">lv</a></li></ul> </li>
</ul>
<button aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler nocontrast" data-bs-target="#navbar" data-bs-toggle="collapse" type="button">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse" id="navbar">
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
<li class="nav-item">
<a class="nav-link active" href="/site/en/index.php">Home</a>
</li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="liepaja-sez/index.php" role="button">

									Liepaja SEZ

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="invest-in-liepaja/index.php">Invest in Liepaja</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="port/index.php">

									Port

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="about-port/index.php">About Port</a>
</li>
<li>
<a class="dropdown-item" href="ferry-traffic/index.php">Ferry traffic</a>
</li>
<li>
<a class="dropdown-item" href="cruise-ships/index.php">Cruising</a>
</li>
<li>
<a class="dropdown-item" href="liepaja-marina/index.php">Liepaja Marina</a>
</li>
<li>
<a class="dropdown-item" href="oskars-kalpaks-bridge/index.php">Oskars Kalpaks bridge</a>
</li>
</ul>
</li>
<li>
<a class="dropdown-item" href="lsez-commercial-companies/index.php">Commercial Companies</a>
</li>
<li>
<a class="dropdown-item" href="development-projects/index.php">Development projects</a>
</li>
<li>
<a class="dropdown-item" href="job-vacancies/index.php">Job vacancies</a>
</li>
<li>
<a class="dropdown-item" href="map-of-territories/index.php">Map of territories</a>
</li>
</ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="authority/index.php" role="button">

									Authority

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="governance/index.php">Governance</a>
</li>
<li>
<a class="dropdown-item" href="corporate-governance/index.php">Corporate governance</a>
</li>
<li>
<a class="dropdown-item" href="public-procurement/index.php">Procurement and auctions</a>
</li>
<li class="dropend">
<a class="dropdown-item dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="activity-reports/index.php">

									Activity reports

								</a>
<ul class="dropdown-menu">
<li>
<a class="dropdown-item" href="board-meeting-decisions/index.php">Board meeting decisions</a>
</li>
<li>
<a class="dropdown-item" href="activity-reports-1/index.php">Activity reports</a>
</li>
<li>
<a class="dropdown-item" href="port-statistics/index.php">Port statistics</a>
</li>
</ul>
</li></ul></li><li class="nav-item dropdown">
<a aria-expanded="false" class="nav-link dropdown-toggle" data-bs-auto-close="outside" data-bs-toggle="dropdown" href="news-1/index.php" role="button">

									News

								</a><ul aria-labelledby="navbar" class="dropdown-menu">
<li>
<a class="dropdown-item" href="news/index.php">Press releases</a>
</li>
<li>
<a class="dropdown-item" href="photos/index.php">Photos</a>
</li>
<li>
<a class="dropdown-item" href="board-meetings/index.php">Board Meetings</a>
</li>
</ul></li>
<li class="nav-item">
<a class="nav-link" href="documents/index.php">Documents</a>
</li>
<li class="nav-item">
<a class="nav-link" href="contacts/index.php">Contacts</a>
</li>
<hr class="dropdown-divider d-block d-lg-none"/>
<li class="dropdown font-controls mobile d-flex d-lg-none">
<a aria-expanded="false" aria-label="Font size" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="font-controls2">
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
<a aria-expanded="false" aria-label="Contrast" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="index.php" id="contrast-controls2">
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