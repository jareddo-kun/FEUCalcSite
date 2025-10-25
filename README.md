# FEU Grade Calculator — Activation Web App

This web app allows FEU students and faculty to **activate** and **manage** their own copy of the FEU Grade Calculator Google Sheet through a simple web interface.  
It connects securely with Google Apps Script to enable spreadsheet features such as automatic formula setup, protection settings, and visual interface integration.

---

## 🌐 Live App
👉 [Launch the Web App](https://https:/feu.jareddo06.ovh/)

> The app runs directly in your browser and communicates only with **your own Google account** after you grant permission.

---

## 🧩 Features
- Activates the FEU Grade Calculator spreadsheet automatically.
- Adds and configures necessary Apps Script triggers.
- Protects key formula cells from accidental edits.
- Uses a clean, lightweight HTML + JS interface.
- Hosted on GitHub Pages and integrated with Google Apps Script backend.

---

## ⚙️ How It Works
1. When you open the web app, it loads a simple interface.
2. You enter your **Spreadsheet ID** (the long ID part of your Google Sheets URL).
3. The app connects to the **Google Apps Script** backend (`Code.gs`), which performs the activation tasks.
4. You’ll see a confirmation message once the process completes successfully.

---

## 🔐 Privacy & Security
This web app:
- Only accesses **your own** Google Sheets that you explicitly authorize.
- Does **not** collect, store, or transmit personal data outside your Google account.
- Operates fully within the **Google Apps Script ecosystem**.
- Is open-source and transparent — you can inspect all scripts directly here.

🔗 [Privacy Policy](https://https:/feu.jareddo06.ovh/privacy.html)

---

## 🧠 Tech Stack
- **Frontend:** HTML, CSS, JavaScript (client-side only)
- **Backend:** Google Apps Script (Code.gs)
- **Hosting:** GitHub Pages
- **APIs:** Google Sheets API (via Apps Script Services)

---

## 🪜 Setup Guide (for Developers)
If you wish to clone or modify the project:
1. Fork or clone this repository.
2. Update the HTML and JavaScript files as needed.
3. In Google Apps Script:
   - Paste your `Code.gs` backend.
   - Deploy the script as a **Web App** (execute as *me*, access by *anyone*).
4. Update the script URL in your frontend `index.html` or JS file.
5. Commit and push — GitHub Pages will automatically redeploy.

---

## 🧾 License
This project is licensed under the **MIT License**.  
You are free to reuse, modify, and distribute it with proper attribution.

---

## 📬 Contact
For questions or support, reach out at:  
📧 **miguel@jareddo06.ovh**

