---
title: "Background Behaviour"
aliases:
  - "background behaviour"
  - "running in background"
  - "does it work in background"
  - "why does it stop in background"
  - "app refresh"
  - "background refresh"
  - "low power mode battery"
  - "battery background"
  - "background location"
  - "drive recorder background"
  - "border detection background"
  - "background app refresh"
category: "Advanced"
type: "Reference"
tags: [help, vanlife-assistant, advanced, reference, background, battery, behaviour, low-power-mode, app-refresh, location, drive-recorder]
last_updated: "2026-03-08"
---

# 📲 Background Behaviour

## Overview

Vanlife Assistant is designed to keep working when it's not in the foreground — the Drive Recorder continues logging, border crossings are detected, and Spot Mode can trigger SmartVan automations, all without you needing to look at your phone. This article explains which features continue in the background, what iOS permissions they require, and what can interrupt them.

---

## What Runs in the Background

### Drive Recorder

When you start a drive and then lock your screen or switch to another app, the Drive Recorder continues tracking your route in the background using iOS background location updates. The location manager is configured with `allowsBackgroundLocationUpdates = true` and `pausesLocationUpdatesAutomatically = false` during an active recording session, ensuring continuous GPS capture without iOS suspending the location session.

If your phone runs out of battery during a drive, the drive is saved up to the point the phone died when it restarts. If you force-quit the app during a drive, the recording stops immediately. Background location is only enabled when an active drive session is in progress — stopping the drive returns the location manager to its standard idle state.

### Border Crossing Detection

Border crossing detection uses iOS Significant Location Change monitoring and Visit monitoring, both of which continue in the background with minimal battery impact. These are low-power modes that wake the app periodically when the device has moved a significant distance (roughly 500 metres to several kilometres depending on iOS and available signals) rather than streaming continuous GPS. This is why border detections may arrive with a few minutes delay rather than at the exact moment of crossing.

### Spot Mode

Spot Mode (available in Smart Van) uses a circular geofence region monitor. iOS wakes the app in the background when the device enters or exits the defined radius, triggering the configured Van Mode change. Region monitoring is managed by iOS and continues even if the app is fully backgrounded.

### CloudKit Sync

CloudKit sync continues in the background under normal iOS conditions. Changes made on one device are pushed to iCloud and pulled to other devices without requiring the app to be open. See [[CloudKit_Sync_Behaviour|CloudKit Sync Behaviour]] for details.

### Van Brain Automations

Weather-based and time-based Van Brain rules can fire in the background when their triggers are evaluated and all conditions are met. The app is woken periodically by iOS for background refresh, at which point the automation engine evaluates active rules.

---

## What Stops in the Background

**Solar & Weather Card:** The live solar compass requires active device heading updates, which stop when the app is backgrounded. Solar position calculations also pause. When you return to the app, the compass resumes immediately.

**Voice assistant:** Microphone access is not available in the background. Voice commands require the app to be in the foreground.

**Live Drive Recorder screen updates:** The Live Drive screen stops updating the map and stats while backgrounded. The recording itself continues (see above), but the visual display pauses. When you return to the app, all data caught up to the present is rendered.

---

## What Can Interrupt Background Behaviour

**Low Power Mode:** iOS reduces all background activity significantly in Low Power Mode. Background location updates become less frequent, background app refresh may be suspended entirely, and CloudKit sync slows or pauses. The Drive Recorder may still function but with degraded accuracy. If battery is critical, consider pausing the drive and resuming when charged.

**Force-quitting the app:** Swiping the app off the app switcher terminates all background processes immediately. Drive recording stops, border detection stops, and Spot Mode geofencing stops until the app is next opened. The Van Brain cannot fire automations while the app is fully terminated on most iOS configurations.

**"Always Allow" location permission revoked:** Background location updates — including the Drive Recorder and border detection — require "Always Allow" location permission. If this is downgraded to "While Using" in iOS Settings, these features degrade: the Drive Recorder continues while the screen is on (foreground), but stops when locked; border detection stops entirely. See [[Permission_Changes|Permission Changes]] for recovery steps.

**iCloud storage full:** CloudKit sync silently stops when iCloud storage is exhausted. The app continues working locally, but changes are not backed up or synced to other devices until storage is freed.

---

## Battery Impact

Vanlife Assistant is designed to be considerate of battery. Background location modes are chosen by context:

- **During an active drive:** High-accuracy continuous location (highest battery impact — intentional, as GPS quality matters for route accuracy)
- **When parked:** Significant Location Change and Visit monitoring only (very low battery impact)
- **Spot Mode:** Geofence region monitoring only (negligible battery impact)
- **Idle / no active features:** No background location activity

If you are not recording a drive and not using Spot Mode, the app does not consume measurable background battery beyond what iOS background refresh uses for CloudKit sync and automation evaluation.

---

## Related Articles

- [[CloudKit_Sync_Behaviour|CloudKit Sync Behaviour]]
- [[Permission_Changes|Permission Changes]]
- [[Getting_Started/Reference/Permissions Explained|Permissions Explained]]
- [[Drive_Recorder|The Drive Recorder]]
- [[Spot_Mode|Spot Mode]]
