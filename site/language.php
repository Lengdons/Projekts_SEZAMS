<?php
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Sākumlapas
if ($path == '/site/index.php' || $path == '/site/' ||
    $path == '/site/en/index.php' || $path == '/site/en/' ||
    $path == '/site/de/index.php' || $path == '/site/de/' ||
    $path == '/site/fr/index.php' || $path == '/site/fr/' ||
    $path == '/site/it/index.php' || $path == '/site/it/' ||
    $path == '/site/es/index.php' || $path == '/site/es/' ||
    $path == '/site/nl/index.php' || $path == '/site/nl/')  {

    $lvLink = '/site/index.php';
    $enLink = '/site/en/index.php';
    $deLink = '/site/de/index.php';
    $frLink = '/site/fr/index.php';
    $itLink = '/site/it/index.php';
    $esLink = '/site/es/index.php';
    $nlLink = '/site/nl/index.php';

} else {

    // Pārējās lapas
    $lvLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
        '/site/lv/',
        $path
    );

    $enLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
        '/site/en/',
        $path
    );

    $deLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
        '/site/de/',
        $path
    );
    $frLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
         '/site/fr/', 
         $path
         );
    $itLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
         '/site/it/',
          $path
          );
    $esLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
         '/site/es/',
          $path
          );
    $nlLink = preg_replace(
        '#^/site/(lv|en|de|fr|it|es|nl)/#',
         '/site/nl/',
          $path
          );
}
?>
