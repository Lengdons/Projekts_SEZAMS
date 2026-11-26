document.addEventListener("DOMContentLoaded", function () {
  const chatWindow = document.getElementById("raivo-window");
  const toggleButton = document.getElementById("raivo-toggle");
  const closeButton = document.getElementById("raivo-close");
  const messages = document.getElementById("raivo-messages");
  const form = document.getElementById("raivo-form");
  const input = document.getElementById("raivo-input");
  const suggestions = document.getElementById("raivo-suggestions");

  let chatStarted = false;

  // Normalize text: lowercase, remove Latvian accents,
  // spaces and punctuation.
  function normalize(text) {
    return text
      .toLowerCase()
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .replace(/[^\p{L}\p{N}]/gu, "");
  }

  // Scroll to the latest message.
  function scrollChat() {
    messages.scrollTop = messages.scrollHeight;
  }

  // Add message.
  function addMessage(text, sender) {
    const message = document.createElement("div");

    message.className =
      "raivo-message " + (sender === "user" ? "raivo-user" : "raivo-bot");

    message.textContent = text;

    messages.appendChild(message);
    scrollChat();
  }

  // Create typing bubble.
  function showTyping() {
    const typing = document.createElement("div");

    typing.className = "raivo-message raivo-bot raivo-typing";
    typing.id = "raivo-typing";

    typing.innerHTML = "<span></span><span></span><span></span>";

    messages.appendChild(typing);
    scrollChat();

    return typing;
  }

  // Bot response with typing delay.
  function botReply(text, delay = 1000) {
    const typing = showTyping();

    setTimeout(function () {
      typing.remove();
      addMessage(text, "bot");
    }, delay);
  }

  // Initial greeting.
  function startChat() {
    if (chatStarted) return;

    chatStarted = true;

    botReply("Sveiki!", 500);

    setTimeout(function () {
      botReply("Mani sauc Raivo! 😊", 900);
    }, 1100);
  }

  // Open chat.
  toggleButton.addEventListener("click", function () {
    chatWindow.classList.remove("raivo-hidden");
    toggleButton.style.display = "none";

    startChat();
    input.focus();
  });

  // Close chat.
  closeButton.addEventListener("click", function () {
    chatWindow.classList.add("raivo-hidden");
    toggleButton.style.display = "flex";
  });

  // Answers.
  const answers = {
    1: "a",

    2: "b",

    3: "c",
  };

  // Recognize questions.
  function findQuestion(text) {
    const normalized = normalize(text);

    if (!normalized) return null;

    // Numeric shortcuts.
    if (/^[1-3]$/.test(normalized)) {
      return normalized;
    }

    const patterns = {
      1: [
        "kuras teritorijas ir pieejamas",
        "kuras teritorijas pieejamas",
        "pieejamas teritorijas",
        "brivas teritorijas",
        "teritoriju pieejamiba",
        "kur ir teritorijas",
      ],

      2: [
        "kadi ir nosacijumi teritoriju iegadei",
        "nosacijumi teritoriju iegadei",
        "teritoriju iegades nosacijumi",
        "iegades nosacijumi",
        "iegadaties teritoriju",
        "nopirkt teritoriju",
        "teritoriju iegade",
      ],

      3: [
        "kadi ir ieguvumi izveloties lsez teritorijas",
        "ieguvumi izveloties lsez teritorijas",
        "lsez teritoriju ieguvumi",
        "ieguvumi",
        "prieksrocibas",
        "izveloties lsez",
      ],
    };

    // Match normalized phrases.
    for (const questionNumber in patterns) {
      for (const phrase of patterns[questionNumber]) {
        if (normalized.includes(normalize(phrase))) {
          return questionNumber;
        }
      }
    }

    // Keyword combinations for slightly different wording.
    if (
      normalized.includes("teritorij") &&
      (normalized.includes("pieej") ||
        normalized.includes("briv") ||
        normalized.includes("kur"))
    ) {
      return "1";
    }

    if (
      normalized.includes("teritorij") &&
      (normalized.includes("iegad") || normalized.includes("nosacij"))
    ) {
      return "2";
    }

    if (
      normalized.includes("ieguv") ||
      normalized.includes("prieksroc") ||
      normalized.includes("benefit")
    ) {
      return "3";
    }

    return null;
  }

  // Process message.
  function sendMessage(text) {
    text = text.trim();

    if (!text) return;

    addMessage(text, "user");

    const questionNumber = findQuestion(text);

    if (questionNumber) {
      botReply(answers[questionNumber], 1000);
    } else {
      botReply(
        "Atvainojiet, es nesapratu jautājumu. " +
          "Lūdzu, mēģiniet to pārformulēt vai izvēlieties " +
          "vienu no piedāvātajiem jautājumiem.",
        1000,
      );
    }
  }

  // Send typed message.
  form.addEventListener("submit", function (event) {
    event.preventDefault();

    const text = input.value;

    if (!text.trim()) return;

    sendMessage(text);

    input.value = "";
    input.focus();
  });

  // Click suggested questions.
  suggestions.querySelectorAll("button").forEach(function (button) {
    button.addEventListener("click", function () {
      sendMessage(button.textContent);
    });
  });
});
