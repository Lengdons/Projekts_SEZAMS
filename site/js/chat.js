document.addEventListener("DOMContentLoaded", function () {
    const toggle = document.getElementById("chat-toggle");
    const panel = document.getElementById("chat-window");
    if (!panel) return;

    const close = document.getElementById("chat-close");
    const form = document.getElementById("chat-form");
    const input = document.getElementById("chat-input");
    const send = document.getElementById("chat-send");
    const body = document.getElementById("chat-body");
    const messages = document.getElementById("chat-messages");
    const texts = JSON.parse(document.getElementById("chat-locale").textContent);
    const language = panel.dataset.language;
    const base = panel.dataset.base;
    const reducedMotion = window.matchMedia("(prefers-reduced-motion: reduce)");
    let isOpen = false;
    let closeTimer;

    // Čata atvēršana un aizvēršana.
    function setOpen(open) {
        isOpen = open;
        clearTimeout(closeTimer);
        panel.inert = !open;
        toggle.setAttribute("aria-expanded", open);
        toggle.setAttribute("aria-label", open ? texts.ui[1] : texts.ui[0]);

        if (open) {
            panel.hidden = false;
            requestAnimationFrame(function () {
                if (!isOpen) return;
                panel.classList.add("is-open");
                input.focus({ preventScroll: true });
            });
        } else {
            panel.classList.remove("is-open");
            toggle.focus({ preventScroll: true });
            // Ļaujam aizvēršanas animācijai pabeigties.
            closeTimer = setTimeout(function () {
                panel.hidden = true;
            }, reducedMotion.matches ? 0 : 280);
        }
    }

    toggle.onclick = function () { setOpen(!isOpen); };
    close.onclick = function () { setOpen(false); };
    panel.onkeydown = function (event) {
        if (event.key === "Escape") setOpen(false);
    };

    // Katra tēma: lapas adrese un atslēgvārdi visām valodām.
    // Secība atbilst nosaukumiem chat-locales.json failā.
    const topics = [
        { page: "investe-liepaja", words: /invest|uznem|nodok|razos|biznes|business|tax|entreprise|impresa|inversi|empresa|ondernem|steuer|wirtschaft|atlaid|atviegloj|ieguld|industrial|r[b]?upniec|infrastruktur|teritorij|zemes|telpu|noma|rent|lease|incentiv|grundstuck|gewerbe/ },
        { page: "jahtu-osta", words: /jaht|yacht|marina|plaisance|turistic|deportivo|jachthaven|piestatn|pietauv|bur[a-z]*laiv|sailboat|mooring|segel|voilier|ormeggio|amarre/ },
        { page: "pramju-satiksme", words: /pram|ferr(?:y|ies)|traghett|veer|stenaline|stena line|travem|travemund|karlshamn|biljet|ticket|fahrkarte|bigliett|billete/ },
        { page: "oskara-kalpaka-tilts", words: /tilt|kalpak|bridge|bruck|pont|puente|brug|webcam|webkamera|timeklkamera|karostas kanals/ },
        { page: "kontakti", words: /kontakt|sazin|talrun|epast|e-past|adrese|darba laik|contact|contatt|phone|email|e-mail|address|opening hours|offnungszeit|horaires|orari|horario|telef|piezvan|zvanit|rakstit|kur atroda|kur atrodas|rekvizit|feniksa/ },
        { page: "iepirkumi-un-izsoles", words: /iepirk|izsol|procure|auction|ausschreib|auktion|appel.*offres|encher|appalt|licit|subast|aanbested|veiling|tender|konkurs|\baste\b/ },
        { page: "par-ostu", words: /\bost[a-z]*|\bkug[a-z]*|krav|\bport\b|\bports\b|portuari|harbou?r|hafen|haven|terminal|logistik|logistic|stividor|stevedor|shipping|cargo|berth|depth|dzilum/ },
        { page: "teritoriju-karte", words: /kart|\bmaps?\b|\bmapi\b|\bmappa\b|\bmapa\b|carte|kaart|plattegrond/ },
        { page: "darbs-liepaja", words: /vakanc|darbs|darbu|darbaviet|karjer|\bjobs?\b|career|vacanc|stellen|arbeit|emploi|recrut|lavoro|empleo|trabajo|vacatur|werken/ },
        { page: "kapitalsabiedribas", words: /kapitalsabiedr|uznemumu sarakst|uznemumu kontakt|uznemumi|partner|compan|firmen|unternehmen|societ|aziend|empresas|bedrijven/ },
        { page: "attistibas-projekti", words: /projekt|project|projet|progett|proyect|attistib|development|entwickl|developp|svilupp|desarrollo|ontwikkel/ },
        { page: "ostas-statistika", words: /statistik|statistic|statistiek|apgrozij|tonn|\btons\b|turnover|kravu apjom|cargo volume/ },
        { page: "dokumenti", words: /dokument|document|dokumen|veidlap|iesniegum|noteikum|nolik|likum|regulat|formular|\bforms?\b|formuli|moduli|normativ|reglament/ },
        { page: "valdes-sedes-lemumi", words: /lemum|decision|beschluss|deliber|besluit/ },
        { page: "parvalde", words: /parvald|vadib|valde|administrat|management|board|verwaltung|direction|amministraz|bestuur/ },
        { page: "kruiza-kugi", words: /kruiz|cruise|kreuzfahrt|croisiere|crocier|crucero/ },
        { page: "jaunumi-1", words: /jaunum|aktual|\bnews\b|nachricht|neuigkeit|actualit|notizi|noticia|nieuws/ }
    ];

    // Pievienojam ziņu. Lietotāja tekstu ievietojam ar textContent.
    function addMessage(text, sender, topicIndex = -1) {
        const row = document.createElement("div");
        row.className = "message-container " + sender;
        const bubble = document.createElement("div");
        bubble.className = sender + "-message";
        bubble.textContent = text;

        if (topicIndex >= 0) {
            const link = document.createElement("a");
            link.href = base + "/" + language + "/" + topics[topicIndex].page + "/index.php";
            link.textContent = texts.labels[topicIndex] + " →";
            bubble.appendChild(link);
        }

        row.appendChild(bubble);
        messages.appendChild(row);
    }

    // Nosūtām jautājumu un atrodam atbilstošo mājaslapas sadaļu.
    function ask(question) {
        const text = question.trim().slice(0, 1000);
        if (!text) return;

        addMessage(text, "user");
        input.value = "";
        send.disabled = true;

        // Meklējam arī tad, ja jautājums rakstīts ar garumzīmēm.
        const search = text.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
        // Vispirms meklējam konkrētas tēmas, tad vispārīgās.
        const order = [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 3, 2, 1, 4, 5, 0, 6];
        let match = -1;
        for (const index of order) {
            if (topics[index].words.test(search)) {
                match = index;
                break;
            }
        }

        if (match === -1) {
            addMessage(texts.fallback, "bot", 4);
        } else {
            let answer = texts.answer;
            if (match === 3) answer += " " + texts.bridge;
            addMessage(answer, "bot", match);
        }

        body.scrollTo({ top: body.scrollHeight, behavior: reducedMotion.matches ? "instant" : "smooth" });
    }

    input.oninput = function () { send.disabled = !input.value.trim(); };
    form.onsubmit = function (event) {
        event.preventDefault();
        ask(input.value);
    };
    panel.querySelectorAll("[data-question]").forEach(function (button) {
        button.onclick = function () {
            ask(button.dataset.question);
            input.focus({ preventScroll: true });
        };
    });
});
