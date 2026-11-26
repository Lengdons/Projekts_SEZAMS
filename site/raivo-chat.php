<?php
$baseUrl = '/site/';
?>

<link rel="stylesheet" href="<?= $baseUrl ?>css/raivo-chat.css">
<!-- RAIVO CHATBOT -->
<div id="raivo-chat">
    <button id="raivo-toggle" aria-label="Open chat">
        <span class="raivo-logo">
            <img src="<?= $baseUrl ?>img/raivo.png" alt="R">
        </span>
    </button>

    <div id="raivo-window" class="raivo-hidden">
        <div class="raivo-header">
            <div class="raivo-header-title">
                <span class="raivo-logo-small">R</span>
                <span>Sarunājies ar Raivo!</span>
            </div>

            <div class="raivo-header-actions">
                <button id="raivo-close" aria-label="Close chat">&times;</button>
            </div>
        </div>

        <div id="raivo-messages"></div>

        <div id="raivo-suggestions">
            <button data-question="1">1. Kuras teritorijas ir pieejamas?</button>
            <button data-question="2">2. Kādi ir nosacījumi teritoriju iegādei?</button>
            <button data-question="3">3. Kādi ir ieguvumi izvēloties LSEZ teritorijas?</button>
        </div>

        <div class="raivo-disclaimer">
            Šis ir automatizēts asistents.
        </div>

        <form id="raivo-form">
            <input
                id="raivo-input"
                type="text"
                placeholder="Raksti ziņu..."
                autocomplete="off"
            >

            <button type="submit" id="raivo-send" aria-label="Send message">
                &#10148;
            </button>
        </form>
    </div>
</div>
<!-- END RAIVO CHATBOT -->
<script src="<?= $baseUrl ?>js/raivo-chat.js"></script>