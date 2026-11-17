<?php
// Shared by all language navigation files. Render once per request.
if (defined('SEZ_CHAT_RENDERED')) return;
define('SEZ_CHAT_RENDERED', true);
$chatLocales = json_decode(file_get_contents(__DIR__ . '/js/chat-locales.json'), true, 512, JSON_THROW_ON_ERROR);
$chatLanguage = $sezChatLanguage ?? 'lv';
if (!isset($chatLocales[$chatLanguage])) $chatLanguage = 'lv';
$copy = $chatLocales[$chatLanguage];
$esc = static fn($value) => htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
$chatScript = $_SERVER['SCRIPT_NAME'] ?? '/index.php';
$chatBase = preg_replace('~/(?:lv|en|de|fr|it|es|nl)(?:/.*)?$~', '', $chatScript, -1, $chatMatches);
if (!$chatMatches) $chatBase = rtrim(str_replace('\\', '/', dirname($chatScript)), '/.');
?>
<link rel="stylesheet" href="<?= $esc($chatBase) ?>/css/chat.css">
<!-- <?= $esc($copy['ui'][3]) ?> -->
<button id="chat-toggle" type="button" aria-label="<?= $esc($copy['ui'][0]) ?>" aria-expanded="false" aria-controls="chat-window">
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="12" cy="7.5" r="4"/><path d="M4.5 21v-2a7.5 7.5 0 0 1 15 0v2"/></svg>
    <span class="chat-toggle-label"><?= $esc($copy['ui'][2]) ?></span>
</button>
<section class="chat-container" id="chat-window" data-language="<?= $esc($chatLanguage) ?>" data-base="<?= $esc($chatBase) ?>" role="region" aria-labelledby="chat-title" hidden inert>
    <header class="chat-header">
        <div class="chat-heading"><h2 id="chat-title">Raivo</h2><p><?= $esc($copy['ui'][3]) ?></p></div>
        <button id="chat-close" type="button" aria-label="<?= $esc($copy['ui'][1]) ?>"><svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" aria-hidden="true"><path d="m6 6 12 12M18 6 6 18"/></svg></button>
    </header>
    <div class="chat-body" id="chat-body">
        <div class="chat-welcome"><p><?= $esc($copy['greeting']) ?></p></div>
        <div class="chat-suggestions" aria-label="<?= $esc($copy['ui'][8]) ?>">
            <button type="button" data-question="<?= $esc($copy['labels'][0]) ?>"><?= $esc($copy['labels'][0]) ?></button>
            <button type="button" data-question="<?= $esc($copy['labels'][6]) ?>"><?= $esc($copy['labels'][6]) ?></button>
            <button type="button" data-question="<?= $esc($copy['labels'][4]) ?>"><?= $esc($copy['labels'][4]) ?></button>
            <button type="button" data-question="<?= $esc($copy['labels'][7]) ?>"><?= $esc($copy['labels'][7]) ?></button>
        </div>
        <div id="chat-messages" role="log" aria-label="<?= $esc($copy['ui'][9]) ?>" aria-live="polite" aria-relevant="additions"></div>
    </div>
    <form class="chat-footer" id="chat-form">
        <label class="chat-sr-only" for="chat-input"><?= $esc($copy['ui'][10]) ?></label>
        <input type="text" id="chat-input" class="chat-input" placeholder="<?= $esc($copy['ui'][11]) ?>" maxlength="1000" autocomplete="off" required>
        <button id="chat-send" class="chat-send" type="submit" aria-label="<?= $esc($copy['ui'][12]) ?>" disabled><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" aria-hidden="true"><path d="m5 12 7-7 7 7M12 5v15"/></svg></button>
    </form>
    <p class="chat-note"><?= $esc($copy['ui'][13]) ?></p>
</section>
<script type="application/json" id="chat-locale"><?= json_encode($copy, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_UNESCAPED_UNICODE) ?></script>
<script defer src="<?= $esc($chatBase) ?>/js/chat.js"></script>
