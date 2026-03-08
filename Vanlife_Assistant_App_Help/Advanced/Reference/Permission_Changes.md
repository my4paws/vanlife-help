---
title: "Permission Changes"
aliases:
  - "i changed permissions"
  - "i turned off permissions"
  - "permissions revoked"
  - "after changing settings"
  - "after turning off location"
  - "after turning off notifications"
  - "location turned off"
  - "notifications turned off"
  - "homekit permission"
  - "microphone turned off"
  - "speech recognition off"
  - "permission changes"
  - "restore permissions"
  - "re-enable permissions"
category: "Advanced"
type: "Reference"
tags: [help, vanlife-assistant, advanced, reference, permissions, changes, revoked, settings, location, notifications]
last_updated: "2026-03-08"
---

# 🔐 Permission Changes

## Overview

If you granted a permission during onboarding and later revoked it in iOS Settings, or if iOS itself downgraded a permission (which can happen after a major iOS update), some app features will stop working. This article describes exactly what breaks for each permission and how to restore it.

You can see the live status of all app permissions at any time in **Settings → Privacy, Security & Permissions** within the app.

---

## Location Services

Location is the permission with the most downstream impact. The app requests "Always Allow" to enable background features.

### Downgraded to "While Using the App"

- **Drive Recorder:** Continues working while the app is on screen, but GPS tracking stops when you lock your phone. You'll get incomplete drive logs.
- **Border crossing detection:** Stops entirely. Crossings must be logged manually via check-ins.
- **Spot Mode (SmartVan):** Geofence arrival/departure triggers stop firing.
- **Check-in location capture:** Still works — check-ins use foreground location only.
- **Solar & Weather Card:** Still works.

### Revoked entirely ("Never")

All location-dependent features stop: Drive Recorder, border detection, Spot Mode, automatic check-in coordinates, and the Solar & Weather Card. The app still works for manual data entry, finance, manifest, and glovebox.

### How to restore

iOS Settings → Privacy & Security → Location Services → Vanlife Assistant → **Always**.

---

## Notifications

If notifications are disabled, the app can still send push notifications but they will be silently discarded by iOS and never reach your lock screen or notification centre.

Features that become silent:

- Van Brain automation push notifications (weather alerts, wind warnings, frost warnings, custom rules)
- Compliance and maintenance due-date reminders
- Any SmartVan security alerts

### How to restore

iOS Settings → Notifications → Vanlife Assistant → **Allow Notifications → on**.

---

## Microphone & Speech Recognition

These are required together for the voice assistant to work. Both must be granted.

If either is revoked, tapping the voice assistant button will prompt you to re-grant access. The voice assistant cannot function with either permission missing.

### How to restore

iOS Settings → Privacy & Security → Microphone → Vanlife Assistant → **on**.
iOS Settings → Privacy & Security → Speech Recognition → Vanlife Assistant → **on**.

---

## Camera

Camera access is used by the document scanner in the Glovebox and by the QR code reader for Manifest containers. If revoked, these features show a "Camera access required" prompt rather than opening the camera.

### How to restore

iOS Settings → Privacy & Security → Camera → Vanlife Assistant → **on**.

---

## Photos

Photo library access is used when adding a photo to your van profile or to a check-in. If revoked, the photo picker still opens but shows an empty library. You can still use the camera directly to take a new photo, which doesn't require photo library permission.

### How to restore

iOS Settings → Privacy & Security → Photos → Vanlife Assistant → **Full Access** (or at minimum "Add Photos Only" if you only need to add photos, not read existing ones).

---

## Motion & Fitness

Motion access is used to help the Drive Recorder distinguish between driving and stationary periods, and powers Spot Mode's motion-based tracking. If revoked, these features fall back to GPS-only detection, which still works but with slightly less precision.

### How to restore

iOS Settings → Privacy & Security → Motion & Fitness → Vanlife Assistant → **on**.

---

## HomeKit

HomeKit access is required for Smart Van to connect to and control your HomeKit accessories. If revoked, the Smart Van dashboard shows no devices. Existing Van Brain rules that control HomeKit devices cannot execute.

### How to restore

iOS Settings → Privacy & Security → HomeKit → Vanlife Assistant → **on**.

---

## Checking All Permissions at Once

Rather than hunting through iOS Settings manually, open the app's built-in permissions screen: **Settings (bottom tab) → Privacy, Security & Permissions**. This shows a live status row for every permission the app uses — green for granted, amber for degraded, red for denied. Tap any row to be taken directly to the relevant iOS Settings screen.

---

## Related Articles

- [[Getting_Started/Reference/Permissions Explained|Permissions Explained]] — Why each permission is needed
- [[Background_Behaviour|Background Behaviour]] — How permission changes affect background features
- [[SmartVan_Setup|Setting Up Smart Van]] — HomeKit requirements
