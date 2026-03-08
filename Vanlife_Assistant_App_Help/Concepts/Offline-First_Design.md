---
title: "Offline-First Design"
aliases:
  - "offline first"
  - "offline design"
  - "works without internet"
  - "no signal"
  - "offline capability"
  - "offline philosophy"
  - "works offline"
  - "no connection"
  - "two database architecture"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, offline, design, architecture, reference]
last_updated: "2026-03-08"
---

# 📡 Offline-First Design

Vanlife takes you to places with no mobile signal: mountain passes, forests, remote coastlines, rural campsites far from the nearest cell tower. Vanlife Assistant is built for this. Every core feature works without an internet connection.

This is not an accident — it's a design philosophy that runs through every architectural decision in the app.

---

## The Core Principle

Most apps are built to work online and degrade gracefully offline. Vanlife Assistant is built the opposite way: designed to work fully offline, with connectivity treated as an enhancement when it's available.

This means every feature that matters when you're in a mountain valley with no bars — recording a drive, logging a campsite check-in, adding a ledger entry, auditing the manifest, running automations, checking the Schengen counter — works without any network connection. Data accumulates on device. When you reconnect, it syncs.

---

## Two Databases, Two Different Purposes

The app uses two separate storage systems, each chosen for specific reasons:

### SwiftData + iCloud CloudKit — Personal Data

Your trips, check-ins, drives, ledger entries, manifest inventory, documents, and van profiles all live in a SwiftData database that syncs privately via iCloud CloudKit.

This database is fully offline capable. You can create check-ins, log expenses, record drives, and update your inventory with zero connectivity. The database accumulates everything on device and syncs whenever iCloud is available — silently, in the background, without any action from you.

Your data belongs to you and lives in your private iCloud container. There are no Vanlife Assistant servers, no accounts, no logins. Anthropic cannot access your data. If you delete the app, your data remains in iCloud and can be restored.

→ See [[CloudKit_Sync_Behaviour]] for how sync conflicts are handled.

### GRDB SQLite — The Spots Vault

The Spots location database — potentially hundreds of thousands of locations across multiple imported packs — uses a different engine entirely: GRDB, a high-performance local SQLite library.

This database is explicitly **not** synced to iCloud. It lives entirely on your device. There are two reasons for this:

**Performance** — querying hundreds of thousands of coordinates for proximity searches, type filtering, and vehicle restrictions requires a database engine built for that job. SQLite with proper indexing handles it instantly. CloudKit is not designed for this kind of workload.

**Size** — a large spot pack might be many megabytes. Syncing this data to iCloud would be expensive, slow on first sync, and wasteful of storage quota. The data is better treated as a local resource you import, not personal records you need everywhere.

The practical consequence: if you move to a new iPhone, your personal travel history and finances sync automatically via iCloud. Your Spot packs need to be re-imported from file. This is a deliberate trade-off in favour of performance and privacy.

---

## Drive Recording — The Black Box

The Drive Recorder is designed to survive almost any disruption: a phone call, a low memory event, iOS terminating the app, a phone battery dying and being rebooted.

As GPS points accumulate during a drive, the recorder periodically writes them to a file called `current_expedition.json` in your device's Documents directory. This write happens whenever five or more new points have been collected, or at least every 15 seconds, whichever comes first. It also happens immediately when you manually pause or stop the drive.

If the app is killed mid-drive — for any reason — this file survives. When you reopen the app, the Drive Recorder detects the black box file and offers to recover the drive. Nothing is lost.

This is the "Breadcrumb Only" mode's primary advantage: it uses significantly less GPS resources and battery, at the cost of less granular track detail. In remote areas where battery matters more than precision, it's the right choice.

---

## Background Location

When the Drive Recorder is active, the app holds a **background location** permission that allows GPS tracking to continue when the screen is locked or the app is backgrounded. This is what makes the Drive Recorder useful — you don't need to keep the screen on.

When no drive is actively recording, the app switches to two lighter-weight background mechanisms:

**Significant location changes** — iOS wakes the app when you've moved roughly 500 metres. This is used for country border detection and keeping the location system aware of major position changes without draining battery.

**Visits monitoring** — iOS detects when you arrive or depart a location and notifies the app. This supports automatic check-in prompts and the country detection system.

Both of these work with minimal battery impact because they're handled by the system's location coprocessor rather than continuously polling GPS.

---

## Weather and Scene Caching

The Dynamic Background scene is cached for 30 minutes. Fetching a new scene requires a location and a WeatherKit request — and if neither is available, the app uses the last successfully fetched scene, which is persisted to device storage across app restarts.

On launch, the last scene appears instantly (no network request needed) while the app quietly checks for an update in the background. If you last used the app in bright sunshine and open it again at night in the mountains, the scene will update when the weather fetch completes — but you'll never see a blank background waiting for a network response.

The moon phase is cached separately, for four hours. Moon phase changes slowly; a four-hour cache is accurate enough and avoids unnecessary API calls.

---

## Country Transition Records

GPS-detected border crossings are stored in a plain JSON file in your device's Application Support directory — a separate, local-only store that is not synced to iCloud. This is deliberate: your precise location history at the second you crossed a border is sensitive, and keeping it on device (not in the cloud) is the right call.

This file is automatically trimmed to keep only the last 750 days of transition records. It feeds the Schengen calculator alongside your check-ins and ledger entries.

---

## What Does Require Connectivity

Being specific about what does need a connection:

| Feature | Needs connectivity |
|---|---|
| GPS drive recording | No |
| Check-in creation | No |
| Ledger entry | No |
| Manifest / inventory | No |
| Schengen calculator | No |
| SmartVan automations | No (HomeKit is local) |
| Dynamic Background update | Yes (WeatherKit) |
| Solar & Weather Card forecast | Yes (WeatherKit) |
| iCloud sync | Yes |
| Voice Assistant (AI) | Yes |
| Spot pack CSV import | Depends on source |

The things that need a connection are enhancements — a richer background, a forecast, cloud sync — not core functionality. If you drive into a tunnel and stay there for a week, the app keeps working.

---

## Related Articles

- [[CloudKit_Sync_Behaviour]] — *How iCloud sync works and handles conflicts*
- [[The_Spots_Vault]] — *The offline location database in detail*
- [[Drive Recorder]] — *GPS tracking modes and black box recovery*
- [[Background_Behaviour]] — *What the app does when it's not on screen*
- [[Data_Integrity_and_Backups]] — *How your data is protected*
