---
title: "Sync and Backups"
aliases:
  - "backup"
  - "restore"
  - "export data"
  - "import data"
  - "icloud backup"
  - "how to backup"
  - "how to restore"
  - "move to new phone"
category: "Getting_Started"
type: "Reference"
tags: [help, vanlife-assistant, getting-started, reference, onboarding, setup, permissions, icloud, sync, backup, restore, and, backups]
last_updated: "2026-02-21"
---
# Sync and Backups ☁️

When you are living on the road, your phone is your lifeline. Whether you are logging a major van repair, adding a border crossing, or updating your budget, you need to know your data is safe—even if you drop your phone off a cliff.

Here is how Vanlife Assistant handles your data, keeps it synced, and works completely off the grid.

---

## 🌲 Offline-First Design
First and foremost: **Vanlife Assistant is an offline-first app.** We know that the most beautiful wild camping spots rarely have 5G. You do not need an internet connection to use the core features of this app. 
* You can stow items in the **Manifest**.
* You can log expenses and view your **Runway**.
* You can read and access your **Glovebox** documents.
* The **Drive Recorder** will continue to map your route using GPS (which doesn't require a cell signal).

## ☁️ How Apple iCloud Sync Works
When you *do* drive back into cell service or connect to a coffee shop's Wi-Fi, the app goes to work in the background. 

Instead of using a third-party server, Vanlife Assistant uses **Apple CloudKit**. This means your data is synced directly to your personal, **Private Apple iCloud account**. 

### The benefits of iCloud Sync:
1. **Total Privacy:** We (the app developers) cannot see your data. Your financial logs, travel documents, and manifest inventory are securely locked in your personal iCloud.
2. **Multi-Device Sync:** If you use Vanlife Assistant on your iPhone while driving, and then open it on your iPad at the campsite, your data will automatically be there.
3. **Automatic Backups:** As long as iCloud sync is enabled, your data is continuously backed up. If you lose your phone, simply download the app on your new device, log in with your Apple ID, and all your data will reappear.

👉 *Note: To use this feature, you must be logged into your Apple ID on your device and have iCloud Drive enabled. If you have run out of iCloud storage, your app data will not sync.*

## 💾 Exporting Your Data (Manual Backups)
While iCloud handles the heavy lifting automatically, we believe your data belongs to you. You can export your data at any time to keep personal hard copies:
* **Money:** Export your entire ledger or specific monthly reports as a `.CSV` file for Excel or Numbers. 👉 *See [[Money/Reference/Exporting Your Data (CSV)|CSV Export Service]]*
* **Trips:** Export your recorded drives as `.GPX` files to use in other mapping software. 👉 *See [[Trips/Reference/GPX Import|GPX Import & Export]]*

## ⚠️ Troubleshooting Sync
If your data doesn't seem to be showing up on your other devices, check the following:
1. Are you out of cell range? The app needs an internet connection to push changes to iCloud.
2. Are you in **Low Data Mode** or **Low Power Mode**? Your iPhone may pause background syncing to save battery or cellular data.
3. Is your iCloud storage full? Check your iPhone's main **Settings > [Your Name] > iCloud**.

👉 *For more advanced technical details, check out [[Advanced/Reference/CloudKit_Sync_Behaviour|CloudKit Sync Behaviour]].*