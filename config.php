<?php
session_start();

define('DB_HOST', '127.0.0.1');
define('DB_NAME', 'liepaja_sez');
define('DB_USER', 'root');
define('DB_PASS', '');

// Set to "" after running download_assets.sh / download_assets.ps1 to load local files
$assetBase = "https://liepaja-sez.lv/";

try {
    $pdo = new PDO(
        "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4",
        DB_USER,
        DB_PASS,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]
    );
} catch (PDOException $e) {
    die("Database connection error: " . htmlspecialchars($e->getMessage()));
}

$lang = 'lv';
if (isset($_GET['lang']) && in_array($_GET['lang'], ['lv', 'en'], true)) {
    $lang = $_GET['lang'];
    setcookie('Public_lang', $lang, time() + 259200, '/');
} elseif (isset($_COOKIE['Public_lang']) && in_array($_COOKIE['Public_lang'], ['lv', 'en'], true)) {
    $lang = $_COOKIE['Public_lang'];
}

$defaultPage = ($lang === 'lv') ? 'sakums' : 'home';
$pageSlug = isset($_GET['page']) ? preg_replace('/[^a-z0-9\-]/', '', strtolower($_GET['page'])) : $defaultPage;

function getNavigationTree(PDO $pdo, string $lang): array {
    $stmt = $pdo->prepare("SELECT * FROM nav_items WHERE lang = ? ORDER BY sort_order ASC");
    $stmt->execute([$lang]);
    $items = $stmt->fetchAll();
    $byParent = [];
    foreach ($items as $item) {
        $byParent[$item['parent_id'] ?? 0][] = $item;
    }
    $build = function ($pid) use (&$build, &$byParent) {
        $branch = [];
        foreach ($byParent[$pid] ?? [] as $item) {
            $item['children'] = $build($item['id']);
            $branch[] = $item;
        }
        return $branch;
    };
    return $build(0);
}