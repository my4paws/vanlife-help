---
title: "CloudKit Sync Behaviour"
aliases:
  - "cloudkit sync"
  - "icloud sync"
  - "sync problems"
  - "not syncing"
  - "sync conflict"
  - "data not matching"
  - "missing data on another device"
  - "sync between devices"
  - "ipad sync"
  - "new phone sync"
  - "data not appearing"
  - "cloudkit sync behaviour"
category: "Advanced"
type: "Reference"
tags: [help, vanlife-assistant, advanced, reference, cloudkit, swiftdata, sync, icloud, conflicts, behaviour]
last_updated: "2026-03-08"
---

# ☁️ CloudKit Sync Behaviour

## How It Works

Vanlife Assistant stores all your data locally on your device using SwiftData — Apple's on-device database framework. This data is then automatically synced to your **private Apple iCloud account** via CloudKit whenever an internet connection is available.

This architecture is deliberately offline-first: the app never requires a connection to function. All features work without internet. CloudKit sync is a background process that keeps your data backed up and consistent across your devices — it does not gate any app functionality.

The developer does not have access to your data. All syncing happens directly between your device and your personal Apple iCloud account using Apple's encrypted infrastructure.

---

## What Gets Synced

Everything in the app database is included in CloudKit sync: vans and fleet data, all trips and check-ins, drive logs, the manifest (inventory), glovebox documents, the full money ledger (accounts, transactions, scenarios, categories), SmartVan device configurations and automation rules, whiteboard lists, app settings, and the Spots vault including your personal My Places.

---

## When Sync Happens

Changes you make are queued immediately and pushed to iCloud when the device next has a valid internet connection. In practice, if you have cell signal or Wi-Fi, changes sync within seconds to a few minutes.

When you open the app on a second device, it pulls the latest changes from iCloud. How quickly this appears depends on iOS background refresh settings and network conditions — it typically happens within a minute or two of the second device coming online.

---

## Sync in Low Power Mode and Low Data Mode

iOS will throttle or pause background activity in these states to preserve battery or data usage. CloudKit sync may be delayed until you open the app directly or restore normal power/data settings. Data is never lost — it queues locally and syncs when conditions allow.

---

## Conflicts

CloudKit uses a last-write-wins strategy for conflicts. If you edit the same record on two devices while offline and then reconnect, the most recently modified version is kept. This is rare in normal use but worth knowing if you actively use the app on multiple devices simultaneously in poor connectivity areas.

---

## Common Sync Issues

**Data not appearing on second device:** Check that both devices are signed into the same Apple ID, that iCloud Drive is enabled on both (iOS Settings → [Your Name] → iCloud → iCloud Drive), and that neither device is in Low Power or Low Data Mode. Also check that your iCloud storage is not full (iCloud simply stops accepting new data when storage is exhausted — no error is shown in the app).

**Data looked correct yesterday, now something is missing:** If you deleted data on one device, that deletion will sync to all other devices. Deletions are permanent and cannot be recovered once synced. If iCloud storage ran out, recent changes on one device may not have synced before the data was modified or deleted on another.

**App shows a spinner or "recovering" state on first launch after installing on a new device:** This is expected. The app detects a returning user by checking iCloud Key-Value Store for a completion flag, then waits for SwiftData to receive and apply the CloudKit data payload. On a good connection this takes under a minute. On a poor connection it can take several minutes. The app is usable once data loads — you don't need to wait.

---

## iCloud Storage

Vanlife Assistant's data is compact. The full app database for a heavy user (years of trips, thousands of transactions, hundreds of manifest items, large glovebox documents) typically uses well under 1 GB of iCloud storage. The largest contributor is document images in the Glovebox — a PDF scan of a passport might be a few MB. Drive logs and check-in photos are stored with iOS Photos (not in the app database) so they don't count against app data storage.

---

## Related Articles

- [[Sync and Backups|Sync and Backups]] — User-facing overview of offline-first design and iCloud sync
- [[Background_Behaviour|Background Behaviour]] — How the app behaves when it's not in the foreground
- [[Data_Integrity_and_Backups|Data Integrity and Backups]] — Database health checks, factory reset, and manual data export
- [[Permissions Explained|Permissions Explained]] — iCloud permission requirements
