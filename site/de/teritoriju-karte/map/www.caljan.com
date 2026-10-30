		<!doctype html>
		<html lang="de">
		<head>
			<!-- Required meta tags -->
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">


			<link rel="icon" type="image/x-icon" href="https://liepaja-sez.lv/favicon.ico">

			<meta name="description" content="SEZ"><meta name="robots" content="follow, index"><meta property="og:type" content="website" />
			<meta property="og:url" content="https://liepaja-sez.lv/lv/teritoriju-karte/map/www.caljan.com" />
			<meta property="og:title" content="Startseite" />
			<meta property="og:site_name" content="Sonderwirtschaftszone Liepāja" /><meta property="og:description" content="SEZ" />
				<meta name="twitter:card" content="SEZ" />

			<meta name="twitter:site" content="@liepajaSEZ" />
			<meta name="twitter:creator" content="@liepajaSEZ" />

			<title>Startseite » SEZ</title>

			<link rel="stylesheet" href="https://liepaja-sez.lv/css/jarallax.min.css">
			<link rel="stylesheet" href="https://liepaja-sez.lv/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://liepaja-sez.lv/css/main.css?v=26">
			<link href="https://liepaja-sez.lv/css/block/banner/animate.min.css" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/banner/glide.core.min.css" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/banner/glide.theme.min.css" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/banner/main.css?v=10" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/magnet/main.css?v=1" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/index/main.css?v=13" rel="stylesheet" type="text/css" /><link href="https://liepaja-sez.lv/css/block/news_three/main.css?v=1" rel="stylesheet" type="text/css" />			<link rel="stylesheet" href="https://liepaja-sez.lv/cc/dist/cookieconsent.css" media="print" onload="this.media='all'">

			<script>
				const html = document.querySelector("html");
				if(localStorage['contrast']){
					html.classList.add(localStorage['contrast']);
				}
			</script>

			<script>var web_url="https://liepaja-sez.lv/";</script>
			<script>var lang="de";</script>
		</head>
		<body>
			<div id="search-overlay" class="block">
				<div class="centered">
					<div id='search-box'>
						<div id="close-btn" class="fa fa-times fa-2x">X</div>
						<form action='#' id='search-form' method='get' target='_top'>
							<input id='search-text' name='q' placeholder='Ich suche ...' type='text' />
							<button id='search-button' type='submit'>
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
							<a href="#" class="nav-link dropdown-toggle" id="font-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Schriftgröße">
								<span>A</span>
								<span>A</span>
								<span>A</span>
							</a>
							<ul class="dropdown-menu text-center font-size" aria-labelledby="font-controls1">
								<li><a class="dropdown-item" data-size=14 href="#">75%</a></li>
								<li><a class="dropdown-item active" data-size=15 href="#">100%</a></li>
								<li><a class="dropdown-item" data-size=16.5 href="#">125%</a></li>
								<li><a class="dropdown-item" data-size=17.5 href="#">150%</a></li>
							</ul>
						</li>
						<li class="dropdown contrast-controls nocontrast">
							<a href="#" class="nav-link dropdown-toggle" id="contrast-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Kontrast">
								<i class="bi bi-circle-half"></i>
							</a>
							<ul class="dropdown-menu" aria-labelledby="contrast-controls1">
								<li><a class="control dropdown-item contrast-default active" href="#" data-class="blue"><i>A</i></a></li>
								<li><a class="control dropdown-item contrast1" href="#" data-class="black"><i>A</i></a></li>
								<li><a class="control dropdown-item contrast2" href="#" data-class="yellow2"><i>A</i></a></li>
								<li><a class="control dropdown-item contrast3" href="#" data-class="yellow"><i>A</i></a></li>
							</ul>
						</li>
						<li class="dropdown language-controls">

									<a href="" class="nav-link dropdown-toggle" id="language-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Sprache auswählen">
										lv
									</a><ul class="dropdown-menu text-center" aria-labelledby="language-controls1"><li><a class="dropdown-item" href="https://liepaja-sez.lv/en/">en</a></li></ul>						</li>
											</ul>
					<div class="brand-container">
						<a class="navbar-brand" href="/site/de/index.php">
							<img class="site-logo" src="https://liepaja-sez.lv/img/logo.svg" alt="Logo" width="100">
						</a>
					</div>
					<div class="mobile-controls">
						<ul class="controls mobile d-flex d-lg-none">
							<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
							<li class="dropdown language-controls">

										<a href="" class="nav-link dropdown-toggle" id="language-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Sprache auswählen">
											lv
										</a><ul class="dropdown-menu text-center" aria-labelledby="language-controls2"><li><a class="dropdown-item" href="https://liepaja-sez.lv/en/">en</a></li></ul>							</li>
													</ul>
						<button class="navbar-toggler nocontrast" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Navigation umschalten">
							<span class="navbar-toggler-icon"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="navbar">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

							<li class="nav-item">
								<a class="nav-link active" href="/site/de/index.php">Startseite</a>
							</li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="/site/de/liepajas-sez/index.php" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Sonderwirtschaftszone Liepāja
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="/site/de/investe-liepaja/index.php">Investieren in Liepāja</a>
							</li>
						<li class="dropend">
								<a class="dropdown-item dropdown-toggle" href="/site/de/osta/index.php" data-bs-toggle="dropdown" data-bs-auto-close="outside">
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
								<a class="nav-link dropdown-toggle" href="/site/de/parvalde/index.php" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Verwaltung
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
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
								<a class="dropdown-item dropdown-toggle" href="/site/de/darbibas-parskati/index.php" data-bs-toggle="dropdown" data-bs-auto-close="outside">
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
								<a class="nav-link dropdown-toggle" href="/site/de/jaunumi-1/index.php" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Aktuelles
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="/site/de/medijiem/index.php">Für die Medien</a>
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
							<hr class="dropdown-divider d-block d-lg-none">
							<li class="dropdown font-controls mobile d-flex d-lg-none">
								<a href="#" class="nav-link dropdown-toggle" id="font-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Schriftgröße">
									<span>A</span>
									<span>A</span>
									<span>A</span>
								</a>
								<ul class="text-center font-size" aria-labelledby="font-controls2">
									<li><a class="" data-size=14 href="#">75%</a></li>
									<li><a class="active" data-size=15 href="#">100%</a></li>
									<li><a class="" data-size=16.5 href="#">125%</a></li>
									<li><a class="" data-size=17.5 href="#">150%</a></li>
								</ul>
							</li>
							<li class="dropdown contrast-controls mobile d-flex d-lg-none">
								<a href="#" class="nav-link dropdown-toggle" id="contrast-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Kontrast">
									<i class="bi bi-circle-half"></i>
								</a>
								<ul class="" aria-labelledby="contrast-controls2">
									<li><a class="control contrast-default active" href="#" data-class="blue"><i>A</i></a></li>
									<li><a class="control contrast1" href="#" data-class="black"><i>A</i></a></li>
									<li><a class="control contrast2" href="#" data-class="yellow2"><i>A</i></a></li>
									<li><a class="control contrast3" href="#" data-class="yellow"><i>A</i></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="spacer"></div>
			<main class="pb-5">


			<div class="nocontrast glide z mb-5">
				<div class="container bullets-container">
					<div class="glide__bullets" data-glide-el="controls[nav]"><button data-glide-dir="=0" class="glide__bullet" aria-label="Slide 0"></button><button data-glide-dir="=1" class="glide__bullet" aria-label="Slide 1"></button><button data-glide-dir="=2" class="glide__bullet" aria-label="Slide 2"></button>
					</div>
				</div>
				<div class="glide__track" data-glide-el="track">
					<ul class="glide__slides">

					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/23/1695811334_HEADER_HD_osta.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Sonderwirtschaftszone Liepāja</h5><p class="animate__animated animate__fadeInUp">Hafen</p><a class="animate__animated animate__fadeInUp" target="" href="/site/de/par-ostu/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
							</div>
						</div>
					</li>

					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/25/1695811369_HEADER_HD_razoshana.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Sonderwirtschaftszone Liepāja</h5><p class="animate__animated animate__fadeInUp">Investieren in Liepāja</p><a class="animate__animated animate__fadeInUp" target="" href="/site/de/investe-liepaja/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
							</div>
						</div>
					</li>

					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Sonderwirtschaftszone Liepāja</h5><p class="animate__animated animate__fadeInUp">Flughafen</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-airport.lv/" aria-label="Mehr erfahren">Mehr erfahren</a>
							</div>
						</div>
					</li>	</ul>
				</div>
				<div class="glide__arrows d-none d-lg-block" data-glide-el="controls">
					<button class="glide__arrow glide__arrow--left" data-glide-dir="<" aria-label="Zurück">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Zurück</span>
					</button>
					<button class="glide__arrow glide__arrow--right" data-glide-dir=">" aria-label="Weiter">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Weiter</span>
					</button>
				</div>

			</div>
			<div class="container pt-3">	<div class="magnet"><h1 class="block-title mb-5"> Liepāja - der beste Ort für Investitionen und Unternehmertum<span></span></h1>
						<div class="nocontrast row">
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel2" class="carousel slide magnet1 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#001c43;">
										<div class="carousel-item active" style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vorteile</h4>
												<p>Strategisch vorteilhafte geografische Lage und ein nicht gefrierender Hafen</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vorteile</h4>
												<p>Zugänglichkeit - Hafen, Flughafen, effizientes Auto- und Schienennetz</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vorteile</h4>
												<p>Flexible Betriebsbedingungen</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vorteile</h4>
												<p>Barrierefreie Entwicklungsgebiete</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vorteile</h4>
												<p>Wirksame Unterstützungsinstrumente für Unternehmer</p>

												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel2" data-bs-slide="next" aria-label="Weiter">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Weiter"
											</span>
											<span class="visually-hidden">Weiter</span>
										</button>
									</div>
								</div>
							</div>

							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel5" class="carousel slide magnet2 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#00377b;">
										<div class="carousel-item active" style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Entwicklungsmöglichkeiten</h4>
												<p>Freie Entwicklungsgebiete</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Entwicklungsmöglichkeiten</h4>
												<p>Industrieparks</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Entwicklungsmöglichkeiten</h4>
												<p>Traditionen und Erfahrungen</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Entwicklungsmöglichkeiten</h4>
												<p>Verfügbarkeit von qualifizierten Arbeitskräften</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Entwicklungsmöglichkeiten</h4>
												<p>Intelligentes und effizientes Netzwerk der technischen Kommunikation</p>

												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel5" data-bs-slide="next" aria-label="Weiter">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Weiter"
											</span>
											<span class="visually-hidden">Weiter</span>
										</button>
									</div>
								</div>
							</div>

							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel6" class="carousel slide magnet3 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#085ca8;">
										<div class="carousel-item active" style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Produktion in der verarbeitenden Industrie - 478,6 Mio. EUR</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Private Investitionen - 428,9 Mio. EUR</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Ausfuhren - 261/4 Mio. EUR</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Steuern - 29 904 310 EUR</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Durchschnittsgehalt - 1663,66 EUR</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Hafenfrachtumsatz - 7 232 197,34 t</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Anzahl der Schiffe pro Jahr - 1602</p>

												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Zahlen und Fakten</h4>
												<p>Investitionen der Liepāja SEZ Authority - 149,9 Mio.n. EUR </p>

												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel6" data-bs-slide="next" aria-label="Weiter">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Weiter"
											</span>
											<span class="visually-hidden">Weiter</span>
										</button>
									</div>
								</div>
							</div>

						</div>
					</div>
			<div class="index">
				<div class="row">
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp" alt="Ražošana Liepājā">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Investieren in Liepāja</h1><p>Die Liepāja SEZ Authority und die Stadtverwaltung schaffen ein attraktives Umfeld für Unternehmen - ein einheitliches wirtschaftliches Ökosystem mit dem Ziel, die Entwicklung der Stadt und Region zu fördern, neue Unternehmer anzuziehen und bestehende Expansionen zu unterstützen, neue Arbeitsplätze mit wettbewerbsfähigen Löhnen zu schaffen und das BIP zu erhöhen und Steuern zu zahlen.</p><a target="" href="/site/de/investe-liepaja/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp" alt="Hafen von Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Hafen</h1><p>Der Hafen von Liepāja ist der drittgrößte Hafen Lettlands und das Tor der Stadt in die weite Welt. Der Hafen von Liepāja ist das Wesen und Charakter der Stadt. Liepāja wie alle Städte, die ihre Nasenlöcher denken und leben. Hafen von Liepāja mit seiner günstigen geografischen Lage zwischen Ost und West.</p><a target="" href="/site/de/par-ostu/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp" alt="Entwicklungsprojekte">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Entwicklungsprojekte</h1><p>In Synergie mit Unternehmern Liepāja SEZ Authority plant langfristige Entwicklung und entwickelt Projekte zur Förderung der Gründung von Unternehmen auf Basis grundlegender Grundsätze des Zirkulations- und Technologiewachstums.</p><a target="" href="/site/de/attistibas-projekti/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp" alt="Yachthafen">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Yachthafen</h1><p>Liepāja Yacht Port ist der einzige in Lettland, der die Anforderungen von 37 internationalen Öko-Zertifikat Blue Flag erfüllt. Der Yachthafen befindet sich in seiner historischen Lage - im Stadtzentrum, wodurch es leicht ist, die Attraktivität der Stadt zu genießen. Fünf Minuten vom Stadtzentrum, dem Rose Square und dem Touristeninformationszentrum entfernt, aber der Strand ist nur 15 Gehminuten entfernt.</p><a target="" href="/site/de/jahtu-osta/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp" alt="Flughafen Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Flughafen</h1><p>Der Flughafen Liepāja ist einer der beiden internationalen Flughäfen Lettlands, das nach dem Wiederaufbau der erste Flughafen in Europa war, der den Zertifizierungsprozess nach neu verschärften Regelungen beendete. </p><a target="_blank" href="//liepaja-airport.lv/" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp" alt="Oskars-Kalpaks-Brücke">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Oskars-Kalpaks-Brücke</h1><p>Abzweigbrücke einer der ältesten Metallkonstruktionen in Lettland, die eröffnet wurde 1906. Im Jahr . Der Karosta-Kanal ist eine aktive Schifffahrtsroute, so dass er mehrmals täglich für den Versand geöffnet wird. Um herauszufinden, ob O. Kalpaka Brücke ist geöffnet, installiert Webcam.</p><a target="" href="/site/de/oskara-kalpaka-tilts/index.php" aria-label="Mehr erfahren">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
				</div>
			</div>
			<div class="news_three mb-5"><h1 class="block-title mb-5">Aktuelles<span></span></h1>
				<div class="row">
				<div class="col-12 col-lg-9">
					<div id="newsCarousel69" class="carousel slide newsCarousel" data-ride="carousel">
						<div class="carousel-indicators"> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Folie0"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="1" class="" aria-current="true" aria-label="Slide1"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="2" class="" aria-current="true" aria-label="Slide2"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/326/1792137601_75_10.16.2026._kino_kalpaka_tilts.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">16.10.2026.</span>
												<h3>Oskars-Kalpaks-Brücke wird für ein internationales Filmprojekt drei Tage lang für den Verkehr gesperrt</h2>
											</div>
											<a href="/site/de/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/324/1791277284_72_10.06.2026._LIP_izsole_Eksporta_iela.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">06.10.2026.</span>
												<h3>Versteigerung einer Immobilie im Industriepark Liepāja in der Eksporta iela 3 angekündigt</h2>
											</div>
											<a href="/site/de/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/322/1790685711_I40A6032.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">29.09.2026.</span>
												<h3>Der Ausbau des Industrieparks Liepāja wird mit der Sanierung des Geländes fortgesetzt</h2>
											</div>
											<a href="/site/de/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/liepajas-sez-valdes-25-septembra-lemumi/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/323/1790837289_70_09.28.2026._Brimer_vizualizacija.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">28.09.2026.</span>
												<h3>Beschlüsse des Vorstands der Sonderwirtschaftszone Liepāja vom 25. September</h2>
											</div>
											<a href="/site/de/sakums/liepajas-sez-valdes-25-septembra-lemumi/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/319/1790069221_66_09.21.2026._LIP.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">21.09.2026.</span>
												<h3>Industriepark Liepāja zählt weltweit zu den TOP 10 der attraktivsten Industrie- und Logistikprojekte für Investitionen</h2>
											</div>
											<a href="/site/de/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/317/1788948830_63_09.08.2026._1_LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">09.09.2026.</span>
												<h3>Die Getreidesaison im Hafen Liepāja beginnt dieses Jahr später als in anderen Jahren </h2>
											</div>
											<a href="/site/de/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/316/1788941725_S9209229.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>Dienstleistungen im Hafen Liepāja werden leichter zugänglich</h2>
											</div>
											<a href="/site/de/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/315/1788766639_62_09.04.2026._kruīza kugis_3.1.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>7 Kreuzfahrtschiffe und mehr als 4 000 Gäste – Liepāja festigt 2026 seine Position auf der Kreuzfahrtkarte der Ostsee</h2>
											</div>
											<a href="/site/de/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="/site/de/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana/index.php" aria-label="Weiterlesen">
													<img src="https://liepaja-sez.lv/img/mod/news/311/1788428596_61_09.02.2026._LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">02.09.2026.</span>
												<h3>Im Hafen Liepāja wird weiterhin Getreide lettischer Landwirte angenommen</h2>
											</div>
											<a href="/site/de/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana/index.php" class="news_link mb-5" aria-label="Weiterlesen">Weiterlesen</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<div class="col-12 col-lg-3 mt-4 mt-lg-0">
				<div id="newsMagnetCarousel69" class="carousel slide newsMagnetCarousel nocontrast" data-bs-interval="9999999" data-bs-ride="carousel" data-bs-touch="true">
					<div class="carousel-inner">
						<div class="carousel-item active" style="background-color:#04103e;">
							<a href="/site/de/valdes-sedes/index.php" target="">
							<div class="carousel-caption"><img src="https://liepaja-sez.lv/img/mod/magnet/35/1709199402_VALDEs_seede.svg" class="img-fluid icon mb-4" alt="Symbol"/>
								<h4>Sitzung des Vorstands </h4>
								<p>Frist für die Einreichung der Unterlagen, zur Überprüfung in der Sitzung des Vorstands von Liepāja SEZ</p>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			</div>
				<img class="background" src="https://liepaja-sez.lv/img/bg2.svg" alt="Hintergrundbild"/>
			</main>
			<footer class="footer">
				<div class="container py-5">
					<div class="row">
						<div class="col-12 col-md-4 col-lg-2 footer-logo">
							<img class="img-fluid" src="https://liepaja-sez.lv/img/logo-white.svg" alt="Logo" width="100">
                        </div>
						<div class="col-12 col-md-8 col-lg-5 mb-3 reqs">
								<p>Verwaltung der Sonderwirtschaftszone Liepāja<br>Fēniksa iela 4, Liepāja,<br>LV-3401, Lettland<br><br>Telefon: <a href="tel:+37163427605">+371 63427605</a><br>E-Mail: <a href="mailto:lsez@lsez.lv">lsez@lsez.lv</a></p>						</div>
						<div class="col-12 col-md-4 col-lg-4">
                            <div class="row pt-3k">
								<div class="col socials d-flex justify-content-start">
									<a href="https://www.facebook.com/LiepajasSEZ" target="_blank" aria-label="Facebook"><img src="https://liepaja-sez.lv/img/FB.svg" alt="Facebook" class="img-fluid"></a>
									<a href="https://twitter.com/liepajaSEZ" target="_blank" aria-label="Twitter"><img src="https://liepaja-sez.lv/img/TW.svg" alt="Twitter"  class="img-fluid"></a>
									<a href="https://www.instagram.com/liepajasez" target="_blank" aria-label="Instagram"><img src="https://liepaja-sez.lv/img/IG.svg" alt="Instagram"  class="img-fluid"></a>
									<a href="https://www.youtube.com/channel/UCjBSQK6pZ5tQGpRabmlLwxQ" target="_blank" aria-label="Youtube"><img src="https://liepaja-sez.lv/img/YT.svg" alt="Youtube"  class="img-fluid"></a>
									<a href="https://www.linkedin.com/company/liepaja-special-economic-zone/" target="_blank" alt="Linkedin"><img src="https://liepaja-sez.lv/img/IN.svg" aria-label="Linkedin"  class="img-fluid"></a>
									<a href="https://www.flickr.com/photos/liepajasez/albums/" target="_blank" alt="Linkedin"><img src="https://liepaja-sez.lv/img/flickr.svg" aria-label="Flickr"  class="img-fluid"></a>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-8 col-lg-1">
                            <div class="row">
								<div class="col up">
									<a href="#" aria-label="Nach oben"><img src="https://liepaja-sez.lv/img/round-right.svg" alt="Nach oben" class="img-fluid"></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="sticky-cookie" style="align-items: center; justify-content: center;">
					<img width="24" src="https://liepaja-sez.lv/img/cc.svg?=v5" alt="Cookie" />
				</div>

							<!-- Global site tag (gtag.js) - Google Analytics -->
				<script async src="https://www.googletagmanager.com/gtag/js?id=G-6QTXK76SH0"></script>
				<script>
				  window.dataLayer = window.dataLayer || [];
				  function gtag(){dataLayer.push(arguments);}
				  gtag('js', new Date());

				  gtag('config', 'G-6QTXK76SH0');
				</script>


				</script>
				<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous">
				<script src="https://code.jquery.com/color/jquery.color.plus-names-2.1.2.min.js"></script>

				<script src="https://liepaja-sez.lv/js/jarallax.min.js?v=3"></script>
				<script src="https://liepaja-sez.lv/js/bootstrap.bundle.min.js"></script>
				<script src="https://liepaja-sez.lv/js/main.js?v=9"></script>
				<script src="https://liepaja-sez.lv/js/block/banner/glide.min.js"></script><script src="https://liepaja-sez.lv/js/block/banner/main.js?v=5"></script><script src="https://liepaja-sez.lv/js/block/magnet/main.js?v=1"></script><script src="https://liepaja-sez.lv/js/block/index/main.js?v=4"></script>				<script defer src="https://liepaja-sez.lv/cc/src/cookieconsent.js"></script>
				<script defer src="https://liepaja-sez.lv/cc/demo/app2.js?v=6"></script>
			</footer>
		</body>
	</html>
