/*
 * CookieConsent v2 DEMO config.
*/

// obtain cookieconsent plugin
var cc = initCookieConsent();

// run plugin with config object
cc.run({
    autorun : true, 
    delay : 0,
    current_lang : lang,
    auto_language : false,
    autoclear_cookies : true,
    cookie_expiration : 365,
    theme_css: '/cc/dist/cookieconsent.css',
    force_consent: false,

    /* New options from v2.4 (everything is optional) */
    // remove_cookie_tables: false              // default: false (if set to true, cookie table's html will not be generated)

    // cookie_domain: location.hostname,       	// default: current domain
    // cookie_path: "/",                        // default: root
    // cookie_same_site: "Lax",
    
    /* Manage existing <scripts> tags (check readme.md) */
    page_scripts: true,                         // default: false (by default don't manage existing script tags)

    /* Basic gui options */
    gui_options : {
        consent_modal : {
            layout : 'cloud',               // box(default),cloud,bar
            position : 'bottom center',     // bottom(default),top + left,right,center:=> examples: 'bottom' or 'top right'
            transition : 'slide'            // zoom(default),slide
        },
        settings_modal : {
            layout : 'box',                 // box(default),bar
            // position: 'left',            // right(default),left (available only if bar layout selected)
            transition : 'slide'            // zoom(default),slide
        }
    },

    /* End new options added in v2.4 */

    onAccept: function(cookie){
        //console.log("onAccept fired ...");
	
		if(cc.allowedCategory('analytics')){
			/*cc.loadScript('https://www.google-analytics.com/analytics.js', function(){		
				ga('create', 'UA-22556948-1', 'auto');
				ga('send', 'pageview');
				console.log("analytics.js loaded");
			});
			*/
			
			/*cc.loadScript('https://www.googletagmanager.com/gtag/js?id=AW-801583748', function(){		
				gtag('js', new Date());
				gtag('config', 'AW-801583748');
				console.log("googletagmanager loaded");
			});*/
			
			cc.loadScript('https://www.googletagmanager.com/gtag/js?id=G-FVKKNZT6PF', function(){
				window.dataLayer = window.dataLayer || [];
				function gtag(){dataLayer.push(arguments);}
				gtag('js', new Date());
				gtag('config', 'G-FVKKNZT6PF');
				console.log("analytics.js loaded");
			});
		}
		
		var sticky_cookie = document.getElementById("sticky-cookie");
		if (sticky_cookie) {
			sticky_cookie.style.display = "flex";
		}
		
    },

    onChange: function(cookie){
        //console.log("onChange fired ...");
    },

    languages : {
        'lv' : {	
            consent_modal : {
                title :  "Sīkdatnes",
                description :  'Šajā tīmekļa vietnē mēs izmantojam savas un trešo pušu sīkdatnes, lai nodrošinātu un uzlabotu mājaslapas darbību un analizētu apmeklējumu. Lai uzzinātu vairāk par mūsu sīkdatņu politiku, lūdzam noklikšķināt uz pogas <a target="_blank" href="https://liepaja-sez.lv/lv/sikdatnu-politika/" class="cc-link">Sīkdatņu politika</a>. <br><br>Jūs varat piekrist visām sīkdatnēm, noklikšķinot uz pogas “Piekrist visām” vai noraidīt tās, noklikšķinot uz pogas “Neapstiprināt”. Ja Jūs noklikšķinat uz pogas “Neapstiprināt”, tīmekļa vietnē saglabājas tikai obligāti nepieciešamās sīkdatnes, kuras ir nepieciešamas mājalapas darbības nodrošināšanai. <br><br> Savu izdarīto izvēli varat mainīt jebkurā brīdī, nospiežot sīkdatņu ikonu mājaslapas labajā stūrī izvietoto sīkdatņu ikonu <button class="custom" aria-label="Pielāgot izvēli" type="button" data-cc="c-settings">Pielāgot izvēli</button>',
                primary_btn: {
                    text: 'Piekrist visām',
                    role: 'accept_all'      //'accept_selected' or 'accept_all'
                },
                secondary_btn: {
                    text : 'Neapstiprināt',
                    role : 'accept_necessary'       //'settings' or 'accept_necessary'
                }
            },
            settings_modal : {
                title : '<div>Sīkdatnes</div>',
                save_settings_btn : "Apstiprināt atzīmētās",
                accept_all_btn : "Piekrist visām",
                close_btn_label: "Aizvērt",
				reject_all_btn: "Neapstiprināt",
                cookie_table_headers : [
                    {col1: "Sīkdatne" }, 
                    {col2: "Pakalpojuma sniedzējs" }, 
                    {col3: "Izmantošanas mērķis" }, 
                    {col4: "Glabāšanas termiņš" }
                ],
                blocks : [
                    {
                        title : "",
                        description: 'Ar Jūsu piekrišanu papildus šajā tīmekļa vietnē var tikt izmantotas statistikas sīkdatnes. Vairāk informācija par tīmekļa vietnē izmantotajām sīkdatnēm pieejama <a target="_blank" href="https://liepaja-sez.lv/lv/sikdatnu-politika/" class="cc-link">Sīkdatņu politikā</a>.'
                    },{
                        title : "Obligāti nepieciešamās sīkdatnes",
                        description: 'Šīs sīkdatnes nodrošina vietnes korektu darbību, nodrošinot tās pamata funkcijas, tajā skaitā atceroties tīmekļa vietnes apmeklētāja izdarīto valodas izvēli. Tīmekļa vietne bez šīm sīkdatnēm nevarēs pareizi funkcionēt. Tīmekļa vietnē tiek izmantotas šādas nepieciešamās sīkdatnes:',
                        toggle : {
                            value : 'necessary',
                            enabled : true,
                            readonly: true  //cookie categories with readonly=true are all treated as "necessary cookies"
                        },
						cookie_table: [
                            {
                                col1: 'PHPSESSID',
                                col2: 'liepaja-sez.lv',
                                col3: 'Nodrošināt saziņu ar tīmekļa vietnes serveri.',
                                col4: 'Uz sesijas laiku'
                            },
							{
                                col1: 'Cc_cookie',
                                col2: 'liepaja-sez.lv',
                                col3: 'Lai fiksētu apmeklētāja izdarīto izvēli attiecībā uz sīkdatņu izmantošanu.',
                                col4: '1 gads'
                            },
							{
                                col1: 'Public_lang',
                                col2: 'liepaja-sez.lv',
                                col3: 'Lai fiksētu un atcerētos apmeklētāja izmantoto valodu tīmekļa vietnē, nodrošinot apmeklētājam tīmekļa vietnes saturu atbilstošā valodā.',
                                col4: '72 stundas'
                            }
						]
                    },{
                        title : "Statistikas sīkdatnes",
                        description: 'Statistikas iegūšanai tīmekļa vietnē tiek izmantota uzņēmuma „Google Inc” programma „Google Analytics”, kura izmanto sīkdatnes, kas tiek glabātas apmeklētāja datorā un ļauj analizēt to, kā izmantojat Tīmekļa vietni. Tīmekļa vietnē tiek izmantotas šādas statistikas sīkdatnes: ',
                        toggle : {
                            value : 'analytics',
                            enabled : false,
                            readonly: false
                        },
                        cookie_table: [
						    {
                                col1: '_ga, _ga_FVKKNZT6PF',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Reģistrē unikālu ID, ko izmanto, lai ģenerētu statistikas datus par to, kā apmeklētājs izmanto šo vietni.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '2 gadi',
                            }
                        ]
                    }/*,{
                        title : "Mārketinga sīkdatnes",
                        description: 'Mārketinga sīkdatnes – tiek izmantotas, lai sekotu līdzi apmeklētājiem tīmekļa vietnēs un analizētu apmeklētāja intereses un, izveidojot apmeklētāja interešu digitālo profilu, ar nolūku piedāvāt apmeklētāja interesēm atbilstošākas reklāmas par precēm vai pakalpojumiem. Šāda veida sīkdatnes neuzglabā tiešu apmeklētāja personisko informāciju, bet balstās uz apmeklētāja pārlūkprogrammas un interneta ierīces unikālo identifikāciju. Tīmekļa vietnē tiek izmantotas google.com, facebook.com, youtube.com un adform.com sīkdatnes. Tāpat pie mārketinga sīkdatņu kategorijas pieskaitāmas sociālo mēdiju sīkdatnes, kas tīmekļa vietnē nonāk, lai nodrošinātu sociālo saziņas līdzekļu funkcijas, piemēram, ievietoto youtube.com videomateriāla atskaņošanu.',
                        toggle : {
                            value : 'targeting',
                            enabled : false,
                            readonly: false,
                            //reload: 'on_disable'            // New option in v2.4, check readme.md
                        },
                        cookie_table : [
                            {
                                col1: '_fbp',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: '3 mēneši'
                            },
							{
                                col1: '_gat_gtag_UA_',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai saglabātu unikālu apmeklētāja ID.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '1 minūte'
                            },
							{
                                col1: 'C',
                                col2: '<a target="_blank" href="https://liepaja-sez.lv/img/bg2.svg">Adform</a>',
                                col3: 'Lai pārbaudītu vai apmeklētāja pārlūkprogramma atbalsta sīkfailus.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Adform.',
                                col4: '30 dienas'
                            },
							                            {
                                col1: 'uid',
                                col2: '<a target="_blank" href="https://liepaja-sez.lv/img/bg2.svg">Adform</a>',
                                col3: 'Reģistrē unikālu ID, ko izmanto, lai atpazītu apmeklētājus, kas apmeklē tīmekļa vietnes, kuras izmanto vienu un to pašu reklāmas tīklu. Sīkdatnes mērķis ir optimizēt reklāmas rādīšanu pamatojoties uz apmeklētāja pārvietošanos starp šīm tīmekļa vietnēm.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Adform.',
                                col4: '2 mēneši'
                            },
							{
                                col1: 'fr',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: '3 mēneši'
                            },
							{
                                col1: 'tr',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'IDE',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai novērtētu izvietotās reklāmas efektivitāti ar mērķi radītu uz apmeklētāju mērķētas reklāmas.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '1 gads'
                            },
							{
                                col1: 'ads/ga-audiences',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai atkārtoti apmeklētāju piesaistītu tīmekļa vietnes apmeklējumam, izvietojot atbilstošas reklāmas.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'VISITOR_INFO1_LIVE',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Lai zinātu vai apmeklētājs ir atļāvis rādīt integrētos youtube.com video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '6 mēneši'
                            },
							{
                                col1: 'YSC',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Reģistrē unikālus apmeklētājus, lai saglabātu statistiku par skatītajiem youtube.com video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-cast-installed',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-connected-devices',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'pastāvīgi'
                            },
							{
                                col1: 'yt-remote-device-id',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'pastāvīgi'
                            },
							{
                                col1: 'yt-remote-fast-check-period',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-session-app',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-session-name',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            }
                        ]
                    }*/
                ]
            }
        },
		'en' : {	
            consent_modal : {
                title :  "Cookies",
                description :  'Šajā tīmekļa vietnē mēs izmantojam savas un trešo pušu sīkdatnes, lai nodrošinātu un uzlabotu tīmekļa vietnes darbību, analizētu vietnes apmeklējumu un īstenotu mārketinga aktivitātes. Lai uzzinātu vairāk par mūsu sīkdatņu politiku, lūdzam noklikšķināt uz pogas <a href="https://liepaja-sez.lv/en/cookies/" class="cc-link">Sīkdatņu politika</a> Savu izdarīto izvēli varat mainīt jebkurā brīdī, nospiežot lapas apakšā labajā stūrī pogu "Sīkdatnes". <a class="cc-link" href="javascript:void(0);" aria-label="Pielāgot izvēli" data-cc="c-settings" aria-haspopup="dialog">Pielāgot izvēli</a>',
                primary_btn: {
                    text: 'Accept',
                    role: 'accept_all'      //'accept_selected' or 'accept_all'
                },
                secondary_btn: {
                    text : 'Reject',
                    role : 'accept_necessary'       //'settings' or 'accept_necessary'
                }
            },
            settings_modal : {
                title : '<div>Cookie settings</div>',
                save_settings_btn : "Save settings",
                accept_all_btn : "Accept all",
                close_btn_label: "Close",
				reject_all_btn: "Reject",
                cookie_table_headers : [
                    {col1: "Sīkdatne" }, 
                    {col2: "Pakalpojuma sniedzējs" }, 
                    {col3: "Izmantošanas mērķis" }, 
                    {col4: "Glabāšanas termiņš" }
                ],
                blocks : [
                    {
                        title : "",
                        description: 'Ar Jūsu piekrišanu papildus šajā vietnē var tikt izmantotas statistikas un mārketinga sīkdatnes. <a href="https://liepaja-sez.lv/en/cookies/" class="cc-link">Sīkdatņu politika</a>.'
                    },{
                        title : "Obligāti nepieciešamās sīkdatnes",
                        description: 'Lai šī tīmekļvietne darbotos, tā izmanto obligāti nepieciešamās sīkdatnes.',
                        toggle : {
                            value : 'necessary',
                            enabled : true,
                            readonly: true  //cookie categories with readonly=true are all treated as "necessary cookies"
                        },
						cookie_table: [
                            {
                                col1: 'hex (32)',
                                col2: 'liepaja-sez.lv',
                                col3: 'Nodrošināt saziņu ar tīmekļa vietnes serveri.',
                                col4: 'Uz sesijas laiku'
                            },
							{
                                col1: 'cookiesDirective',
                                col2: 'liepaja-sez.lv',
                                col3: 'Lai fiksētu apmeklētāja izdarīto izvēli attiecībā uz sīkdatņu izmantošanu.',
                                col4: '72 stundas'
                            },
							{
                                col1: 'cpnb_Settings',
                                col2: 'liepaja-sez.lv',
                                col3: 'Lai fiksētu apmeklētāja izdarīto izvēli attiecībā uz sīkdatņu izmantošanu.',
                                col4: '1 gads'
                            },
							{
                                col1: 'cpnbCookiesDeclined',
                                col2: 'liepaja-sez.lv',
                                col3: 'Lai fiksētu apmeklētāja izdarīto izvēli attiecībā uz sīkdatņu izmantošanas aizliegumu.',
                                col4: '72 stundas'
                            },
							{
                                col1: 'cc_cookie',
                                col2: 'liepaja-sez.lv',
                                col3: 'Nosaka vai lietotājs ir piekritis sīkdatņu izmantošanas noteikumiem un vai turpmāk attēlot paziņojumu par sīkdatņu lietojumu.',
                                col4: '1 gads'
                            }
						]
                    },{
                        title : "Statistikas sīkdatnes",
                        description: 'Statistikas iegūšanai tīmekļa vietnē tiek izmantota uzņēmuma „Google Inc” programma „Google Analytics”, kura izmanto sīkdatnes, kas tiek glabātas apmeklētāja datorā un ļauj analizēt to, kā izmantojat tīmekļa vietni.',
                        toggle : {
                            value : 'analytics',
                            enabled : false,
                            readonly: false
                        },
                        cookie_table: [
						    {
                                col1: '_ga',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Reģistrē unikālu ID, ko izmanto, lai ģenerētu statistikas datus par to, kā apmeklētājs izmanto šo vietni.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '2 gadi',
                            },
							{
                                col1: '__utma',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Apkopo datus par pirmo un pēdējo apmeklēšanas reizi, kā arī cik reižu apmeklētājs ir apmeklējis vietni. Izmanto Google Analytics.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '2 gadi',
                            },
							{
                                col1: '_gat',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Izmanto Google Analytics, lai analizētu pieprasījumu skaitu mājas lapai.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '24 stundas',
                            },
							{
                                col1: '_gid',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Reģistrē unikālu ID, ko izmanto, lai ģenerētu statistikas datus par to, kā apmeklētājs izmanto šo vietni.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '24 stundas',
                            },
							{
                                col1: '_dc_gtm_UA-#',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Izmanto Google Tag menedžeri, lai kontrolētu Google Analyitics skripta ielādi.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '24 stundas',
                            }
                        ]
                    },{
                        title : "Mārketinga sīkdatnes",
                        description: 'Mārketinga nolūkos tīmekļa vietnē tiek izmantotas uzņēmuma „Google Inc”  mārketinga sīkdatnes, lai citās tīmekļa vietnēs apmeklētājam tiktu attēloti Liepājas speciālās ekonomiskās zonas pārvaldes reklāmas logi.',
                        toggle : {
                            value : 'targeting',
                            enabled : false,
                            readonly: false,
                            //reload: 'on_disable'            // New option in v2.4, check readme.md
                        },
                        cookie_table : [
                            {
                                col1: '_fbp',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: '3 mēneši'
                            },
							{
                                col1: '_gat_gtag_UA_',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai saglabātu unikālu apmeklētāja ID.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '1 minūte'
                            },
							{
                                col1: 'C',
                                col2: '<a target="_blank" href="https://liepaja-sez.lv/img/bg2.svg">Adform</a>',
                                col3: 'Lai pārbaudītu vai apmeklētāja pārlūkprogramma atbalsta sīkfailus.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Adform.',
                                col4: '30 dienas'
                            },
							                            {
                                col1: 'uid',
                                col2: '<a target="_blank" href="https://liepaja-sez.lv/img/bg2.svg">Adform</a>',
                                col3: 'Reģistrē unikālu ID, ko izmanto, lai atpazītu apmeklētājus, kas apmeklē tīmekļa vietnes, kuras izmanto vienu un to pašu reklāmas tīklu. Sīkdatnes mērķis ir optimizēt reklāmas rādīšanu pamatojoties uz apmeklētāja pārvietošanos starp šīm tīmekļa vietnēm.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Adform.',
                                col4: '2 mēneši'
                            },
							{
                                col1: 'fr',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: '3 mēneši'
                            },
							{
                                col1: 'tr',
                                col2: '<a target="_blank" href="https://www.facebook.com/privacy/policy/">Facebook (Meta Platforms, Inc.)</a>',
                                col3: 'Ar šīs Facebook Inc sīkdatnes palīdzību tiek veidots apmeklētājam pielāgots reklāmas saturs.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam Meta Platforms, Inc.',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'IDE',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai novērtētu izvietotās reklāmas efektivitāti ar mērķi radītu uz apmeklētāju mērķētas reklāmas.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '1 gads'
                            },
							{
                                col1: 'ads/ga-audiences',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Google</a>',
                                col3: 'Lai atkārtoti apmeklētāju piesaistītu tīmekļa vietnes apmeklējumam, izvietojot atbilstošas reklāmas.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'VISITOR_INFO1_LIVE',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Lai zinātu vai apmeklētājs ir atļāvis rādīt integrētos youtube.com video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: '6 mēneši'
                            },
							{
                                col1: 'YSC',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Reģistrē unikālus apmeklētājus, lai saglabātu statistiku par skatītajiem youtube.com video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-cast-installed',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-connected-devices',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'pastāvīgi'
                            },
							{
                                col1: 'yt-remote-device-id',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'pastāvīgi'
                            },
							{
                                col1: 'yt-remote-fast-check-period',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-session-app',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            },
							{
                                col1: 'yt-remote-session-name',
                                col2: '<a target="_blank" href="https://policies.google.com/privacy?hl=lv">Youtube</a>',
                                col3: 'Tiek saglabāti apmeklētāja youtube.com video iestatījumi, kas nepieciešami, lai atskaņotu video.<br><br>Personas dati var tikt nodoti ārpus ES/EEZ – uzņēmumam „Google Inc”',
                                col4: 'uz sesijas laiku'
                            }
                        ]
                    }
                ]
            }
        }
    }
});

function bn_modal_reload() {
	var s_all_bn = document.getElementById("s-all-bn");	
	if (s_all_bn) {
		s_all_bn.onclick = function() { location.reload(); };
	};
	
	var s_sv_bn = document.getElementById("s-sv-bn");	
	if (s_sv_bn) {
		s_sv_bn.onclick = function() { location.reload(); };
	};
	
	var s_rall_bn = document.getElementById("s-rall-bn");	
	if (s_rall_bn) {
		s_rall_bn.onclick = function() { location.reload(); };
	};
}

var sticky_cookie = document.getElementById("sticky-cookie");	
if (sticky_cookie) {
	sticky_cookie.onclick = function() { cc.showSettings(0); bn_modal_reload(); };
}

window.onload = function() {
	var c_p_bn = document.getElementById("c-p-bn");	
	if (c_p_bn) {
		c_p_bn.onclick = function() { location.reload(); };
	};
	
	var c_s_bn = document.getElementById("c-s-bn");	
	if (c_s_bn) {
		c_s_bn.onclick = function() { location.reload(); };
	};
}
