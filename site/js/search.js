(function () {
    var siteRoot = new URL('../', document.currentScript.src);

    function search(event, form) {
        event.preventDefault();
        // Some archived pages load the original site's button handler.
        event.stopImmediatePropagation();
        var input = form.querySelector('#search-text');
        var query = input.value.trim();
        if (!query) {
            input.focus();
            return;
        }
        var language = form.querySelector('[name="lang"]').value;
        var url = new URL(language === 'lv' ? './' : language + '/', siteRoot);
        url.searchParams.set('search', query);
        window.location.assign(url.href);
    }

    document.addEventListener('submit', function (event) {
        if (event.target.id === 'search-form') search(event, event.target);
    }, true);

    document.addEventListener('click', function (event) {
        var button = event.target.closest('#search-button');
        if (button && button.form && button.form.id === 'search-form') search(event, button.form);
    }, true);

    async function showResults() {
        var query = (new URLSearchParams(window.location.search).get('search') || '').trim().slice(0, 200);
        if (!query) return;
        var form = document.getElementById('search-form');
        var main = document.querySelector('main');
        if (!form || !main) return;
        var language = form.querySelector('[name="lang"]').value;
        var labels = {
            lv: ['Meklēšanas rezultāti', 'Meklē…', 'Nekas netika atrasts.', 'Meklēšana neizdevās. Lūdzu, mēģiniet vēlreiz.'],
            en: ['Search results', 'Searching…', 'No results found.', 'Search failed. Please try again.'],
            de: ['Suchergebnisse', 'Suche läuft…', 'Keine Ergebnisse gefunden.', 'Suche fehlgeschlagen. Bitte versuchen Sie es erneut.'],
            fr: ['Résultats de recherche', 'Recherche…', 'Aucun résultat trouvé.', 'La recherche a échoué. Veuillez réessayer.'],
            it: ['Risultati di ricerca', 'Ricerca…', 'Nessun risultato trovato.', 'Ricerca non riuscita. Riprova.'],
            es: ['Resultados de búsqueda', 'Buscando…', 'No se han encontrado resultados.', 'La búsqueda ha fallado. Inténtelo de nuevo.'],
            nl: ['Zoekresultaten', 'Zoeken…', 'Geen resultaten gevonden.', 'Zoeken is mislukt. Probeer het opnieuw.']
        }[language];
        var container = document.createElement('div');
        container.className = 'container pt-5 my-5';
        var row = document.createElement('div');
        row.className = 'row';
        var content = document.createElement('div');
        content.className = 'col-12 col-lg-9 offset-lg-3 mt-5';
        var heading = document.createElement('h1');
        heading.className = 'article-title mb-5';
        heading.textContent = labels[0] + ': ' + query;
        var status = document.createElement('p');
        status.setAttribute('role', 'status');
        status.textContent = labels[1];
        content.append(heading, status);
        row.append(content);
        container.append(row);
        main.replaceChildren(container);
        document.title = labels[0] + ': ' + query + ' » SEZ';
        form.querySelector('#search-text').value = query;

        try {
            var response = await fetch(new URL(language + '/search-index.json', siteRoot));
            if (!response.ok) throw new Error('Search index unavailable');
            var pages = await response.json();
            var terms = query.toLocaleLowerCase(language).split(/\s+/);
            var results = pages.map(function (page) {
                var title = page.title.toLocaleLowerCase(language);
                var text = page.text.toLocaleLowerCase(language);
                var score = 0;
                for (var term of terms) {
                    if (!title.includes(term) && !text.includes(term)) return null;
                    score += title.includes(term) ? 10 : 1;
                }
                return { page: page, score: score };
            }).filter(Boolean).sort(function (a, b) { return b.score - a.score || a.page.url.localeCompare(b.page.url); });
            status.textContent = results.length ? '' : labels[2];
            for (var result of results.slice(0, 50)) {
                var article = document.createElement('article');
                article.className = 'my-4';
                var title = document.createElement('h2');
                title.className = 'h5';
                var link = document.createElement('a');
                link.href = new URL(result.page.url, siteRoot).href;
                link.textContent = result.page.title;
                title.append(link);
                var excerpt = document.createElement('p');
                var position = result.page.text.toLocaleLowerCase(language).indexOf(terms[0]);
                var start = Math.max(0, position - 70);
                excerpt.textContent = (start ? '…' : '') + result.page.text.slice(start, start + 250) + '…';
                article.append(title, excerpt);
                content.append(article);
            }
        } catch (error) {
            status.textContent = labels[3];
        }
    }

    if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', showResults);
    else showResults();
}());
