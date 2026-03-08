---
title: "Spot Mode"
aliases:
  - "spot mode"
  - "perimeter"
  - "geofence"
  - "gps anchor"
  - "spot anchor"
  - "auto driving mode"
  - "auto camp mode"
  - "auto mode switch"
  - "automatic mode"
  - "departure detected"
  - "sentry auto"
  - "perimeter active"
  - "walking away"
  - "driving away"
  - "left van"
  - "return to van"
  - "safety warning"
  - "open sensors driving"
  - "always location"
  - "background location"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, spot-mode, geofence, perimeter, automation, reference]
last_updated: "2026-02-23"
---

# 📍 Spot Mode (Perimeter)

## Overview

Spot Mode is the GPS perimeter anchor that makes Smart Van truly automatic. When you switch to any stationary mode (Camped, Sleep, Sentry, Stealth, or a custom mode), the app anchors your current coordinates as "the spot". From that moment, it continuously monitors whether the van has left the spot — and when it does, it automatically switches modes and sends you a notification. When you return, it switches back. The whole thing happens without you touching the app.

The security status cell on the dashboard shows **"Perimeter Active"** when Spot Mode is running and no alerts are present.

---

## How it Works

**Anchoring** — When you switch to any non-Driving mode, the app captures your current GPS coordinates as the anchor point and starts a geofence around them. The radius of this geofence is tuned to distinguish "walked to the site facilities 50 metres away" from "drove to the next village 2 km away".

**Monitoring** — iOS monitors the geofence continuously in the background, even when the app is not active. This requires **Always Allow** location permission for the most reliable behaviour; "While Using" will work while the app is in the foreground but may not trigger in the background.

**Motion analysis** — When the geofence boundary is crossed on departure, the app checks your motion activity data (requiring Motion & Fitness permission) to determine whether you're **driving** or **walking/cycling**. This distinction is critical for choosing the right automatic mode.

---

## Automatic Mode Switching

### Departure — Driving Away
If you leave the spot and the motion data indicates vehicle speed:

1. Open sensors are checked. If any contact sensor or door is open/unlocked, a **time-sensitive notification** is sent immediately: "🚨 STOP! SAFETY WARNING — You are driving but [Door Name] is still open." This notification breaks through Do Not Disturb.
2. If sensors are clear, a normal notification confirms: "Departure Detected — Switched to Driving Mode."
3. The mode switches to **Driving** automatically and any assigned Driving Mode scene executes.
4. The perimeter anchor is released (Spot Mode deactivates).

### Departure — Walking Away
If you leave the spot on foot (or by bike):

1. A notification is sent: "Van Secured — Perimeter exit detected. Sentry Mode Active."
2. The mode switches to **Sentry** automatically and any assigned Sentry Mode scene executes.
3. The perimeter anchor remains active — the van is still parked, you've just left it.

### Return
When you re-enter the geofence after having been in Sentry Mode:

1. A notification is sent: "Welcome Back — Sentry mode disabled."
2. The mode switches back to **Camped** automatically and any assigned Camped Mode scene executes.

If you return while in Driving Mode (i.e. you drove away and came back), the return event doesn't trigger an automatic mode switch — you switch to Camped (or any other mode) manually.

---

## Permissions Required

Spot Mode requires two iOS permissions:

**Location — Always Allow:** Grants the app access to your location in the background. Without "Always Allow", the geofence won't trigger when the app isn't active. iOS will periodically remind you this permission is in use; this is expected behaviour.

**Motion & Fitness:** Used to distinguish driving from walking at departure. Without this permission, the app can't tell whether you've driven away or walked to the toilet block, so automatic mode switching will be less accurate (it may default to Sentry Mode for all departures).

Grant both permissions during the [[SmartVan_Setup|setup wizard]] (Step 3), or update them at any time in iOS Settings → Privacy → Location Services / Motion & Fitness.

---

## Activating and Deactivating Spot Mode Manually

Spot Mode activates and deactivates automatically based on the current mode — you don't need to manage it directly. But you can control it indirectly:

- **To start Spot Mode:** Switch to any non-Driving mode (Camped, Sleep, Sentry, Stealth, or custom). Spot Mode anchors immediately at your current location.
- **To stop Spot Mode:** Switch to Driving Mode. The anchor is released and geofencing stops.

If you switch between two stationary modes (e.g. Camped → Sleep), the anchor stays active but is not re-anchored — it retains the original location captured when you first entered a stationary mode.

---

## The Perimeter Status Indicator

On the Smart Van dashboard's status card, the security status cell shows **"Perimeter Active"** when Spot Mode is running and there are no current security alerts. When an alert fires (a sensor opens, motion is detected, etc.), the security cell switches to show the active alert message instead.

---

## Spot Mode and the Van Brain

Spot Mode state is a trigger available in [[Van_Brain|Van Brain automations]]:

- **"Spot Mode Activates"** — fires when Spot Mode starts (i.e. when you switch to any stationary mode)
- **"Spot Mode Deactivates"** — fires when Spot Mode stops (i.e. when you switch to Driving Mode)

Example use: *When Spot Mode Activates → Turn on the water pump.*

---

## Troubleshooting

**Spot Mode doesn't seem to trigger on departure:**
- Check iOS Settings → Privacy → Location Services → Vanlife Assistant is set to "Always"
- Check that Motion & Fitness access is granted
- Make sure Smart Van setup has been completed

**The wrong mode triggered on departure:**
- Motion activity detection works best at typical driving speeds. Very slow departure (reversing out of a tight pitch) may be classified as walking. You can always switch modes manually from the dashboard.

**"SAFETY WARNING" notification appeared:**
- One of your contact sensors or door accessories was open when you started driving. Check the devices listed in the notification and secure them before continuing.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[Van_Brain|The Van Brain]]
- [[SmartVan_Setup|Setting Up Smart Van]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
