		<!doctype html>
		<html lang="nl">
		<head>
			<!-- Required meta tags -->
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			

			<link rel="icon" type="image/x-icon" href="https://liepaja-sez.lv/favicon.ico">
						
			<meta name="description" content="SEZ"><meta name="robots" content="follow, index"><meta property="og:type" content="website" />
			<meta property="og:url" content="https://liepaja-sez.lv/nl/teritoriju-karte/map/liepajas-industrialais-parks/www.caljan.com" />
			<meta property="og:title" content="Home" />
			<meta property="og:site_name" content="SEZ Liepāja" /><meta property="og:description" content="SEZ" />
				<meta name="twitter:card" content="SEZ" />
				
			<meta name="twitter:site" content="@liepajaSEZ" />
			<meta name="twitter:creator" content="@liepajaSEZ" />
						
			<title>Home » SEZ</title>			

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
			<script>var lang="nl";</script>
		</head>
		<body>
			<div id="search-overlay" class="block">
				<div class="centered">
					<div id='search-box'>
						<div id="close-btn" class="fa fa-times fa-2x">X</div>
						<form action='#' id='search-form' method='get' target='_top'>
							<input id='search-text' name='q' placeholder='Ik zoek...' type='text' />
							<button id='search-button' type='submit'>
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
							<a href="#" class="nav-link dropdown-toggle" id="font-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Tekstgrootte">
								<span>EEN</span>
								<span>EEN</span>
								<span>EEN</span>
							</a>
							<ul class="dropdown-menu text-center font-size" aria-labelledby="font-controls1">
								<li><a class="dropdown-item" data-size=14 href="#">75%</a></li>
								<li><a class="dropdown-item active" data-size=15 href="#">100%</a></li>
								<li><a class="dropdown-item" data-size=16.5 href="#">125%</a></li>
								<li><a class="dropdown-item" data-size=17.5 href="#">150%</a></li>
							</ul>
						</li>
						<li class="dropdown contrast-controls nocontrast">
							<a href="#" class="nav-link dropdown-toggle" id="contrast-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Contrast">
								<i class="bi bi-circle-half"></i>
							</a>
							<ul class="dropdown-menu" aria-labelledby="contrast-controls1">
								<li><a class="control dropdown-item contrast-default active" href="#" data-class="blue"><i>EEN</i></a></li>
								<li><a class="control dropdown-item contrast1" href="#" data-class="black"><i>EEN</i></a></li>
								<li><a class="control dropdown-item contrast2" href="#" data-class="yellow2"><i>EEN</i></a></li>
								<li><a class="control dropdown-item contrast3" href="#" data-class="yellow"><i>EEN</i></a></li>
							</ul>
						</li>
						<li class="dropdown language-controls">
							
									<a href="" class="nav-link dropdown-toggle" id="language-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Taal kiezen">
										nl
									</a><ul class="dropdown-menu text-center" aria-labelledby="language-controls1"><li><a class="dropdown-item" href="https://liepaja-sez.lv/en/">en</a></li></ul>						</li>
											</ul>
					<div class="brand-container">
						<a class="navbar-brand" href="https://liepaja-sez.lv/">
							<img class="site-logo" src="https://liepaja-sez.lv/img/logo.svg" alt="logo" width="100">
						</a>
					</div>
					<div class="mobile-controls">
						<ul class="controls mobile d-flex d-lg-none">
							<li class="search-controls search-btn" id=""><i class="bi bi-search"></i></li>
							<li class="dropdown language-controls">
								
										<a href="" class="nav-link dropdown-toggle" id="language-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Taal kiezen">
											nl
										</a><ul class="dropdown-menu text-center" aria-labelledby="language-controls2"><li><a class="dropdown-item" href="https://liepaja-sez.lv/en/">en</a></li></ul>							</li>
													</ul>
						<button class="navbar-toggler nocontrast" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Menu openen of sluiten">
							<span class="navbar-toggler-icon"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="navbar">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							
							<li class="nav-item">
								<a class="nav-link active" href="https://liepaja-sez.lv/nl/sakums/">Home</a>
							</li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/nl/liepajas-sez/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									SEZ Liepāja
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/investe-liepaja/">Investeren in Liepāja</a>
							</li>
						<li class="dropend">								
								<a class="dropdown-item dropdown-toggle" href="https://liepaja-sez.lv/nl/osta/" data-bs-toggle="dropdown" data-bs-auto-close="outside">
									Haven
								</a>
								<ul class="dropdown-menu">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/par-ostu/">Over de haven</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/pramju-satiksme/">Veerverbindingen</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/kruiza-kugi/">Cruiseschepen</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/jahtu-osta/">Jachthaven</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/oskara-kalpaka-tilts/">Oskar Kalpak-brug</a>
							</li>
							</ul>
							</li>
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/kapitalsabiedribas/">Kapitaalbedrijven</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/attistibas-projekti/">Ontwikkelingsprojecten</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/darbs-liepaja/">Werk in Liepāja</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/teritoriju-karte/">Kaart van territoria</a>
							</li>
						</ul></li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/nl/parvalde/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Beheer
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/parvaldiba/">Beheer</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/korporativa-parvaldiba/">Corporate governance</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/iepirkumi-un-izsoles/">Inkoop en veilingen</a>
							</li>
						<li class="dropend">								
								<a class="dropdown-item dropdown-toggle" href="https://liepaja-sez.lv/nl/darbibas-parskati/" data-bs-toggle="dropdown" data-bs-auto-close="outside">
									Activiteitenrapporten
								</a>
								<ul class="dropdown-menu">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/valdes-sedes-lemumi/">Beslissingen van de bestuursvergadering</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/atskaites-par-darbibu/">Activiteitenrapporten</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/ostas-statistika/">Havenstatistieken</a>
							</li>
							</ul>
							</li></ul></li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/nl/jaunumi-1/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Nieuws
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/medijiem/">Voor de media</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/foto/">Foto</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/nl/valdes-sedes/">Bestuursvergaderingen</a>
							</li>
						</ul></li>
							<li class="nav-item">
								<a class="nav-link" href="https://liepaja-sez.lv/nl/dokumenti/">Documenten</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="https://liepaja-sez.lv/nl/kontakti/">Contact</a>
							</li>							
							<hr class="dropdown-divider d-block d-lg-none">
							<li class="dropdown font-controls mobile d-flex d-lg-none">
								<a href="#" class="nav-link dropdown-toggle" id="font-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Tekstgrootte">
									<span>EEN</span>
									<span>EEN</span>
									<span>EEN</span>
								</a>
								<ul class="text-center font-size" aria-labelledby="font-controls2">
									<li><a class="" data-size=14 href="#">75%</a></li>
									<li><a class="active" data-size=15 href="#">100%</a></li>
									<li><a class="" data-size=16.5 href="#">125%</a></li>
									<li><a class="" data-size=17.5 href="#">150%</a></li>
								</ul>
							</li>
							<li class="dropdown contrast-controls mobile d-flex d-lg-none">
								<a href="#" class="nav-link dropdown-toggle" id="contrast-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Contrast">
									<i class="bi bi-circle-half"></i>
								</a>
								<ul class="" aria-labelledby="contrast-controls2">
									<li><a class="control contrast-default active" href="#" data-class="blue"><i>EEN</i></a></li>
									<li><a class="control contrast1" href="#" data-class="black"><i>EEN</i></a></li>
									<li><a class="control contrast2" href="#" data-class="yellow2"><i>EEN</i></a></li>
									<li><a class="control contrast3" href="#" data-class="yellow"><i>EEN</i></a></li>
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
					<div class="glide__bullets" data-glide-el="controls[nav]"><button data-glide-dir="=0" class="glide__bullet" aria-label="Dia 0"></button><button data-glide-dir="=1" class="glide__bullet" aria-label="Dia 1"></button><button data-glide-dir="=2" class="glide__bullet" aria-label="Dia 2"></button>
					</div>
				</div>
				<div class="glide__track" data-glide-el="track">
					<ul class="glide__slides">
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/23/1695811334_HEADER_HD_osta.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Speciale economische zone Liepaja</h5><p class="animate__animated animate__fadeInUp">Haven</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-sez.lv/nl/par-ostu/" aria-label="Meer informatie">Meer informatie</a>
							</div>
						</div>
					</li>
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/25/1695811369_HEADER_HD_razoshana.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Speciale economische zone Liepaja</h5><p class="animate__animated animate__fadeInUp">Investeren in Liepāja</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-sez.lv/nl/investe-liepaja/" aria-label="Meer informatie">Meer informatie</a>
							</div>
						</div>
					</li>
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Speciale economische zone Liepaja</h5><p class="animate__animated animate__fadeInUp">Luchthaven</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-airport.lv/" aria-label="Meer informatie">Meer informatie</a>
							</div>
						</div>
					</li>	</ul>
				</div>
				<div class="glide__arrows d-none d-lg-block" data-glide-el="controls">
					<button class="glide__arrow glide__arrow--left" data-glide-dir="<" aria-label="Terug">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Terug</span>
					</button>
					<button class="glide__arrow glide__arrow--right" data-glide-dir=">" aria-label="Volgende">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Volgende</span>
					</button>
				</div>
				
			</div>
			<div class="container pt-3">	<div class="magnet"><h1 class="block-title mb-5"> Liepāja - de beste plaats voor investeringen en zaken<span></span></h1>
						<div class="nocontrast row">						
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel2" class="carousel slide magnet1 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#001c43;">
										<div class="carousel-item active" style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Voordelen</h4>
												<p>Strategisch voordelige geografische ligging en vorstvrije haven</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Voordelen</h4>
												<p>Bereikbaarheid - haven, luchthaven, efficiënt wegen- en spoorwegnet</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Voordelen</h4>
												<p>Flexibele bedrijfsomstandigheden</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Voordelen</h4>
												<p>Ontwikkelingsgebieden beschikbaar</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Voordelen</h4>
												<p>Effectieve ondersteuningsinstrumenten voor ondernemers</p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel2" data-bs-slide="next" aria-label="Volgende">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Volgende"
											</span>
											<span class="visually-hidden">Volgende</span>
										</button>
									</div>
								</div>
							</div>
												
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel5" class="carousel slide magnet2 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#00377b;">
										<div class="carousel-item active" style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Ontwikkelingsmogelijkheden</h4>
												<p>Vrije ontwikkelingsgebieden</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Ontwikkelingsmogelijkheden</h4>
												<p>Industrieparken</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Ontwikkelingsmogelijkheden</h4>
												<p>Tradities en ervaring</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Ontwikkelingsmogelijkheden</h4>
												<p>Beschikbaarheid van gekwalificeerde arbeidskrachten</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Ontwikkelingsmogelijkheden</h4>
												<p>Een goed doordacht en efficiënt netwerk van technische communicatie</p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel5" data-bs-slide="next" aria-label="Volgende">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Volgende"
											</span>
											<span class="visually-hidden">Volgende</span>
										</button>
									</div>
								</div>
							</div>
												
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel6" class="carousel slide magnet3 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#085ca8;">
										<div class="carousel-item active" style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Productievolumes in de maakindustrie - 478,6 miljoen. EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Particuliere investeringen - 428,9 miljoen. EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Export - 261,4 miljoen EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Betaalde belastingen - 29.904.310 EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Gemiddeld salaris - 1663,66 EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Omzet havenvracht - 7.232.197,34 t</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Schepen onderhouden gedurende het jaar 1602</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cijfers en feiten</h4>
												<p>Beheerinvesteringen in Liepaja SEZ - 149,9 miljoen. EUR </p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel6" data-bs-slide="next" aria-label="Volgende">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Volgende"
											</span>
											<span class="visually-hidden">Volgende</span>
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
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp" alt="Productie in Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Investeren in Liepāja</h1><p>Het bestuur van Liepāja SEZ en de stadsgemeente creëren een aantrekkelijk klimaat voor het bedrijfsleven - een verenigd economisch ecosysteem met als doel de ontwikkeling van de stad en de regio te bevorderen, nieuwe ondernemers aan te trekken en bestaande expansie te ondersteunen, nieuwe banen te creëren met concurrerende lonen en het bbp en het bedrag aan betaalde belastingen te verhogen.</p><a target="" href="//liepaja-sez.lv/nl/investe-liepaja/" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp" alt="Haven van Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Haven</h1><p>De haven van Liepāja is de derde grootste haven van Letland en de toegangspoort van de stad tot de wijdere wereld. De haven van Liepāja is de essentie en het karakter van de stad. Liepaja denkt en leeft breder, net als alle steden die hun eigen oesters hebben. De haven van Liepāja met zijn gunstige geografische ligging tussen oost en west.</p><a target="" href="//liepaja-sez.lv/nl/par-ostu/" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp" alt="Ontwikkelingsprojecten">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Ontwikkelingsprojecten</h1><p>In synergie met ondernemers plant de regering van Liepāja SEZ de ontwikkeling op lange termijn en ontwikkelt ze projecten om de oprichting van bedrijven te bevorderen op basis van de basisprincipes van circulatie en technologische groei.</p><a target="" href="//liepaja-sez.lv/nl/attistibas-projekti/" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp" alt="Jachthaven">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Jachthaven</h1><p>De jachthaven van Liepāja is de enige in Letland die voldoet aan 37 eisen van het internationale ecocertificaat Blauwe Vlag. De jachthaven ligt op een historische plek in het stadscentrum, waardoor u gemakkelijk van de bezienswaardigheden van de stad kunt genieten. Het stadscentrum, het Rožu-plein en het toeristeninformatiecentrum liggen op vijf minuten afstand en het strand zelf ligt op 15 minuten lopen.</p><a target="" href="//liepaja-sez.lv/nl/jahtu-osta" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp" alt="Luchthaven Liepaja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Luchthaven</h1><p>Liepāja Airport is een van de twee internationale luchthavens in Letland, die na de wederopbouw de eerste luchthaven in Europa was die het certificeringsproces onderging volgens de nieuw goedgekeurde regelgeving. </p><a target="_blank" href="//liepaja-airport.lv/" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp" alt="Oskar Kalpak-brug">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Oskar Kalpak-brug</h1><p>De ophaalbrug is een van de oudste bruggen met metalen constructies in Letland en werd geopend in 1906. Het Karosta-kanaal is een actieve scheepvaartroute en is daarom meerdere keren per dag geopend voor scheepsverkeer. Om erachter te komen of de O. Kalpakbrug open is, is er een webcam geïnstalleerd.</p><a target="" href="//liepaja-sez.lv/nl/oskara-kalpaka-tilts/" aria-label="Meer informatie">Meer informatie</a>
                        </div>
                    </div>
                </div>
				</div>
			</div>
			<div class="news_three mb-5"><h1 class="block-title mb-5">Nieuws<span></span></h1>
				<div class="row">
				<div class="col-12 col-lg-9">
					<div id="newsCarousel69" class="carousel slide newsCarousel" data-ride="carousel">			
						<div class="carousel-indicators"> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Dia0"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="1" class="" aria-current="true" aria-label="Dia1"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="2" class="" aria-current="true" aria-label="Dia2"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/326/1792137601_75_10.16.2026._kino_kalpaka_tilts.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">16.10.2026.</span>
												<h3>Als onderdeel van een internationaal bioscoopproject wordt de O. Kalpakbrug drie dagen afgesloten voor verkeer</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/324/1791277284_72_10.06.2026._LIP_izsole_Eksporta_iela.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">06.10.2026.</span>
												<h3>Aankondiging van een veiling voor onroerend goed in Liepaja Industrial Park - Eksporta Street 3</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/322/1790685711_I40A6032.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">29.09.2026.</span>
												<h3>De bouw van het industriepark Liepāja gaat verder met het herstel van het gebied</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/liepajas-sez-valdes-25-septembra-lemumi" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/323/1790837289_70_09.28.2026._Brimer_vizualizacija.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">28.09.2026.</span>
												<h3>Beslissingen van het bestuur van 25 september van het bestuur van Liepāja SEZ</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/liepajas-sez-valdes-25-septembra-lemumi" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/319/1790069221_66_09.21.2026._LIP.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">21.09.2026.</span>
												<h3>Het Liepāja Industrial Park behoort tot de TOP 10 van meest aantrekkelijke industriële en logistieke projecten ter wereld om in te investeren</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/317/1788948830_63_09.08.2026._1_LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">09.09.2026.</span>
												<h3>Dit jaar begint het graanseizoen in de haven van Liepāja later dan andere jaren </h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/316/1788941725_S9209229.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>De havendiensten van Liepāja worden steeds toegankelijker</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/315/1788766639_62_09.04.2026._kruīza kugis_3.1.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>7 cruiseschepen en meer dan 4.000 gasten - in 2026 blijft Liepāja zijn positie op de Baltische cruisekaart versterken</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/nl/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana" aria-label="Lees meer">
													<img src="https://liepaja-sez.lv/img/mod/news/311/1788428596_61_09.02.2026._LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">02.09.2026.</span>
												<h3>De acceptatie van graan dat door Letse boeren wordt verbouwd, gaat door in de haven van Liepāja</h2>
											</div>
											<a href="https://liepaja-sez.lv/nl/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana" class="news_link mb-5" aria-label="Lees meer">Lees meer</a>											
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
							<a href="//liepaja-sez.lv/nl/valdes-sedes/" target="">				
							<div class="carousel-caption"><img src="https://liepaja-sez.lv/img/mod/magnet/35/1709199402_VALDEs_seede.svg" class="img-fluid icon mb-4" alt="Icoon"/>
								<h4>Bestuursvergadering </h4>
								<p>Deadline voor het indienen van documenten, ter overweging tijdens de bestuursvergadering van Liepāja SEZ</p>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			</div>				
				<img class="background" src="https://liepaja-sez.lv/img/bg2.svg" alt="Achtergrondafbeelding"/>
			</main>
			<footer class="footer">				
				<div class="container py-5">
					<div class="row">
						<div class="col-12 col-md-4 col-lg-2 footer-logo">
							<img class="img-fluid" src="https://liepaja-sez.lv/img/logo-white.svg" alt="logo" width="100">
                        </div>
						<div class="col-12 col-md-8 col-lg-5 mb-3 reqs">
								<p>Autoriteit van de Speciale Economische Zone Liepāja<br>Fēniksa iela 4, Liepāja,<br>LV-3401, Letland<br><br>Telefoon: <a href="tel:+37163427605">+371 63427605</a><br>E-mail: <a href="mailto:lsez@lsez.lv">lsez@lsez.lv</a></p>						</div>
						<div class="col-12 col-md-4 col-lg-4">
                            <div class="row pt-3k">
								<div class="col socials d-flex justify-content-start">
									<a href="https://www.facebook.com/LiepajasSEZ" target="_blank" aria-label="Facebook"><img src="https://liepaja-sez.lv/img/FB.svg" alt="Facebook" class="img-fluid"></a>
									<a href="https://twitter.com/liepajaSEZ" target="_blank" aria-label="Twitteren"><img src="https://liepaja-sez.lv/img/TW.svg" alt="Twitteren"  class="img-fluid"></a>
									<a href="https://www.instagram.com/liepajasez" target="_blank" aria-label="Instagram"><img src="https://liepaja-sez.lv/img/IG.svg" alt="Instagram"  class="img-fluid"></a>
									<a href="https://www.youtube.com/channel/UCjBSQK6pZ5tQGpRabmlLwxQ" target="_blank" aria-label="YouTube"><img src="https://liepaja-sez.lv/img/YT.svg" alt="YouTube"  class="img-fluid"></a>
									<a href="https://www.linkedin.com/company/liepaja-special-economic-zone/" target="_blank" alt="Linkedin"><img src="https://liepaja-sez.lv/img/IN.svg" aria-label="Linkedin"  class="img-fluid"></a>
									<a href="https://www.flickr.com/photos/liepajasez/albums/" target="_blank" alt="Linkedin"><img src="https://liepaja-sez.lv/img/flickr.svg" aria-label="Flickr"  class="img-fluid"></a>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-8 col-lg-1">							
                            <div class="row">
								<div class="col up">
									<a href="#" aria-label="Naar boven"><img src="https://liepaja-sez.lv/img/round-right.svg" alt="Naar boven" class="img-fluid"></a>
								</div>
							</div>
						</div>
					</div>
				</div>	
				
				<div id="sticky-cookie" style="align-items: center; justify-content: center;">
					<img width="24" src="https://liepaja-sez.lv/img/cc.svg?=v5" alt="Cookie-instellingen" />
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
				<script defer src="/site/nl/cookieconsent.js"></script>
			</footer>
		</body>
	</html>
		