document.addEventListener('DOMContentLoaded', () => {
    // 1. Accessibility Font Zoom (75%, 100%, 125%, 150%)
    const zoomBtns = document.querySelectorAll('.zoom-btn');
    const savedZoom = localStorage.getItem('lsez_zoom') || '1';
    document.documentElement.style.setProperty('--zoom-factor', savedZoom);
    zoomBtns.forEach(btn => {
        btn.classList.toggle('active', btn.dataset.zoom === savedZoom);
        btn.addEventListener('click', () => {
            const z = btn.dataset.zoom;
            document.documentElement.style.setProperty('--zoom-factor', z);
            localStorage.setItem('lsez_zoom', z);
            zoomBtns.forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
        });
    });

    // 2. Accessibility High-Contrast Switcher (A A A A)
    const contrastBtns = document.querySelectorAll('.contrast-btn');
    const savedTheme = localStorage.getItem('lsez_theme') || 'default';
    if (savedTheme !== 'default') {
        document.body.classList.add('theme-' + savedTheme);
    }
    contrastBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            document.body.classList.remove('theme-bw', 'theme-wb', 'theme-yb');
            const theme = btn.dataset.theme;
            if (theme !== 'default') {
                document.body.classList.add('theme-' + theme);
            }
            localStorage.setItem('lsez_theme', theme);
        });
    });

    // 3. Search Drawer Toggle
    const searchToggle = document.getElementById('searchToggle');
    const searchDrawer = document.getElementById('searchDrawer');
    const searchClose = document.getElementById('searchClose');
    if (searchToggle && searchDrawer) {
        searchToggle.addEventListener('click', () => {
            searchDrawer.hidden = !searchDrawer.hidden;
        });
    }
    if (searchClose && searchDrawer) {
        searchClose.addEventListener('click', () => {
            searchDrawer.hidden = true;
        });
    }

    // 4. Mobile Menu Toggle
    const mobileMenuBtn = document.getElementById('mobileMenuBtn');
    const mainNav = document.getElementById('mainNav');
    if (mobileMenuBtn && mainNav) {
        mobileMenuBtn.addEventListener('click', () => {
            mainNav.classList.toggle('open');
        });
    }

    // 5. Hero Slider
    const slides = document.querySelectorAll('.hero-slide');
    const prevBtn = document.getElementById('heroPrev');
    const nextBtn = document.getElementById('heroNext');
    let currentSlide = 0;

    function showSlide(index) {
        if (!slides.length) return;
        slides.forEach((s, i) => s.classList.toggle('active', i === index));
    }

    if (prevBtn && nextBtn && slides.length) {
        prevBtn.addEventListener('click', () => {
            currentSlide = (currentSlide - 1 + slides.length) % slides.length;
            showSlide(currentSlide);
        });
        nextBtn.addEventListener('click', () => {
            currentSlide = (currentSlide + 1) % slides.length;
            showSlide(currentSlide);
        });
    }

    // 6. Horizontal Scrollers for Priekšrocības / Attīstības iespējas / Skaitļi un fakti
    document.querySelectorAll('.highlight-band').forEach(band => {
        const track = band.querySelector('.highlight-track');
        const pBtn = band.querySelector('.band-prev');
        const nBtn = band.querySelector('.band-next');
        if (track && pBtn && nBtn) {
            pBtn.addEventListener('click', () => track.scrollBy({ left: -300, behavior: 'smooth' }));
            nBtn.addEventListener('click', () => track.scrollBy({ left: 300, behavior: 'smooth' }));
        }
    });

    // 7. Scroll to Top
    const scrollTopBtn = document.getElementById('scrollTopBtn');
    if (scrollTopBtn) {
        scrollTopBtn.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));
    }

    // 8. Cookie Consent Modal (Replicates Cc_cookie 1-year expiration)
    const cookieModal = document.getElementById('cookieModal');
    const openCookieBtn = document.getElementById('openCookieModalBtn');
    const acceptAllBtn = document.getElementById('cookieAcceptAll');
    const rejectBtn = document.getElementById('cookieReject');
    const saveSelectedBtn = document.getElementById('cookieSaveSelected');

    function setCcCookie(val) {
        const d = new Date();
        d.setTime(d.getTime() + (365 * 24 * 60 * 60 * 1000));
        document.cookie = `Cc_cookie=${val};expires=${d.toUTCString()};path=/`;
        if (cookieModal) cookieModal.hidden = true;
    }

    if (cookieModal && !document.cookie.includes('Cc_cookie=')) {
        cookieModal.hidden = false;
    }
    if (openCookieBtn && cookieModal) {
        openCookieBtn.addEventListener('click', () => { cookieModal.hidden = false; });
    }
    if (acceptAllBtn) acceptAllBtn.addEventListener('click', () => setCcCookie('all'));
    if (rejectBtn) rejectBtn.addEventListener('click', () => setCcCookie('necessary'));
    if (saveSelectedBtn) {
        saveSelectedBtn.addEventListener('click', () => {
            const statChecked = document.getElementById('statCookiesToggle')?.checked;
            setCcCookie(statChecked ? 'all' : 'necessary');
        });
    }
});