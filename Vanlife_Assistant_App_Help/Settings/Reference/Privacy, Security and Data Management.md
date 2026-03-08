---
title: "Privacy, Security and Data Management"
aliases:
  - "privacy"
  - "passcode"
  - "faceid"
  - "database cleanup"
  - "erase data"
category: "Settings"
type: "Reference"
tags: [help, vanlife-assistant, settings, privacy, security, database, reference]
last_updated: "2026-02-22"
---

# Privacy, Security and Data Management 🔒

Vanlife Assistant contains your financial history, travel documents, and live GPS coordinates. Because of this, the app was built from the ground up with a strict **Zero Data Collection** philosophy. 

There are no user accounts, no external servers, and no logins. Everything you do in the app is stored locally on your device and synchronised privately via your personal Apple iCloud. 👉 *See [[Sync and Backups]].*

## 🛡️ Locking the App (FaceID / TouchID)
If you frequently hand your phone to mechanics or border officials (see [[What is Border Mode and how do I use it?]]), you may want to lock down the rest of the app to protect your finances.
1. Open **Settings** -> **General**.
2. Under the Security section, toggle on **Require App Passcode**.
3. Set a secure 4+ digit PIN. 
4. Once enabled, you can also toggle on **Allow FaceID / TouchID** for seamless, secure unlocking.
[[Privacy, Security and FaceID|Learn more]]
## 🔐 System Permissions
For Vanlife Assistant to work properly, it requires access to certain iOS systems (like your Camera for the Document Scanner, or Location Services for the Drive Recorder).
* Tap the **Permissions** row in the main Settings hub to view the Permissions dashboard. 
* This dashboard acts as a traffic light system. If any critical permissions are disabled, it will warn you and provide a direct link to fix it in your iOS settings. 👉 *See [[Permissions Explained]].*

## 🩺 Database Health & Data Management
Because the app syncs heavily with iCloud across poor mobile networks (like when you are wild camping), occasionally a network drop can cause a duplicated category or an "orphaned" manifest item. 

The app includes a powerful, built-in health scanner to fix this instantly:
1. Scroll to the very bottom of the main **Settings** page.
2. Look for the **Data Management** row. 
3. If it displays a green tick, your database is perfectly healthy!
4. If it turns into an orange warning card saying **Issues Detected**, tap it.
5. The **Database Cleanup Sheet** will open. It will show you exactly what is duplicated (e.g., "Found 2 duplicated categories") and provide a one-tap **Fix** button that safely merges the data without losing any of your transactions or items.

## ⚠️ The Danger Zone (Factory Reset)
If you ever want to sell your van and start completely fresh, you can find the **Erase All Data & Start Fresh** button at the very bottom of the Database Cleanup sheet. 
* *Warning: This will permanently wipe your entire database from your device and your iCloud. This action cannot be undone, and you will be returned to the Welcome screen.*

---

### A Note on App Store Subscriptions
Because your data is handled entirely by Apple, any active subscriptions for premium features must be managed through your device's global Apple ID settings, not within Vanlife Assistant itself. 
*(Go to your iPhone Settings -> Tap your Apple ID name -> Tap Subscriptions).*