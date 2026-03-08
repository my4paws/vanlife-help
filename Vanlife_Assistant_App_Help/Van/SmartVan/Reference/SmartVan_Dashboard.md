---
title: "The Smart Van Dashboard"
aliases:
  - "smart van dashboard"
  - "smartvan dashboard"
  - "van dashboard"
  - "smart van control"
  - "smart van control view"
  - "status card"
  - "hero card"
  - "context card"
  - "live status"
  - "inside temperature"
  - "current mode"
  - "location name"
  - "smart van summary"
  - "van tab smart van"
  - "connection status"
  - "live indicator"
  - "force refresh"
  - "show hidden"
  - "reorder rooms"
  - "reorder scenes"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, dashboard, status, reference]
last_updated: "2026-02-23"
---

# 🏠 The Smart Van Dashboard

## Overview

The Smart Van dashboard is your real-time command centre for the van. It brings together the current mode, live sensor readings, CCTV feeds, HomeKit scenes, and every room's devices into a single scrollable view. Anything you can control or monitor through Apple HomeKit is accessible here — organised the way your van is actually laid out, updated live.

---

## Opening the Dashboard

Tap the Smart Van summary card on the Van tab home screen to open the full dashboard as a navigation push. You can also access it by tapping the mode icon button on the left side of that summary card.

---

## The Van Tab Summary Card

Before you open the full dashboard, the summary card on the Van tab gives you a quick read:

- **Mode icon** (coloured square on the left) — shows the current mode with its icon and abbreviated name. Tapping it **quick-toggles** the mode: if you're in a stationary mode, it switches to Driving; if you're in Driving, it switches to Camped. The Safety Interlock fires here too if any sensors are open.
- **Status text** — a live summary line generated from your HomeKit state. Examples: "3 Lights On • 18.5°C", "⚠️ Sliding Door Open", "💧 Leak Detected!", "All Secure". Updates automatically whenever HomeKit reports a change.
- **Chevron** — taps through to the full dashboard

If Smart Van is enabled but setup hasn't been completed, the card shows "Setup Smart Van — Tap to connect HomeKit & sensors" instead.

---

## The Status Card

At the top of the dashboard, the **Status Card** is a large contextual card showing four pieces of live information:

**Current Mode** — the mode name in large bold text with its icon. The ℹ️ button beside "CURRENT MODE" opens the [[Van_Modes|Mode Info sheet]].

**Location** — the resolved place name for your current position (e.g. "Windermere", "Glencoe"). Updates when you enter a new stationary mode and the context refresh runs. Shows "Unknown Location" if GPS isn't available.

**Security Status** — shows either "System Secure" (green shield) or an active alert in red/orange with the specific issue (e.g. "Back Door Open", "Leak Detected", "Motion Detected"). When Spot Mode is active and no alerts exist, it shows "Perimeter Active".

**Outside Weather** — current temperature and a weather condition icon sourced from your live location. Shows "Weather Unavailable" if location or weather data can't be fetched.

**Inside Temp** — the average temperature reading across all HomeKit temperature sensors in the van. If no temperature sensors are configured, this shows "--".

---

## The Freshness Indicator

The top-right toolbar pill shows the connection status and data freshness:

- **Live** (green dot) — HomeKit has updated within the last 15 seconds
- **Xs** (green) — last update was X seconds ago (15–60s)
- **Xm** (yellow) — last update was X minutes ago (1–5 min)
- **Xm** (orange) / **Offline** — update is stale or connection is lost

Tapping the pill opens the display menu, which includes:
- The full timestamp of the last update (e.g. "Updated 2 minutes ago")
- The connected HomeKit Home name
- **Van Brain Rules** — opens the full [[Van_Brain|Van Brain automation list]]
- **Homes** — a list of all your configured HomeKit Homes; tap one to switch to it
- **Show Hidden Items** — toggle to reveal accessories you've hidden from the dashboard
- **Reorder Scenes** — opens the scene ordering sheet
- **Reorder Rooms** — opens the room ordering sheet
- **Restart Setup Wizard** — resets setup and re-runs the wizard
- **Force Refresh** — manually triggers a HomeKit poll and context refresh

---

## The Mode Selector Carousel

Below the status card, a horizontal scrolling carousel shows every configured mode as a pill button — system modes first (Driving, Camped, Sentry, Sleep, Stealth), then any custom modes, then a **+ New Mode** button.

The active mode's pill is filled with its colour. Inactive modes show a tinted outline. Tap any pill to switch modes. Long-press any pill to open its [[Van_Modes|Mode Configuration sheet]].

---

## CCTV Live Feeds

If any of your HomeKit accessories have camera profiles, a **CCTV Live Feeds** section appears above the scenes. It shows horizontally scrolling preview cards — one per camera — each showing a live thumbnail feed, a camera name, and a green live indicator dot.

- **Tap any preview** to open the full-screen camera view
- **Tap the "CCTV Live Feeds" header button** to open the CCTV Grid — all cameras simultaneously in a 2-column grid view

See [[SmartVan_Cameras|Cameras]] for full camera controls.

---

## Scenes Carousel

HomeKit Scenes (called Action Sets in HomeKit terminology) appear as a horizontally scrolling row of capsule buttons. Tapping a scene button executes it immediately against your HomeKit Home — all the actions defined in that scene run at once. A brief icon bounce animation confirms execution.

Scene buttons are sorted by your saved scene order. To reorder them, use **Reorder Scenes** from the display menu.

Each scene button shows an icon based on the scene type: Sleep scenes get a moon icon, wake-up scenes get a sun, arrival scenes get a walking figure arriving, departure scenes get a walking figure leaving, and user-defined scenes get a star.

See [[Scenes|Scenes]] for how to assign scenes to modes.

---

## Room Cards

The bulk of the dashboard is a vertical stack of **Room Cards** — one for each HomeKit Room that contains at least one accessory.

Rooms are sorted by your saved room order (drag to reorder via the display menu). Each room card shows:

- **Room name** in its assigned colour (rooms cycle through: blue, purple, orange, teal, indigo, pink, green, yellow)
- **Accessory count badge**
- Accessories grouped by type within the card: Lights first, then Power/Switches, Climate, Security/Sensors, Entertainment, Water, Other
- Each device type group has a small sub-header showing the type name and icon

Within each group, accessories are displayed as **Service Tiles** in a two-column grid. See [[Rooms_and_Devices|Rooms and Devices]] for full detail on tiles and controls.

---

## Connection Issues

If Smart Van is set up but no accessories can be found, a connection error view appears in place of the room cards. Check the Apple Home app to verify your accessories are online, then tap **Retry Connection** or use **Force Refresh** from the display menu.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[Rooms_and_Devices|Rooms and Devices]]
- [[SmartVan_Cameras|Cameras]]
- [[Scenes|Scenes]]
- [[Spot_Mode|Spot Mode]]
- [[Van_Brain|The Van Brain]]
- [[SmartVan_Setup|Setting Up Smart Van]]
