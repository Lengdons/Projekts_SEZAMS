<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Sākumlapas
if ($path == '/site/index.php' || $path == '/site/' ||
    $path == '/site/en/index.php' || $path == '/site/en/') {

    $lvLink = '/site/index.php';
    $enLink = '/site/en/index.php';

} else {

    // Pārējās lapas
    $lvLink = preg_replace(
        '#^/site/(lv|en)/#',
        '/site/lv/',
        $path
    );

    $enLink = preg_replace(
        '#^/site/(lv|en)/#',
        '/site/en/',
        $path
    );
}
?>