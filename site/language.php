<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Sākumlapas
if ($path == '/site/index.php' || $path == '/site/' ||
    $path == '/site/en/index.php' || $path == '/site/en/' ||
    $path == '/site/de/index.php' || $path == '/site/de/') {

    $lvLink = '/site/index.php';
    $enLink = '/site/en/index.php';
    $deLink = '/site/de/index.php';

} else {

    // Pārējās lapas
    $lvLink = preg_replace(
        '#^/site/(lv|en|de)/#',
        '/site/lv/',
        $path
    );

    $enLink = preg_replace(
        '#^/site/(lv|en|de)/#',
        '/site/en/',
        $path
    );

    $deLink = preg_replace(
        '#^/site/(lv|en|de)/#',
        '/site/de/',
        $path
    );
}
?>