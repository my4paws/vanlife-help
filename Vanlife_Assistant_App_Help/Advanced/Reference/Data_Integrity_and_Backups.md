---
title: "Data Integrity and Backups"
aliases:
  - "data integrity"
  - "data backups"
  - "backup my data"
  - "how is my data backed up"
  - "export my data"
  - "database health"
  - "data corruption"
  - "data loss"
  - "factory reset"
  - "erase data"
  - "database cleanup"
  - "orphaned items"
  - "duplicate categories sync"
  - "data integrity and backups"
category: "Advanced"
type: "Reference"
tags: [help, vanlife-assistant, advanced, reference, data, integrity, backup, export, factory-reset, database]
last_updated: "2026-03-08"
---

# 💾 Data Integrity and Backups

## How Your Data is Protected

Vanlife Assistant stores data in a local SwiftData database on your device. This database is automatically backed up to your private Apple iCloud account whenever internet is available. Because iCloud sync is continuous, you don't need to take manual backups for day-to-day protection — every change you make is replicated to the cloud within minutes of going online.

If your phone is lost, stolen, or damaged: install the app on any iOS device signed into the same Apple ID, open it, and your data restores automatically from iCloud. This covers everything — vans, trips, check-ins, drive logs, money ledger, manifest, glovebox documents, SmartVan configurations, and settings.

---

## The Database Health Scanner

Because iCloud sync sometimes operates over unreliable mobile networks (mountain passes, remote campsites), occasional sync anomalies can occur — most commonly duplicate records created when a write was interrupted mid-sync. The app has a built-in health scanner that runs automatically in the background and detects these issues before they cause problems.

You can see the scanner's status at the bottom of the main **Settings** screen in the **Data Management** row:

- **Green tick / "Database is healthy"** — no issues detected
- **Orange warning card / "Issues Detected"** — tap to open the Database Cleanup sheet

### What the scanner checks

The health scanner looks for: duplicate AppSettings records, duplicate budget categories or groups, duplicate budget scenarios, duplicate Van Mode definitions, and orphaned Manifest items (items that exist in the database but are no longer assigned to any zone or container).

---

## Fixing Detected Issues

Open the Database Cleanup sheet via the Data Management row in Settings. Each issue type has a dedicated fix button:

**Duplicate settings or scenarios:** The app identifies the original record (oldest createdAt timestamp), keeps it, and safely deletes the duplicates.

**Duplicate categories or groups:** The most common sync conflict. The engine identifies which duplicate holds real transaction data, keeps it, merges any transactions from the stale duplicate into the real one, and deletes the duplicate. No transaction data is lost in this process.

**Orphaned Manifest items:** A sheet lists every orphaned item (e.g. "1× Torch — no zone assigned"). You can swipe individual items to delete them, or tap **Delete All Orphans** to clear them all at once. These are items that genuinely lost their location reference — cleaning them up keeps your payload calculations accurate.

---

## Manual Data Exports

While iCloud handles automatic backup, you can export specific data types as portable files for your own records or to use in other apps:

**Money ledger (CSV):** Export your full transaction history or a filtered month as a CSV file compatible with Excel, Numbers, or any spreadsheet app. Access this from the Money section. See [[Exporting Your Data (CSV)|Exporting Your Data (CSV)]] for full instructions.

**Drive routes (GPX):** Individual drives can be exported as GPX files from the Drive History screen. GPX files can be imported into mapping apps, route planners, or shared with others. See [[GPX Import|GPX Import]] for details.

**Spots dataset (CSV import/export):** Spot packs can be imported from CSV — see [[Importing_a_CSV_Dataset|Importing a CSV Dataset]] for format details. Custom My Places can be backed up by exporting as CSV from the Dataset Manager.

---

## Factory Reset

The **Erase All Data & Start Fresh** option is at the bottom of the Database Cleanup sheet. This performs a full factory reset:

1. Deletes all records from the local SwiftData database (vans, trips, money, documents, manifest, settings, SmartVan — everything)
2. Clears the iCloud Key-Value Store sync flag so the app knows this is a fresh install
3. Saves the deletions, which pushes the wipes to iCloud — this means the reset propagates to all your devices
4. Returns you to the app's Welcome / onboarding screen

**This cannot be undone.** Once the reset propagates to iCloud, there is no recovery path. Ensure you have exported any data you want to keep (CSV ledger, GPX drives) before proceeding.

The reset does not delete your Glovebox document *images* from the iOS Photos library if you chose to save copies there, and it does not affect your Apple iCloud storage account itself — it only deletes the app's data container within iCloud.

---

## Wipe Spot Vault (Selective Reset)

Below the factory reset option, a separate **Wipe Spot Vault** action deletes all imported offline spot datasets from your device. Your personal **My Places** pack is protected and cannot be deleted from this action. Use this to free up storage or to start fresh with a different dataset without affecting any other app data.

---

## Related Articles

- [[CloudKit_Sync_Behaviour|CloudKit Sync Behaviour]] — How iCloud sync works in detail
- [[Background_Behaviour|Background Behaviour]] — What background processes run and when they can be interrupted
- [[Data Management and Database Cleanup|Data Management and Database Cleanup]] — Step-by-step guide to the Settings cleanup tools
- [[Exporting Your Data (CSV)|Exporting Your Data (CSV)]]
