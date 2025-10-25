<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>FEU Grade Calculator — Activation Web App</title>
  <meta name="description" content="Official activation web app for FEU Grade Calculator. Activate, configure, and manage your copy securely through Google Apps Script." />
  <link rel="canonical" href="https://feu.jareddo06.ovh/" />
  <link rel="icon" href="https://ssl.gstatic.com/docs/doclist/images/icon_11_spreadsheet_list.png" type="image/png" />
  <style>
    :root {
      --bg: #fafafa;
      --card: #fff;
      --accent: #1a237e;
      --accent2: #2e7d32;
      --muted: #555;
      --maxw: 880px;
    }
    body {
      font-family: system-ui, -apple-system, "Segoe UI", Roboto, Arial, sans-serif;
      background: var(--bg);
      color: #222;
      margin: 0;
      line-height: 1.6;
    }
    header {
      background: var(--accent);
      color: white;
      text-align: center;
      padding: 48px 16px 56px;
    }
    header h1 {
      margin: 0;
      font-size: 2rem;
      letter-spacing: 0.3px;
    }
    header p {
      max-width: 700px;
      margin: 10px auto 0;
      font-weight: 400;
      font-size: 1.05rem;
      opacity: 0.9;
    }
    main {
      max-width: var(--maxw);
      background: var(--card);
      margin: -40px auto 60px;
      border-radius: 14px;
      box-shadow: 0 6px 30px rgba(0, 0, 0, 0.08);
      padding: 36px 30px;
    }
    h2 {
      color: var(--accent);
      border-left: 4px solid var(--accent2);
      padding-left: 10px;
      margin-top: 34px;
      margin-bottom: 10px;
      font-size: 1.4rem;
    }
    p, li {
      color: #222;
    }
    a {
      color: var(--accent2);
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    .cta {
      display: inline-block;
      background: var(--accent2);
      color: white;
      padding: 14px 24px;
      font-weight: 600;
      border-radius: 8px;
      font-size: 1rem;
      margin-top: 14px;
      transition: background 0.2s ease;
    }
    .cta:hover {
      background: #256427;
    }
    .inputBox {
      margin-top: 16px;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    input[type="text"] {
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
      width: 100%;
      box-sizing: border-box;
    }
    #message {
      margin-top: 20px;
      font-weight: 500;
      color: var(--muted);
      white-space: pre-line;
    }
    hr {
      margin: 40px 0;
      border: none;
      border-top: 1px solid #eee;
    }
    footer {
      text-align: center;
      font-size: 13px;
      color: var(--muted);
      margin-top: 40px;
    }
    footer a {
      color: var(--accent);
    }
  </style>
</head>

<body>
  <header>
    <h1>FEU Grade Calculator — Activation Web App</h1>
    <p>Activate your FEU Grade Calculator spreadsheet securely through your Google account.</p>
  </header>

  <main>
    <h2>Activate Your Spreadsheet</h2>
    <p>Paste your <strong>Spreadsheet ID</strong> below to activate your FEU Grade Calculator.</p>
    <ul>
      <li>Open your Google Sheet.</li>
      <li>Copy the long string between <code>/d/</code> and <code>/edit</code> in the URL.</li>
      <li>Paste it here and click <strong>Activate</strong>.</li>
    </ul>

    <div class="inputBox">
      <label for="spreadsheetId"><strong>Spreadsheet ID:</strong></label>
      <input type="text" id="spreadsheetId" placeholder="e.g. 1a2b3c4d5e6f7g8h9i..." />
      <button class="cta" id="activateBtn">Activate</button>
      <div id="message"></div>
    </div>

    <hr />

    <p>Having issues? Read the <a href="https://feu.jareddo06.ovh/privacy.html" target="_blank">Privacy Policy</a> or contact <a href="mailto:miguel@jareddo06.ovh">miguel@jareddo06.ovh</a>.</p>
  </main>

  <footer>
    <p>© 2025 FEU Grade Calculator | Hosted on <a href="https://github.com/jareddo-kun/FEUCalcSite" target="_blank">GitHub Pages</a></p>
  </footer>

  <script>
    const backendURL = "https://script.google.com/macros/s/AKfycbxboKL8UPk5VuuyqWDCb8x_RZDlGXQ85MgsdjKk4InOvViO4BTbFxWH-TAbg1zGTD7K/exec";

    const activateBtn = document.getElementById("activateBtn");
    const messageEl = document.getElementById("message");

    activateBtn.addEventListener("click", async () => {
      const spreadsheetId = document.getElementById("spreadsheetId").value.trim();
      if (!spreadsheetId) {
        messageEl.textContent = "⚠️ Please enter a Spreadsheet ID first.";
        return;
      }

      messageEl.textContent = "⏳ Activating your spreadsheet... Please wait.";

      try {
        const response = await fetch(`${backendURL}?id=${encodeURIComponent(spreadsheetId)}`);
        const text = await response.text();

        if (text.includes("✅")) {
          messageEl.style.color = "green";
        } else if (text.includes("❌")) {
          messageEl.style.color = "red";
        } else {
          messageEl.style.color = "#555";
        }

        messageEl.textContent = text;
      } catch (err) {
        console.error(err);
        messageEl.style.color = "red";
        messageEl.textContent = "❌ Network error or invalid backend link.";
      }
    });
  </script>
</body>
</html>
