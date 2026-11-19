CREATE DATABASE IF NOT EXISTS liepaja_sez CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE liepaja_sez;

DROP TABLE IF EXISTS nav_items;
DROP TABLE IF EXISTS banners;
DROP TABLE IF EXISTS magnets;
DROP TABLE IF EXISTS index_blocks;
DROP TABLE IF EXISTS news;
DROP TABLE IF EXISTS pages;

-- 1. Navigation Menu (Matches exact Bootstrap 5 dropdown / dropend structure)
CREATE TABLE nav_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    parent_id INT DEFAULT NULL,
    lang ENUM('lv', 'en') NOT NULL,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(150) NOT NULL,
    sort_order INT DEFAULT 0
);

INSERT INTO nav_items (id, parent_id, lang, title, slug, sort_order) VALUES
-- Latvian (lv)
(1, NULL, 'lv', 'Sākums', 'sakums', 1),
(2, NULL, 'lv', 'Liepājas SEZ', 'liepajas-sez', 2),
(3, NULL, 'lv', 'Pārvalde', 'parvalde', 3),
(4, NULL, 'lv', 'Jaunumi', 'jaunumi-1', 4),
(5, NULL, 'lv', 'Dokumenti', 'dokumenti', 5),
(6, NULL, 'lv', 'Kontakti', 'kontakti', 6),

(7, 2, 'lv', 'Investē Liepājā', 'investe-liepaja', 1),
(8, 2, 'lv', 'Osta', 'osta', 2),
(9, 8, 'lv', 'Par ostu', 'par-ostu', 1),
(10, 8, 'lv', 'Prāmju satiksme', 'pramju-satiksme', 2),
(11, 8, 'lv', 'Kruīza kuģi', 'kruiza-kugi', 3),
(12, 8, 'lv', 'Jahtu osta', 'jahtu-osta', 4),
(13, 8, 'lv', 'Oskara Kalpaka tilts', 'oskara-kalpaka-tilts', 5),
(14, 2, 'lv', 'Kapitālsabiedrības', 'kapitalsabiedribas', 3),
(15, 2, 'lv', 'Attīstības projekti', 'attistibas-projekti', 4),
(16, 2, 'lv', 'Darbs Liepājā', 'darbs-liepaja', 5),
(17, 2, 'lv', 'Teritoriju karte', 'teritoriju-karte', 6),

(18, 3, 'lv', 'Pārvaldība', 'parvaldiba', 1),
(19, 3, 'lv', 'Korporatīvā pārvaldība', 'korporativa-parvaldiba', 2),
(20, 3, 'lv', 'Iepirkumi un izsoles', 'iepirkumi-un-izsoles', 3),
(21, 3, 'lv', 'Darbības pārskati', 'darbibas-parskati', 4),
(22, 21, 'lv', 'Valdes sēdes lēmumi', 'valdes-sedes-lemumi', 1),
(23, 21, 'lv', 'Atskaites par darbību', 'atskaites-par-darbibu', 2),
(24, 21, 'lv', 'Ostas statistika', 'ostas-statistika', 3),

(25, 4, 'lv', 'Medijiem', 'medijiem', 1),
(26, 4, 'lv', 'Foto', 'foto', 2),
(27, 4, 'lv', 'Valdes sēdes', 'valdes-sedes', 3),

-- English (en)
(101, NULL, 'en', 'Home', 'home', 1),
(102, NULL, 'en', 'Liepaja SEZ', 'liepaja-sez', 2),
(103, NULL, 'en', 'Authority', 'authority', 3),
(104, NULL, 'en', 'News', 'news', 4),
(105, NULL, 'en', 'Documents', 'documents', 5),
(106, NULL, 'en', 'Contacts', 'contacts', 6),

(107, 102, 'en', 'Invest in Liepaja', 'invest-in-liepaja', 1),
(108, 102, 'en', 'Port', 'port', 2),
(109, 108, 'en', 'About Port', 'about-port', 1),
(110, 108, 'en', 'Ferry traffic', 'ferry-traffic', 2),
(111, 108, 'en', 'Cruising', 'cruising', 3),
(112, 108, 'en', 'Liepaja Marina', 'liepaja-marina', 4),
(113, 108, 'en', 'Oskars Kalpaks bridge', 'oskars-kalpaks-bridge', 5),
(114, 102, 'en', 'Commercial Companies', 'lsez-commercial-companies', 3),
(115, 102, 'en', 'Development projects', 'development-projects', 4),
(116, 102, 'en', 'Job vacancies', 'job-vacancies', 5),
(117, 102, 'en', 'Map of territories', 'map-of-territories', 6),

(118, 103, 'en', 'Governance', 'governance', 1),
(119, 103, 'en', 'Corporate governance', 'corporate-governance', 2),
(120, 103, 'en', 'Procurement and auctions', 'public-procurement', 3),
(121, 103, 'en', 'Activity reports', 'activity-reports', 4),
(122, 121, 'en', 'Board meeting decisions', 'board-meeting-decisions', 1),
(123, 121, 'en', 'Activity reports', 'activity-reports-list', 2),
(124, 121, 'en', 'Port statistics', 'port-statistics', 3),

(125, 104, 'en', 'Press releases', 'press-releases', 1),
(126, 104, 'en', 'Photos', 'photos', 2);

-- 2. Glide + Jarallax Hero Banners
CREATE TABLE banners (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang ENUM('lv', 'en') NOT NULL,
    heading VARCHAR(200) NOT NULL,
    subheading VARCHAR(200) NOT NULL,
    btn_text VARCHAR(100) NOT NULL,
    link_url VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    sort_order INT DEFAULT 0
);

INSERT INTO banners (lang, heading, subheading, btn_text, link_url, image_url, sort_order) VALUES
('lv', 'Liepājas speciālā ekonomiskā zona', 'Osta', 'Uzzināt vairāk', '?lang=lv&page=par-ostu', 'https://liepaja-sez.lv/img/block/banner/23/1695811334_HEADER_HD_osta.webp', 1),
('lv', 'Liepājas speciālā ekonomiskā zona', 'Investē Liepājā', 'Uzzināt vairāk', '?lang=lv&page=investe-liepaja', 'https://liepaja-sez.lv/img/block/banner/25/1695811369_HEADER_HD_razoshana.webp', 2),
('lv', 'Liepājas speciālā ekonomiskā zona', 'Lidosta', 'Uzzināt vairāk', 'https://liepaja-airport.lv/', 'https://liepaja-sez.lv/img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp', 3),

('en', 'Liepaja Special Economic Zone', 'Port', 'Read more', '?lang=en&page=about-port', 'https://liepaja-sez.lv/img/block/banner/23/1695811334_HEADER_HD_osta.webp', 1),
('en', 'Liepaja Special Economic Zone', 'Invest in Liepaja', 'Read more', '?lang=en&page=invest-in-liepaja', 'https://liepaja-sez.lv/img/block/banner/25/1695811369_HEADER_HD_razoshana.webp', 2),
('en', 'Liepaja Special Economic Zone', 'Airport', 'Read more', 'https://liepaja-airport.lv/', 'https://liepaja-sez.lv/img/block/banner/26/1709034907_49680714076_5b364a2426_k.webp', 3);

-- 3. Magnet Carousels (#magnetCarousel2, #magnetCarousel5, #magnetCarousel6)
CREATE TABLE magnets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang ENUM('lv', 'en') NOT NULL,
    carousel_id VARCHAR(50) NOT NULL,
    magnet_class VARCHAR(50) NOT NULL,
    bg_color VARCHAR(20) NOT NULL,
    title VARCHAR(150) NOT NULL,
    body_text TEXT NOT NULL,
    is_active TINYINT(1) DEFAULT 0,
    sort_order INT DEFAULT 0
);

INSERT INTO magnets (lang, carousel_id, magnet_class, bg_color, title, body_text, is_active, sort_order) VALUES
-- LV Magnet 1 (#001c43)
('lv', 'magnetCarousel2', 'magnet1', '#001c43', 'Priekšrocības', 'Stratēģiski izdevīga ģeogrāfiskā atrašanās vieta un neaizsalstoša osta', 0, 1),
('lv', 'magnetCarousel2', 'magnet1', '#001c43', 'Priekšrocības', 'Pieejamība - osta, lidosta, efektīvs auto un dzelzceļa tīkls', 0, 2),
('lv', 'magnetCarousel2', 'magnet1', '#001c43', 'Priekšrocības', 'Elastīgi darbības priekšnoteikumi', 0, 3),
('lv', 'magnetCarousel2', 'magnet1', '#001c43', 'Priekšrocības', 'Pieejamas attīstības teritorijas', 0, 4),
('lv', 'magnetCarousel2', 'magnet1', '#001c43', 'Priekšrocības', 'Efektīvi atbalsta instrumenti uzņēmējiem', 1, 5),
-- LV Magnet 2 (#00377b)
('lv', 'magnetCarousel5', 'magnet2', '#00377b', 'Attīstības iespējas', 'Brīvas attīstības teritorijas', 0, 1),
('lv', 'magnetCarousel5', 'magnet2', '#00377b', 'Attīstības iespējas', 'Industriālie parki', 0, 2),
('lv', 'magnetCarousel5', 'magnet2', '#00377b', 'Attīstības iespējas', 'Tradīcijas un pieredze', 0, 3),
('lv', 'magnetCarousel5', 'magnet2', '#00377b', 'Attīstības iespējas', 'Kvalificēta darbaspēka pieejamība', 1, 4),
('lv', 'magnetCarousel5', 'magnet2', '#00377b', 'Attīstības iespējas', 'Pārdomāts un efektīvs inženierkomunikāciju tīkls', 0, 5),
-- LV Magnet 3 (#085ca8)
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Ražošanas apjomi apstrādes rūpniecībā - 478,6 milj. EUR', 1, 1),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Privātās investīcijas - 428,9 milj. EUR', 0, 2),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Eksports - 261,4 milj. EUR', 0, 3),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Nomaksātie nodokļi - 29 904 310 EUR', 0, 4),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Vidējā darba alga - 1663,66 EUR', 0, 5),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Ostas kravu apgrozījums - 7 232 197,34 t', 0, 6),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Apkalpotie kuģi gada laikā - 1602', 0, 7),
('lv', 'magnetCarousel6', 'magnet3', '#085ca8', 'Skaitļi un fakti', 'Liepājas SEZ pārvaldes investīcijas - 149,9 milj. EUR', 0, 8),

-- EN Magnet 1 (#001c43)
('en', 'magnetCarousel2', 'magnet1', '#001c43', 'Advantages', 'Strategically advantageous geographical location and ice-free port', 1, 1),
('en', 'magnetCarousel2', 'magnet1', '#001c43', 'Advantages', 'Accessibility - port, airport, efficient road and rail network', 0, 2),
('en', 'magnetCarousel2', 'magnet1', '#001c43', 'Advantages', 'Flexible operating conditions', 0, 3),
('en', 'magnetCarousel2', 'magnet1', '#001c43', 'Advantages', 'Available development territories', 0, 4),
('en', 'magnetCarousel2', 'magnet1', '#001c43', 'Advantages', 'Effective support instruments for entrepreneurs', 0, 5),
-- EN Magnet 2 (#00377b)
('en', 'magnetCarousel5', 'magnet2', '#00377b', 'Development opportunities', 'Free development areas', 1, 1),
('en', 'magnetCarousel5', 'magnet2', '#00377b', 'Development opportunities', 'Industrial parks', 0, 2),
('en', 'magnetCarousel5', 'magnet2', '#00377b', 'Development opportunities', 'Traditions and experience', 0, 3),
('en', 'magnetCarousel5', 'magnet2', '#00377b', 'Development opportunities', 'Availability of qualified workforce', 0, 4),
('en', 'magnetCarousel5', 'magnet2', '#00377b', 'Development opportunities', 'A well-thought-out and efficient network of engineering communications', 0, 5),
-- EN Magnet 3 (#085ca8)
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Manufacturing output - 478.6M EUR', 1, 1),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Private investments - 428.9M EUR', 0, 2),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Exports - 261.4M EUR', 0, 3),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Taxes paid - 29 904 310 EUR', 0, 4),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Average wage - 1663.66 EUR', 0, 5),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Port cargo turnover - 7 232 197.34 t', 0, 6),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Vessels served per year - 1602', 0, 7),
('en', 'magnetCarousel6', 'magnet3', '#085ca8', 'Facts and figures', 'Liepaja SEZ Authority investments - 149.9M EUR', 0, 8);

-- 4. Alternating Parallax Article Blocks (.index .article-block.right / .left)
CREATE TABLE index_blocks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang ENUM('lv', 'en') NOT NULL,
    alignment ENUM('right', 'left') NOT NULL,
    title VARCHAR(150) NOT NULL,
    img_alt VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    link_url VARCHAR(255) NOT NULL,
    btn_text VARCHAR(100) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    target_blank TINYINT(1) DEFAULT 0,
    sort_order INT DEFAULT 0
);

INSERT INTO index_blocks (lang, alignment, title, img_alt, description, link_url, btn_text, image_url, target_blank, sort_order) VALUES
('lv', 'right', 'Investē Liepājā', 'Ražošana Liepājā', 'Liepājas SEZ pārvalde un pilsētas pašvaldība veido uzņēmējdarbībai pievilcīgu vidi - vienotu ekonomikas ekosistēmu ar mērķi veicināt pilsētas un reģiona attīstību, piesaistīt jaunus uzņēmējus un atbalstīt esošo paplašināšanos, radīt jaunas darbavietas ar konkurētspējīgu atalgojumu un palielināt IKP un nomaksāto nodokļu daudzumu.', '?lang=lv&page=investe-liepaja', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp', 0, 1),
('lv', 'left', 'Osta', 'Liepājas osta', 'Liepājas osta ir trešā lielākā no Latvijas ostām un pilsētas vārti uz plašo pasauli. Liepājas osta ir pilsētas būtība un raksturs. Liepāja kā visas pilsētas, kurām ir savas ostras domā un dzīvo plašāk. Liepājas osta ar savu izdevīgo ģeogrāfisko novietojumu starp austrumiem un rietumiem.', '?lang=lv&page=par-ostu', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp', 0, 2),
('lv', 'right', 'Attīstības projekti', 'Attīstības projekti', 'Sinerģijā ar uzņēmējiem Liepājas SEZ pārvalde plāno ilgtermiņa attīstību un izstrādā projektus, lai veicinātu uzņēmumu veidošanos, kas balstīti uz aprites un tehnoloģiskās izaugsmes pamatprincipiem.', '?lang=lv&page=attistibas-projekti', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp', 0, 3),
('lv', 'left', 'Jahtu osta', 'Jahtu osta', 'Liepājas Jahtu osta ir vienīgā Latvijā, kas lepojas atbilstību 37 starptautiskā ekosertifikāta Zilais karogs prasībām. Jahtu osta atrodas savā vēsturiskajā vietā - pilsētas centrā, kas ļauj ērti izbaudīt pilsētas pievilcību. Piecu minūšu attālumā pilsētas centrs, Rožu laukums un Tūrisma informācijas centrs, bet pludmale vien 15 minūšu pastaigas attālumā.', '?lang=lv&page=jahtu-osta', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp', 0, 4),
('lv', 'right', 'Lidosta', 'Liepājas lidosta', 'Liepājas lidosta ir viena no divām Latvijas starptautiskajām lidostām, kas pēc rekonstrukcijas bija pirmā lidosta Eiropā, kura izgāja sertifikācijas procesu pēc jaunapstiprinātajām regulām.', 'https://liepaja-airport.lv/', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp', 1, 5),
('lv', 'left', 'Oskara Kalpaka tilts', 'Oskara Kalpaka tilts', 'Izgriežamais tilts viens no vecākajiem metālkonstrukciju tiltiem Latvijā, kas atklāts 1906. gadā. Karostas kanāls ir aktīvs kuģniecības ceļš, tāpēc vairākas reizes diennaktī tiek atvērts kuģu satiksmei. Lai noskaidrotu, vai O. Kalpaka tilts ir atvērts, uzstādīta webkamera.', '?lang=lv&page=oskara-kalpaka-tilts', 'Uzzināt vairāk', 'https://liepaja-sez.lv/img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp', 0, 6),

('en', 'right', 'Invest in Liepaja', 'Manufacturing in Liepaja', 'Liepāja Special Economic Zone is a ready platform for industrial investment in the European Union. It combines the port, airport and industrial areas into one managed system. Investors benefit from tax incentives, strong infrastructure and full multimodal access.', '?lang=en&page=invest-in-liepaja', 'Read more', 'https://liepaja-sez.lv/img/block/index/8/1701807159_FRONTPAGE_1000x100px_Investee.webp', 0, 1),
('en', 'left', 'Port', 'Liepaja Port', 'The Port of Liepaja is the third largest port in Latvia and the citys gateway to the wide world, strategically positioned between East and West.', '?lang=en&page=about-port', 'Read more', 'https://liepaja-sez.lv/img/block/index/9/1695811507_FRONTPAGE_1000x100px_Osta.webp', 0, 2),
('en', 'right', 'Development projects', 'Development projects', 'In synergy with entrepreneurs, the Liepaja SEZ Authority plans long-term development and designs projects to foster companies based on circular and technological growth principles.', '?lang=en&page=development-projects', 'Read more', 'https://liepaja-sez.lv/img/block/index/10/1695811515_FRONTPAGE_1000x100px_AttProj.webp', 0, 3),
('en', 'left', 'Liepaja Marina', 'Liepaja Marina', 'Liepaja Marina is the only marina in Latvia proud of complying with all 37 international Blue Flag eco-certificate requirements, located right in the historical city center.', '?lang=en&page=liepaja-marina', 'Read more', 'https://liepaja-sez.lv/img/block/index/11/1695811522_FRONTPAGE_1000x100px_JahtuOsta.webp', 0, 4),
('en', 'right', 'Airport', 'Liepaja Airport', 'Liepaja Airport is one of two international airports in Latvia, and after reconstruction was the first airport in Europe certified under the newly approved regulations.', 'https://liepaja-airport.lv/', 'Read more', 'https://liepaja-sez.lv/img/block/index/12/1695811531_FRONTPAGE_1000x100px_Lidosta.webp', 1, 5),
('en', 'left', 'Oskars Kalpaks bridge', 'Oskars Kalpaks bridge', 'Opened in 1906, the swing bridge is one of the oldest metal structure bridges in Latvia. Because the Karosta Canal is an active shipping route, it opens several times a day.', '?lang=en&page=oskars-kalpaks-bridge', 'Read more', 'https://liepaja-sez.lv/img/block/index/27/1707296351_416041889_368154519244518_5409449159534795603_n.webp', 0, 6);

-- 5. News Carousel Items (Exact WebP URLs & slugs from DevTools)
CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang ENUM('lv', 'en') NOT NULL,
    date_label VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    sort_order INT DEFAULT 0
);

INSERT INTO news (lang, date_label, title, slug, image_url, sort_order) VALUES
('lv', '16.10.2026.', 'Starptautiska kino projekta ietvaros trīs dienas satiksmei būs slēgts O. Kalpaka tilts', 'tris-dienas-satiksmei-bus-slegts-okalpaka-tilts-starptautiska-kino-projekta-ietvaros', 'https://liepaja-sez.lv/img/mod/news/326/1792137601_75_10.16.2026._kino_kalpaka_tilts.webp', 1),
('lv', '06.10.2026.', 'Izsludina izsoli par nekustamo īpašumu Liepājas Industriālajā parkā - Eksporta ielā 3', 'izsludina-izsoli-par-nekustamo-ipasumu-liepajas-industrialaja-parka-eksporta-iela-3', 'https://liepaja-sez.lv/img/mod/news/324/1791277284_72_10.06.2026._LIP_izsole_Eksporta_iela.webp', 2),
('lv', '29.09.2026.', 'Ar teritorijas sanāciju turpina Liepājas industriālā parka izbūvi', 'ar-teritorijas-sanaciju-turpina-liepajas-industriala-parka-izbuvi', 'https://liepaja-sez.lv/img/mod/news/322/1790685711_I40A6032.webp', 3),
('lv', '28.09.2026.', 'Liepājas SEZ valdes 25. septembra lēmumi', 'liepajas-sez-valdes-25-septembra-lemumi', 'https://liepaja-sez.lv/img/mod/news/323/1790837289_70_09.28.2026._Brimer_vizualizacija.webp', 4),
('lv', '21.09.2026.', 'Liepājas Industriālais parks iekļauts pasaules TOP 10 investīcijām pievilcīgāko industriālo un loģistikas projektu vidū', 'liepajas-industrialais-parks-ieklauts-pasaules-top-10-investicijam-pievilcigako-industrial', 'https://liepaja-sez.lv/img/mod/news/319/1790069221_66_09.21.2026._LIP.webp', 5),
('lv', '09.09.2026.', 'Šogad graudaugu sezona Liepājas ostā sākas vēlāk nekā citus gadus', 'sogad-graudaugu-sezona-liepajas-osta-sakas-velak-neka-citus-gadus', 'https://liepaja-sez.lv/img/mod/news/317/1788948830_63_09.08.2026._1_LBT.webp', 6),
('lv', '04.09.2026.', 'Liepājas ostas pakalpojumi kļūst pieejamāki', 'liepajas-ostas-pakalpojumi-klust-pieejamaki', 'https://liepaja-sez.lv/img/mod/news/316/1788941725_S9209229.webp', 7),
('lv', '04.09.2026.', '7 kruīza kuģi un vairāk nekā 4 000 viesu - 2026. gadā Liepāja turpina nostiprināties Baltijas kruīzu kartē', '7-kruiza-kugi-un-vairak-neka-4-000-viesu-2026-gada-liepaja-turpina-nostiprinaties-baltijas', 'https://liepaja-sez.lv/img/mod/news/315/1788766639_62_09.04.2026._kruīza kugis_3.1.webp', 8),
('lv', '02.09.2026.', 'Liepājas ostā turpinās Latvijas zemnieku izaudzēto graudu pieņemšana', 'liepajas-osta-turpinas-latvijas-zemnieku-izaudzeto-graudu-pienemsana', 'https://liepaja-sez.lv/img/mod/news/311/1788428596_61_09.02.2026._LBT.webp', 9),

('en', '04.09.2026.', 'Port Services in the Port of Liepaja Become More Accessible', 'port-services-become-more-accessible', 'https://liepaja-sez.lv/img/mod/news/316/1788941725_S9209229.webp', 1),
('en', '04.09.2026.', 'Seven Cruise Ships, 4,276 Visitors and Growing Demand: Liepaja Strengthens Its Position on the Baltic Cruise Map', 'seven-cruise-ships-2026', 'https://liepaja-sez.lv/img/mod/news/315/1788766639_62_09.04.2026._kruīza kugis_3.1.webp', 2),
('en', '02.09.2026.', 'Port of Liepaja Continues Handling Grain Grown by Latvian Farmers', 'port-of-liepaja-continues-handling-grain', 'https://liepaja-sez.lv/img/mod/news/311/1788428596_61_09.02.2026._LBT.webp', 3);

-- 6. Crawled Subpages (LV & EN)
CREATE TABLE pages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang ENUM('lv', 'en') NOT NULL,
    slug VARCHAR(150) NOT NULL,
    title VARCHAR(200) NOT NULL,
    body_html LONGTEXT NOT NULL,
    UNIQUE KEY (lang, slug)
);

INSERT INTO pages (lang, slug, title, body_html) VALUES
('lv', 'investe-liepaja', 'Investē Liepājā', '
<p class="lead">Mūsu mērķis ir palielināt pilsētas un reģiona ekonomisko kapacitāti, stiprināt Liepājas konkurētspēju Baltijas un Eiropas mērogā, piesaistot jaunus investorus, atbalstot esošo uzņēmumu izaugsmi un radot labvēlīgus apstākļus jaunu darbavietu izveidei.</p>
<h3>Priekšrocības un attīstības iespējas</h3>
<ul>
  <li>Stratēģiski izdevīga ģeogrāfiska atrašanās vieta, lielākais reģionālais industriālais centrs Latvijā. Industriālie parki un pieejamas teritorijas, pārdomāts un efektīvs inženierkomunikāciju tīkls.</li>
  <li>Kvalitatīva uzņēmējdarbības vide ar vienotu infrastruktūru, vienotā pārvaldība un efektīvi atbalsta instrumenti uzņēmējiem.</li>
  <li>Liepājas SEZ - atbalsta instrumenti uzņēmējdarbībai jau vairāk kā 25 gadus – tiešās un netiešās nodokļu atlaides.</li>
  <li>Pieejamība – osta, lidostas, dzelzceļš, autoceļi - savienojamība ar plašiem loģistikas tīkliem.</li>
  <li>Cilvēkresursi un plašas izglītības iespējas, kvalificēta darbaspēka pieejamība.</li>
</ul>
<h3 class="mt-4">Industriālie parki</h3>
<div class="row g-4 mt-2">
  <div class="col-md-6"><div class="p-4 border rounded"><h4>Liepājas industriālais parks</h4><p>Kontaktpersona: Laura Adamoviča, projektu vadītāja<br>Tālrunis: (+371) 20501905<br>E-pasts: laura.adamovica@lsez.lv</p></div></div>
  <div class="col-md-6"><div class="p-4 border rounded"><h4>Karostas industriālais parks</h4><p>Teritorija sastāv no 28 atsevišķiem zemes gabaliem, kas aprīkoti ar apbūvei nepieciešamajām inženierkomunikācijām.<br>Kontaktpersona: Raivo Špaks (+371 29294267, raivo.spaks@lsez.lv)</p></div></div>
</div>'),

('en', 'invest-in-liepaja', 'Invest in Liepaja', '
<p class="lead">Liepāja Special Economic Zone is a ready platform for industrial investment in the European Union. It combines the port, airport and industrial areas into one managed system. Investors benefit from tax incentives, strong infrastructure and full multimodal access.</p>
<h3>Advantages and Development opportunities</h3>
<ul>
  <li>The largest regional industrial center in Latvia. Industrial parks and development areas.</li>
  <li>High-quality business environment with unified infrastructure and unified management.</li>
  <li>Liepāja SEZ - support tools for business for more than 25 years - direct and indirect tax incentives.</li>
  <li>Accessibility - seaport, airports, railways, roads - connectivity with extensive logistics networks.</li>
</ul>
<h3 class="mt-4">Industrial parks</h3>
<div class="row g-4 mt-2">
  <div class="col-md-6"><div class="p-4 border rounded"><h4>Liepaja Industrial Park</h4><p>Transforming the former Liepajas Metalurgs territory into a modern and sustainable industrial park.<br>Contact: Laura Adamoviča (+371 20501905, laura.adamovica@lsez.lv)</p></div></div>
  <div class="col-md-6"><div class="p-4 border rounded"><h4>Karosta & Meldru Street Industrial Parks</h4><p>Equipped with full engineering communications.<br>Contact: Raivo Špaks (+371 29294267, raivo.spaks@lsez.lv)</p></div></div>
</div>'),

('lv', 'par-ostu', 'Par ostu - Ostas raksturojums', '
<div class="row g-4">
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Ostas parametri</h4><p>Ostas teritorija: <strong>1 197 ha</strong><br>Kuģu maksimālā iegrime: <strong>12.8 m</strong><br>Kuģu maksimālais platums: <strong>35 m</strong><br>Kuģu maksimālais garums: <strong>240 m</strong></p></div></div>
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Piestātnes</h4><p>Aktīvo piestātņu kopējais skaits: <strong>47</strong><br>Beramkravu un ģenerālkravu: <strong>4 800 m</strong><br>Lejamkravu piestātņu garums: <strong>550 m</strong><br>Zvejas kuģiem, jahtām: <strong>1 700 m</strong></p></div></div>
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Termināļu noliktavas</h4><p>Atklātie kravu laukumi: <strong>545 000 m²</strong><br>Slēgtās noliktavas: <strong>160 000 m²</strong><br>Lejamkravu rezervuāri: <strong>115 000 m³</strong><br>Sauskravu silosi: <strong>45 000 m³</strong></p></div></div>
</div>'),

('en', 'about-port', 'About Port - Port Characteristics', '
<div class="row g-4">
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Port Parameters</h4><p>Port territory: <strong>1,197 ha</strong><br>Max vessel draft: <strong>12.8 m</strong><br>Max vessel beam: <strong>35 m</strong><br>Max vessel length: <strong>240 m</strong></p></div></div>
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Berths</h4><p>Total active berths: <strong>47</strong><br>Dry bulk & general cargo: <strong>4,800 m</strong><br>Liquid bulk berths: <strong>550 m</strong><br>Fishing & yachts: <strong>1,700 m</strong></p></div></div>
  <div class="col-md-4"><div class="p-4 border rounded"><h4>Storage Capacities</h4><p>Open storage areas: <strong>545,000 m²</strong><br>Closed warehouses: <strong>160,000 m²</strong><br>Liquid bulk tanks: <strong>115,000 m³</strong><br>Dry bulk silos: <strong>45,000 m³</strong></p></div></div>
</div>'),

('lv', 'oskara-kalpaka-tilts', 'Oskara Kalpaka tilts', '
<p>Tilts atklāts 1906. gada 19. augustā un tas ir viens no visvecākajiem Latvijas metālkonstrukciju tiltiem, inženiertehnikas piemineklis. Tilts sver 300 tonnu un tas sastāv no divām daļām (Ziemeļu un Dienvidu puses), kas veidotas no divām vienādām konsolēm.</p>
<p>Tilta brauktuves platums ir 7.3 metri, kuras klājs ir veidots no koka dēļiem. Krasta konsoles garums ir 27.55 metri, bet kanāla – 38.95 metri. Tilta kopējais garums ir 133 metri ar laiduma shēmu 27.55 m + 77.9 m + 27.55 m. Tilta augstums virs ūdens līmeņa ir 8.32 metri.</p>'),

('en', 'oskars-kalpaks-bridge', 'Oskars Kalpaks bridge', '
<p>Opened on August 19, 1906, the swing bridge is one of the oldest metal structure bridges in Latvia and an engineering monument. Weighing 300 tons, it consists of two equal pivot cantilevers (North and South).</p>
<p>The roadway width is 7.3 meters with a wooden deck. Total bridge length is 133 meters (27.55 m + 77.9 m + 27.55 m) and clearance above water level is 8.32 meters.</p>'),

('lv', 'jahtu-osta', 'Jahtu osta', '
<p>Liepājas Jahtu osta ir vienīgā Latvijā, kas lepojas ar atbilstību 37 starptautiskā ekosertifikāta Zilais karogs prasībām. Lai ilgtermiņa pietauvošanai piemērotu mēneša maksas tarifu, minimālais jahtas/kutera pietauvošanas līguma noslēgšanas termiņš ir 2 mēneši.</p>'),

('en', 'liepaja-marina', 'Liepaja Marina', '
<p>Liepaja Marina is the only marina in Latvia awarded the Blue Flag international eco-certificate, located in the historical city center on the Trade Canal.</p>'),

('lv', 'kapitalsabiedribas', 'Liepājas SEZ kapitālsabiedrības', '
<div class="row text-center g-4 my-3">
  <div class="col-md-3"><div class="p-4 border rounded"><h2>47</h2><p>LSEZ kapitālsabiedrību skaits</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>2624</h2><p>strādājošo skaits LSEZ uzņēmumos</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>4 252 844,78 €</h2><p>investīcijas būvniecībā un modernās tehnoloģijās</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>14 659 977,89 €</h2><p>LSEZ kapitālsabiedrību veiktās investīcijas ar nodokļu atlaidēm</p></div></div>
</div>'),

('en', 'lsez-commercial-companies', 'Liepaja SEZ Commercial Companies', '
<div class="row text-center g-4 my-3">
  <div class="col-md-3"><div class="p-4 border rounded"><h2>47</h2><p>number of LSEZ companies</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>2624</h2><p>number of employees in LSEZ companies</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>4 252 844,78 €</h2><p>investments in construction and state-of-art technologies</p></div></div>
  <div class="col-md-3"><div class="p-4 border rounded"><h2>14 659 977,89 €</h2><p>investments made by Liepaja SEZ companies subject to tax incentives</p></div></div>
</div>'),

('lv', 'ostas-statistika', 'Ostas statistika (2026)', '
<p>Nosūtītās un saņemtās kravas Liepājas ostā (8 mēneši, 2026): kopā <strong>3 750 794,92 t</strong>.</p>
<ul>
  <li>Beramkravas: 1 326,2 tūkst. t (35%)</li>
  <li>Roll on / Roll off: 1 061,9 tūkst. t (28%)</li>
  <li>Kokmateriāli: 210,5 tūkst. t</li>
  <li>Konteineri: 42,8 tūkst. t</li>
</ul>'),

('en', 'port-statistics', 'Port statistics (2026)', '
<p>Cargo loaded and discharged at the Port of Liepaja (8 months, 2026): total <strong>3,750,794.92 t</strong>.</p>
<ul>
  <li>Dry bulk: 1,326.2 thousand t (35%)</li>
  <li>Roll on / Roll off: 1,061.9 thousand t (28%)</li>
  <li>Timber: 210.5 thousand t</li>
  <li>Containers: 42.8 thousand t</li>
</ul>');