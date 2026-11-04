<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Sākumlapas
if ($path == '/site/index.php' || $path == '/site/' ||
    $path == '/site/en/index.php' || $path == '/site/en/' ||
    $path == '/site/de/index.php' || $path == '/site/de/' ||
    $path == '/site/fr/index.php' || $path == '/site/fr/' ||
    $path == '/site/it/index.php' || $path == '/site/it/' ||
    $path == '/site/es/index.php' || $path == '/site/es/') {

    $lvLink = '/site/index.php';
    $enLink = '/site/en/index.php';
    $deLink = '/site/de/index.php';
    $frLink = '/site/fr/index.php';
    $itLink = '/site/it/index.php';

} else {

    // Pārējās lapas
    $lvLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es)/#',
        '/site/lv/',
        $path
    );

    $enLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es)/#',
        '/site/en/',
        $path
    );

    $deLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es)/#',
        '/site/de/',
        $path
    );
    $frLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es)/#',
         '/site/fr/', 
         $path
         );
    $itLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es)/#',
         '/site/it/',
          $path
          );
}
?>
