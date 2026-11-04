		<!doctype html>
		<html lang="it">
		<head>
			<!-- Required meta tags -->
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			

			<link rel="icon" type="image/x-icon" href="https://liepaja-sez.lv/favicon.ico">
						
			<meta name="description" content="SEZ"><meta name="robots" content="follow, index"><meta property="og:type" content="website" />
			<meta property="og:url" content="https://liepaja-sez.lv/it/teritoriju-karte/map/liepajas-industrialais-parks/www.caljan.com" />
			<meta property="og:title" content="Home" />
			<meta property="og:site_name" content="ZES di Liepāja" /><meta property="og:description" content="SEZ" />
				<meta name="twitter:card" content="SEZ" />
				
			<meta name="twitter:site" content="@liepajaSEZ" />
			<meta name="twitter:creator" content="@liepajaSEZ" />
						
			<title>Home » ZES</title>			

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
			<script>var lang="it";</script>
		</head>
		<body>
			<div id="search-overlay" class="block">
				<div class="centered">
					<div id='search-box'>
						<div id="close-btn" class="fa fa-times fa-2x">X</div>
						<form action='#' id='search-form' method='get' target='_top'>
							<input id='search-text' name='q' placeholder='Cerco...' type='text' />
							<button id='search-button' type='submit'>
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
							<a href="#" class="nav-link dropdown-toggle" id="font-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Dimensione del testo">
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
							<a href="#" class="nav-link dropdown-toggle" id="contrast-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Contrasto">
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
							
									<a href="" class="nav-link dropdown-toggle" id="language-controls1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Seleziona la lingua">
										it
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
								
										<a href="" class="nav-link dropdown-toggle" id="language-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Seleziona la lingua">
											it
										</a><ul class="dropdown-menu text-center" aria-labelledby="language-controls2"><li><a class="dropdown-item" href="https://liepaja-sez.lv/en/">en</a></li></ul>							</li>
													</ul>
						<button class="navbar-toggler nocontrast" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Apri o chiudi il menu">
							<span class="navbar-toggler-icon"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="navbar">
						<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
							
							<li class="nav-item">
								<a class="nav-link active" href="https://liepaja-sez.lv/it/sakums/">Home</a>
							</li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/it/liepajas-sez/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									ZES di Liepāja
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/investe-liepaja/">Investire a Liepāja</a>
							</li>
						<li class="dropend">								
								<a class="dropdown-item dropdown-toggle" href="https://liepaja-sez.lv/it/osta/" data-bs-toggle="dropdown" data-bs-auto-close="outside">
									Porto
								</a>
								<ul class="dropdown-menu">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/par-ostu/">Il porto</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/pramju-satiksme/">Collegamenti in traghetto</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/kruiza-kugi/">Navi da crociera</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/jahtu-osta/">Porto degli yacht</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/oskara-kalpaka-tilts/">Ponte Oskar Kalpak</a>
							</li>
							</ul>
							</li>
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/kapitalsabiedribas/">Società di capitali</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/attistibas-projekti/">Progetti di sviluppo</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/darbs-liepaja/">Lavorare a Liepāja</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/teritoriju-karte/">Mappa dei territori</a>
							</li>
						</ul></li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/it/parvalde/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Gestione
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/parvaldiba/">Gestione</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/korporativa-parvaldiba/">Governo societario</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/iepirkumi-un-izsoles/">Appalti e aste</a>
							</li>
						<li class="dropend">								
								<a class="dropdown-item dropdown-toggle" href="https://liepaja-sez.lv/it/darbibas-parskati/" data-bs-toggle="dropdown" data-bs-auto-close="outside">
									Rapporti di attività
								</a>
								<ul class="dropdown-menu">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/valdes-sedes-lemumi/">Decisioni del consiglio direttivo</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/atskaites-par-darbibu/">Rapporti di attività</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/ostas-statistika/">Statistiche portuali</a>
							</li>
							</ul>
							</li></ul></li><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="https://liepaja-sez.lv/it/jaunumi-1/" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
									Novità
								</a><ul class="dropdown-menu" aria-labelledby="navbar">
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/medijiem/">Per i media</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/foto/">Foto</a>
							</li>
						
							<li>
								<a class="dropdown-item" href="https://liepaja-sez.lv/it/valdes-sedes/">Riunioni del consiglio</a>
							</li>
						</ul></li>
							<li class="nav-item">
								<a class="nav-link" href="https://liepaja-sez.lv/it/dokumenti/">Documenti</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="https://liepaja-sez.lv/it/kontakti/">Contatti</a>
							</li>							
							<hr class="dropdown-divider d-block d-lg-none">
							<li class="dropdown font-controls mobile d-flex d-lg-none">
								<a href="#" class="nav-link dropdown-toggle" id="font-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Dimensione del testo">
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
								<a href="#" class="nav-link dropdown-toggle" id="contrast-controls2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="Contrasto">
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
					<div class="glide__bullets" data-glide-el="controls[nav]"><button data-glide-dir="=0" class="glide__bullet" aria-label="Diapositiva 0"></button><button data-glide-dir="=1" class="glide__bullet" aria-label="Diapositiva 1"></button><button data-glide-dir="=2" class="glide__bullet" aria-label="Diapositiva 2"></button>
					</div>
				</div>
				<div class="glide__track" data-glide-el="track">
					<ul class="glide__slides">
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/23/1695811334_HEADER_HD_osta.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Zona economica speciale di Liepaja</h5><p class="animate__animated animate__fadeInUp">Porto</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-sez.lv/it/par-ostu/" aria-label="Scopri di più">Scopri di più</a>
							</div>
						</div>
					</li>
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/25/1695811369_HEADER_HD_razoshana.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Zona economica speciale di Liepaja</h5><p class="animate__animated animate__fadeInUp">Investire a Liepāja</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-sez.lv/it/investe-liepaja/" aria-label="Scopri di più">Scopri di più</a>
							</div>
						</div>
					</li>
					
					<li class="glide__slide jarallax-banner d-flex" style="background-image:url(&quot;https://liepaja-sez.lv/img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp&quot;)">
					<span class="filler"></span>
						<div class="container d-flex z-2">
							<div class="content"><h5 class="animate__animated animate__fadeInUp">Zona economica speciale di Liepaja</h5><p class="animate__animated animate__fadeInUp">Aeroporto</p><a class="animate__animated animate__fadeInUp" target="" href="//liepaja-airport.lv/" aria-label="Scopri di più">Scopri di più</a>
							</div>
						</div>
					</li>	</ul>
				</div>
				<div class="glide__arrows d-none d-lg-block" data-glide-el="controls">
					<button class="glide__arrow glide__arrow--left" data-glide-dir="<" aria-label="Indietro">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Indietro</span>
					</button>
					<button class="glide__arrow glide__arrow--right" data-glide-dir=">" aria-label="Avanti">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Avanti</span>
					</button>
				</div>
				
			</div>
			<div class="container pt-3">	<div class="magnet"><h1 class="block-title mb-5"> Liepāja - il posto migliore per investimenti e affari<span></span></h1>
						<div class="nocontrast row">						
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel2" class="carousel slide magnet1 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#001c43;">
										<div class="carousel-item active" style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vantaggi</h4>
												<p>Posizione geografica strategicamente vantaggiosa e porto al riparo dal gelo</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vantaggi</h4>
												<p>Accessibilità: porto, aeroporto, rete stradale e ferroviaria efficiente</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vantaggi</h4>
												<p>Condizioni operative flessibili</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vantaggi</h4>
												<p>Aree di sviluppo disponibili</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#001c43;">
												<div class="carousel-caption">
												<h4>Vantaggi</h4>
												<p>Strumenti efficaci di supporto agli imprenditori</p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel2" data-bs-slide="next" aria-label="Avanti">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Avanti"
											</span>
											<span class="visually-hidden">Avanti</span>
										</button>
									</div>
								</div>
							</div>
												
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel5" class="carousel slide magnet2 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#00377b;">
										<div class="carousel-item active" style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Opportunità di sviluppo</h4>
												<p>Aree di sviluppo libero</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Opportunità di sviluppo</h4>
												<p>Parchi industriali</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Opportunità di sviluppo</h4>
												<p>Tradizioni ed esperienza</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Opportunità di sviluppo</h4>
												<p>Disponibilità di manodopera qualificata</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#00377b;">
												<div class="carousel-caption">
												<h4>Opportunità di sviluppo</h4>
												<p>Una rete di comunicazioni ingegneristiche ben ponderata ed efficiente</p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel5" data-bs-slide="next" aria-label="Avanti">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Avanti"
											</span>
											<span class="visually-hidden">Avanti</span>
										</button>
									</div>
								</div>
							</div>
												
							<div class="col-12 col-lg-4 mb-5">
								<div id="magnetCarousel6" class="carousel slide magnet3 test" data-bs-ride="true" data-bs-touch="true">
									<div class="carousel-inner" style="background-color:#085ca8;">
										<div class="carousel-item active" style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Volumi di produzione nel settore manifatturiero - 478,6 milioni. EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Investimenti privati - 428,9 milioni. EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Esportazioni: 261,4 milioni di euro</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Tasse pagate - 29.904.310 EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Stipendio medio - 1663,66 EUR</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Fatturato delle merci portuali - 7.232.197,34 t</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Navi servite durante l'anno - 1602</p>
											
												</div>
										</div>
										<div class="carousel-item " style="background-color:#085ca8;">
												<div class="carousel-caption">
												<h4>Cifre e fatti</h4>
												<p>Investimenti di gestione della Liepaja SEZ - 149,9 milioni. EUR </p>
											
												</div>
										</div>
										<button class="carousel-control-next" type="button" data-bs-target="#magnetCarousel6" data-bs-slide="next" aria-label="Avanti">
											<span class="magnet-next" aria-hidden="true">
												<img src="https://liepaja-sez.lv/img/round-right.svg" class="img-fluid" alt="Avanti"
											</span>
											<span class="visually-hidden">Avanti</span>
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
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp" alt="Produzione a Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Investire a Liepāja</h1><p>L'amministrazione della SEZ di Liepāja e il comune della città creano un ambiente attraente per le imprese - un ecosistema economico unificato con l'obiettivo di promuovere lo sviluppo della città e della regione, attrarre nuovi imprenditori e sostenere l'espansione esistente, creare nuovi posti di lavoro con salari competitivi e aumentare il PIL e l'importo delle tasse pagate.</p><a target="" href="//liepaja-sez.lv/it/investe-liepaja/" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp" alt="Porto di Liepāja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Porto</h1><p>Il porto di Liepāja è il terzo più grande dei porti della Lettonia e la porta della città verso il resto del mondo. Il porto di Liepāja è l'essenza e il carattere della città. Liepaja, come tutte le città che hanno le proprie ostriche, pensa e vive in modo più ampio. Il porto di Liepāja con la sua favorevole posizione geografica tra est e ovest.</p><a target="" href="//liepaja-sez.lv/it/par-ostu/" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp" alt="Progetti di sviluppo">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Progetti di sviluppo</h1><p>In sinergia con gli imprenditori, l’amministrazione della ZES di Liepāja pianifica lo sviluppo a lungo termine e sviluppa progetti per promuovere la formazione di imprese basate sui principi fondamentali della circolazione e della crescita tecnologica.</p><a target="" href="//liepaja-sez.lv/it/attistibas-projekti/" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp" alt="Porto degli yacht">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Porto degli yacht</h1><p>Il porto turistico di Liepāja è l'unico in Lettonia che vanta il rispetto di 37 requisiti del certificato ecologico internazionale Bandiera Blu. Il porto degli yacht si trova nel suo luogo storico, nel centro della città, il che ti consente di goderti facilmente le attrazioni della città. Il centro della città, Piazza Rožu e il Centro di informazioni turistiche sono a cinque minuti di distanza, mentre la spiaggia stessa è a 15 minuti a piedi.</p><a target="" href="//liepaja-sez.lv/it/jahtu-osta" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block right">
                    <div class="row">
                        <div class="col-12 col-lg-7  jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp" alt="Aeroporto di Liepaja">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Aeroporto</h1><p>L'aeroporto di Liepāja è uno dei due aeroporti internazionali della Lettonia e, dopo la ricostruzione, è stato il primo aeroporto in Europa a sottoporsi al processo di certificazione secondo le norme recentemente approvate. </p><a target="_blank" href="//liepaja-airport.lv/" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				<div class="col-12 article-block left">
                    <div class="row">
                        <div class="col-12 col-lg-7 order-first order-lg-last jarallax">
                            <img loading="lazy" class="img-fluid jarallax-img"  src="https://liepaja-sez.lv/img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp" alt="Ponte Oskar Kalpak">
                        </div>
                        <div class="col-12 col-lg-5 article-block-text px-lg-5">
                            <h1>Ponte Oskar Kalpak</h1><p>Il ponte levatoio è uno dei ponti con struttura metallica più antichi della Lettonia, inaugurato nel 1906. Il Canale di Karosta è una rotta marittima attiva, quindi è aperto al traffico navale più volte al giorno. Per sapere se il ponte O. Kalpak è aperto è stata installata una webcam.</p><a target="" href="//liepaja-sez.lv/it/oskara-kalpaka-tilts/" aria-label="Scopri di più">Scopri di più</a>
                        </div>
                    </div>
                </div>
				</div>
			</div>
			<div class="news_three mb-5"><h1 class="block-title mb-5">Novità<span></span></h1>
				<div class="row">
				<div class="col-12 col-lg-9">
					<div id="newsCarousel69" class="carousel slide newsCarousel" data-ride="carousel">			
						<div class="carousel-indicators"> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Diapositiva0"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="1" class="" aria-current="true" aria-label="Diapositiva1"></button> <button type="button" data-bs-target="#newsCarousel69" data-bs-slide-to="2" class="" aria-current="true" aria-label="Diapositiva2"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/326/1792137601_75_10.16.2026._kino_kalpaka_tilts.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">16.10.2026.</span>
												<h3>Nell'ambito di un progetto cinematografico internazionale, il ponte O. Kalpak sarà chiuso al traffico per tre giorni</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/324/1791277284_72_10.06.2026._LIP_izsole_Eksporta_iela.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">06.10.2026.</span>
												<h3>Annuncio di un'asta per immobili nel parco industriale di Liepaja - via Eksporta 3</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/322/1790685711_I40A6032.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">29.09.2026.</span>
												<h3>La costruzione del parco industriale di Liepāja prosegue con la riabilitazione del territorio</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/liepajas-sez-valdes-25-septembra-lemumi" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/323/1790837289_70_09.28.2026._Brimer_vizualizacija.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">28.09.2026.</span>
												<h3>Decisioni del consiglio del 25 settembre del consiglio della SEZ di Liepāja</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/liepajas-sez-valdes-25-septembra-lemumi" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/319/1790069221_66_09.21.2026._LIP.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">21.09.2026.</span>
												<h3>Il parco industriale di Liepāja è incluso tra i 10 progetti industriali e logistici più interessanti al mondo in termini di investimenti</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/317/1788948830_63_09.08.2026._1_LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">09.09.2026.</span>
												<h3>Quest'anno la stagione del grano nel porto di Liepāja inizia più tardi rispetto agli altri anni </h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item ">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/316/1788941725_S9209229.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>I servizi portuali di Liepāja stanno diventando più accessibili</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/liepajas-ostas-pakalpojumi-klust-pieejamaki" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/315/1788766639_62_09.04.2026._kruīza kugis_3.1.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">04.09.2026.</span>
												<h3>7 navi da crociera e più di 4.000 ospiti - nel 2026 Liepāja continua a rafforzare la sua posizione sulla mappa delle crociere nel Baltico</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
										</div>
										<div class="col-12 col-md-6 col-lg-4 news-single">
											<div>
												<a href="https://liepaja-sez.lv/it/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana" aria-label="Leggi di più">
													<img src="https://liepaja-sez.lv/img/mod/news/311/1788428596_61_09.02.2026._LBT.webp" alt="" class="img-fluid mb-2"/>
												</a>
												<span class="mb-1">02.09.2026.</span>
												<h3>Nel porto di Liepāja continua l’accettazione del grano coltivato dagli agricoltori lettoni</h2>
											</div>
											<a href="https://liepaja-sez.lv/it/sakums/liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana" class="news_link mb-5" aria-label="Leggi di più">Leggi di più</a>											
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
							<a href="//liepaja-sez.lv/it/valdes-sedes/" target="">				
							<div class="carousel-caption"><img src="https://liepaja-sez.lv/img/mod/magnet/35/1709199402_VALDEs_seede.svg" class="img-fluid icon mb-4" alt="Icona"/>
								<h4>Riunione del consiglio </h4>
								<p>Termine ultimo per la presentazione dei documenti, da sottoporre all'esame della riunione del consiglio della SEZ di Liepāja</p>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			</div>				
				<img class="background" src="https://liepaja-sez.lv/img/bg2.svg" alt="Immagine di sfondo"/>
			</main>
			<footer class="footer">				
				<div class="container py-5">
					<div class="row">
						<div class="col-12 col-md-4 col-lg-2 footer-logo">
							<img class="img-fluid" src="https://liepaja-sez.lv/img/logo-white.svg" alt="logo" width="100">
                        </div>
						<div class="col-12 col-md-8 col-lg-5 mb-3 reqs">
								<p>Autorità della Zona Economica Speciale di Liepāja<br>Fēniksa iela 4, Liepāja,<br>LV-3401, Lettonia<br><br>Telefono: <a href="tel:+37163427605">+371 63427605</a><br>E-mail: <a href="mailto:lsez@lsez.lv">lsez@lsez.lv</a></p>						</div>
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
									<a href="#" aria-label="Torna in alto"><img src="https://liepaja-sez.lv/img/round-right.svg" alt="Torna in alto" class="img-fluid"></a>
								</div>
							</div>
						</div>
					</div>
				</div>	
				
				<div id="sticky-cookie" style="align-items: center; justify-content: center;">
					<img width="24" src="https://liepaja-sez.lv/img/cc.svg?=v5" alt="Impostazioni dei cookie" />
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
				<script defer src="/site/it/cookieconsent.js"></script>
			</footer>
		</body>
	</html>
		