<?php
require_once __DIR__ . '/config.php';

$lang = 'lv';
if (isset($_GET['lang']) && in_array($_GET['lang'], ['lv', 'en'], true)) {
    $lang = $_GET['lang'];
    setcookie('Public_lang', $lang, time() + 259200, '/');
} elseif (isset($_COOKIE['Public_lang']) && in_array($_COOKIE['Public_lang'], ['lv', 'en'], true)) {
    $lang = $_COOKIE['Public_lang'];
}

$defaultSlug = ($lang === 'en') ? 'home' : 'sakums';
$slug = isset($_GET['page']) && $_GET['page'] !== '' ? trim($_GET['page'], '/') : $defaultSlug;

// Fetch the exact page from MySQL
$stmt = $pdo->prepare("SELECT * FROM pages WHERE lang = ? AND slug = ? LIMIT 1");
$stmt->execute([$lang, $slug]);
$page = $stmt->fetch();

// Fallback to homepage if slug not found
if (!$page) {
    $stmt = $pdo->prepare("SELECT * FROM pages WHERE lang = ? AND slug = ? LIMIT 1");
    $stmt->execute([$lang, $defaultSlug]);
    $page = $stmt->fetch();
}

if (!$page) {
    die("No pages found in database. Please run crawl_all_pages.ps1 and import database.sql.");
}

/**
 * Rewrites live https://liepaja-sez.lv/... links and assets to work locally
 */
function rewriteToLocal(string $html): string {
    // 1. Rewrite asset URLs (css/, js/, img/, cc/, favicon.ico) to local relative paths if downloaded locally
    $html = preg_replace(
        '#(?:https?:)?//liepaja-sez\.lv/(css|js|img|cc|favicon\.ico)#i',
        '$1',
        $html
    );

    // 2. Rewrite English root URL https://liepaja-sez.lv/en/ -> ?lang=en&page=home
    $html = preg_replace(
        '#href=["\'](?:https?:)?//liepaja-sez\.lv/en/?["\']#i',
        'href="?lang=en&page=home"',
        $html
    );

    // 3. Rewrite Latvian root URL https://liepaja-sez.lv/ -> ?lang=lv&page=sakums
    $html = preg_replace(
        '#href=["\'](?:https?:)?//liepaja-sez\.lv/?["\']#i',
        'href="?lang=lv&page=sakums"',
        $html
    );

    // 4. Rewrite all subpage URLs https://liepaja-sez.lv/{lv|en}/{slug}/ -> ?lang={lv|en}&page={slug}
    $html = preg_replace_callback(
        '#href=["\'](?:https?:)?//liepaja-sez\.lv/(lv|en)/([^"\'\#\?]+?)/?["\']#i',
        function ($m) {
            return 'href="?lang=' . $m[1] . '&page=' . rtrim($m[2], '/') . '"';
        },
        $html
    );

    // 5. Fix unclosed jQuery script tag present on the live site
    $html = str_replace(
        'crossorigin="anonymous">',
        'crossorigin="anonymous"></script>',
        $html
    );

    return $html;
}

$headCss    = rewriteToLocal($page['head_css']);
$navHtml    = rewriteToLocal($page['nav_html']);
$mainHtml   = rewriteToLocal($page['main_html']);
$footerHtml = rewriteToLocal($page['footer_html']);
?>
<!DOCTYPE html>
<html lang="<?= htmlspecialchars($lang) ?>" class="blue">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <meta name="description" content="SEZ">
    <title><?= htmlspecialchars($page['title']) ?></title>

    <?= $headCss ?>

    <script>
        const html = document.querySelector("html");
        if (localStorage['contrast']) {
            html.classList.add(localStorage['contrast']);
        }
        var web_url = "";
        var lang = "<?= htmlspecialchars($lang) ?>";
    </script>
</head>
<body style="font-size: 15px;">
    <div id="search-overlay" class="block">
        <div class="centered">
            <div id="search-box">
                <div id="close-btn" class="fa fa-times fa-2x">X</div>
                <form action="index.php" id="search-form" method="get" target="_top">
                    <input type="hidden" name="lang" value="<?= htmlspecialchars($lang) ?>">
                    <input id="search-text" name="q" placeholder="<?= $lang === 'lv' ? 'Es meklēju...' : 'Search...' ?>" type="text">
                    <button id="search-button" type="submit">
                        <span><?= $lang === 'lv' ? 'Meklēt' : 'Search' ?></span>
                    </button>
                </form>
            </div>
        </div>
    </div>

    <?= $navHtml ?>

    <div class="spacer"></div>

    <?= $mainHtml ?>

    <?= $footerHtml ?>
</body>
</html>