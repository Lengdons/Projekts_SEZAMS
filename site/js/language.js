(function () {
  var lang1 = "/lv/";
  var lang2 = "/en/"; //default language
//   var lang3 = "/fr/"; //second language

 var languageSwitcher = document.querySelectorAll("a[href='/languages']").forEach((el) => el.parentNode.classList.add("language-switcher"));
 document.querySelector("[data-folder='/languages']").classList.add("language-switcher");
  
  document.querySelectorAll(".language-switcher .header-nav-folder-item").forEach((el) => el.classList.add("languages"));
 document.querySelectorAll(".language-switcher .header-menu-nav-item:not(:first-child)").forEach((el) => el.classList.add("languages"));
  var languages = document.querySelectorAll(".languages");
  
  var language1 = document.querySelectorAll(".language-switcher .languages a[href*='"+lang1+"']");
  var language2 = document.querySelectorAll(".language-switcher .languages a[href*='"+lang2+"']")
//   var language3 = document.querySelectorAll(".language-switcher .languages a[href*='"+lang3+"']")

  var windowURL = window.location.href;
  var pageURL = windowURL.split("/")[4];

  if (pageURL == undefined) {
    for (var i = 0; i < language1.length; i++) {
      language1[i].onclick = function () {
        var path = lang1 + "home";
        this.href = path;
      };
    }
    for (var i = 0; i < language2.length; i++) {
      language2[i].onclick = function () {
        var path = lang2 + "home";
        this.href = path;
      };
    }
    for (var i = 0; i < language3.length; i++) {
      language3[i].onclick = function () {
        var path = lang3 + "home";
        this.href = path;
      };
    }
  } else {
    for (var i = 0; i < language1.length; i++) {
      language1[i].onclick = function () {
        var path = lang1 + pageURL;
        this.href = path;
      };
    }
    for (var i = 0; i < language2.length; i++) {
      language2[i].onclick = function () {
        var path = lang2 + pageURL;
        this.href = path;
      };
    }
    for (var i = 0; i < language3.length; i++) {
      language3[i].onclick = function () {
        var path = lang3 + pageURL;
        this.href = path;
      };
    }
  }

 document.querySelectorAll(".header-nav-item:not(.language-switcher) a").forEach((el) => el.classList.add("language"));
  document.querySelectorAll(".header-menu-nav-item:not(.language-switcher) a").forEach((el) => el.classList.add("language"));
  document.querySelectorAll('[data-folder="/languages"] .header-menu-nav-item a').forEach((el) => el.classList.remove("language"));

  var languageLinks = document.querySelectorAll(".language");

  for (var i = 0; i < languageLinks.length; i++) {
    var navURL = languageLinks[i].href;
    if (windowURL.indexOf(lang1) != -1) {
      languages.forEach((el) => el.classList.remove("active"));
      languages[0].classList.add("active");
      if (navURL.indexOf(lang1) != -1) {
        languageLinks[i].closest("div").style.display = "block";
      } else {
        languageLinks[i].closest("div").style.display = "none";
      }
    } else if (windowURL.indexOf(lang2) != -1) {
      languages.forEach((el) => el.classList.remove("active"));
      languages[1].classList.add("active");
      if (navURL.indexOf(lang2) != -1) {
        languageLinks[i].closest("div").style.display = "block";
      } else {
        languageLinks[i].closest("div").style.display = "none";
      }
    } else if (windowURL.indexOf(lang3) != -1) {
      if (navURL.indexOf(lang3) != -1) {
        languages.forEach((el) => el.classList.remove("active"));
        languages[2].classList.add("active");
        languageLinks[i].closest("div").style.display = "block";
      } else {
        languageLinks[i].closest("div").style.display = "none";
      }
    } else {
      if (navURL.indexOf(lang1) != -1) {
        languages.forEach((el) => el.classList.remove("active"));
        languages[0].classList.add("active");
        languageLinks[i].closest("div").style.display = "block";
      } else {
        languageLinks[i].closest("div").style.display = "none";
      }
    }
  }

  var active = document.querySelector(".language-switcher .active");
  active.closest(".language-switcher").prepend(active);
  document.querySelectorAll(".header a").forEach((el) => (el.style.visibility = "visible"));
  languageSwitcher.style.display = "flex";
})();
