---
title: "Data Management and Database Cleanup"
aliases:
  - "data management"
  - "database health"
  - "issues detected"
  - "duplicate categories"
  - "orphaned items"
  - "factory reset"
  - "erase data"
category: "Settings"
type: "Tutorial"
tags: [help, vanlife-assistant, settings, database, data-management, cleanup, tutorial]
last_updated: "2026-02-22"
---

# Data Management and Database Cleanup 🩺

Because Vanlife Assistant synchronises your data via iCloud, it sometimes has to work across incredibly poor mobile networks (like when you are parked deep in a national park). 

Occasionally, a network drop during a sync can cause iCloud to duplicate a category or "lose" the location of an item in your manifest. The **Data Management** tool is a built-in health scanner that constantly monitors your database for these errors and fixes them safely.

## ✅ The Health Scanner
If you scroll to the bottom of the main **Settings** page, you will see the Data Management row. 
* **Healthy:** If it displays a green tick and says "Database is healthy", you don't need to do anything!
* **Issues Detected:** If the app spots an error, this row instantly transforms into a large, orange warning card. Tap it to open the **Database Cleanup Sheet**.

## 🛠️ How to Fix Detected Issues
The Database Cleanup sheet categorises the exact issues it found and provides a simple, one-tap button to fix them.

### 1. Duplicate Settings or Scenarios
If iCloud accidentally creates two identical What-If Scenarios or app settings files, the scanner will flag them.
* **The Fix:** Tap **Fix Duplicates**. The app will intelligently identify the oldest, original file, keep it, and safely delete the duplicates.

### 2. Duplicate Categories or Groups
This is the most common iCloud conflict. If you end up with two categories named "Fuel", it can break your financial charts.
* **The Fix:** Tap **Fix Category Duplicates**. The engine is incredibly smart: it will find the "Fuel" category that contains all your logged transactions, keep it, and then safely merge any transactions from the "fake" duplicate before deleting it. You will never lose a logged expense.

### 3. Manifest Health (Orphaned Items)
If you move a storage container while offline, an item might occasionally lose its assigned location, turning into an "Orphan". It exists in the database, but it isn't assigned to any Zone or Container!
* **The Fix:** Tap **Clean Up Manifest**. A sheet will open displaying every orphaned item (e.g., "1x Torch"). You can then swipe to delete these ghost items to keep your payload calculations perfectly accurate.

---

## ⚠️ The Danger Zone (Factory Reset)
At the very bottom of the Data Management sheet sits the **Danger Zone**. 

If you are selling your van, ending your trip, or just want to start completely fresh, you can tap **Erase All Data & Start Fresh**. 
* **What it does:** This triggers a full factory reset. It will permanently wipe your entire database—including all your Vehicles, Trips, Ledgers, Documents, and Settings—from both your physical device and your Apple iCloud account. 
* **Warning:** *This action is immediate and cannot be undone. You will be instantly logged out and returned to the app's Welcome screen.*