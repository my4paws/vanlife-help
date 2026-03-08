---
title: "Smart Van"
aliases:
  - "smart van"
  - "smartvan"
  - "homekit"
  - "smart home"
  - "van smart"
  - "smart van overview"
  - "smart van index"
  - "van automation"
  - "van control"
  - "van accessories"
category: "SmartVan"
type: "Index"
tags: [help, vanlife-assistant, smartvan, index, overview]
last_updated: "2026-02-23"
---

# ⚡ Smart Van

Smart Van transforms your van into a reactive, intelligent home by connecting to Apple HomeKit. Control your lights, locks, pumps, and sensors from a single dashboard. Define modes that reconfigure the entire van in one tap. Build automation rules that run without you touching the phone. Let GPS detect when you've parked up or hit the road and change modes automatically.

Smart Van does not require a separate cloud account or hub beyond what you've already set up in the Apple Home app. All device control is local, all automations run on-device.

---

## Getting Started

- [[SmartVan_Setup|Setting Up Smart Van]] — First-time setup wizard, HomeKit requirements, iOS permissions

---

## 🎛️ Modes and Control

- [[Van_Modes|Van Modes]] — The five system modes (Driving, Camped, Sentry, Sleep, Stealth), custom modes, the Safety Interlock, and mode configuration
- [[SmartVan_Dashboard|The Smart Van Dashboard]] — Status card, mode selector carousel, live context (location, weather, temperature), connection indicator, and display settings
- [[Scenes|Scenes]] — HomeKit scene execution, assigning scenes to modes, reordering the scenes carousel

---

## 🏠 Devices

- [[Rooms_and_Devices|Rooms and Devices]] — Room cards, all device tile types, tap and long-press actions, power strip sheet, unreachable and hidden devices
- [[Light_Controls|Light Controls]] — Brightness slider, colour presets, custom colour wheel, power button
- [[SmartVan_Cameras|Cameras]] — Live feed carousel, CCTV grid, full-screen view with pinch-zoom, mute/listen, push-to-talk, spotlight, indoor/outdoor motion filtering
- [[Device_Settings|Device Settings]] — Custom name, type override, icon picker, hide from dashboard, critical security flag, dashboard favourites

---

## 🤖 Intelligence

- [[Spot_Mode|Spot Mode]] — GPS perimeter anchor, automatic mode switching on departure and return, motion-based driving vs walking detection, safety departure warnings
- [[Van_Brain|The Van Brain]] — Automation rules built on WHEN triggers / AND conditions / THEN actions; every trigger type, condition type, and action type explained

---

## How It All Fits Together

**The flow from pitch to road and back:**

1. You pull into a pitch and tap **Camped Mode**. The GPS anchor is set at your location. A HomeKit scene runs, setting lights and pumps. Van Brain rules fire and the Van Brain turns on the exterior lights because it's after sunset.

2. You leave for a walk. The geofence detects you've left on foot → **Sentry Mode** activates automatically. The van's entry points are locked. Indoor cameras are now monitoring motion. You get a notification: "Van Secured."

3. You return. The geofence detects you've re-entered → **Camped Mode** restores automatically. "Welcome Back" notification.

4. Next morning you're ready to move on. You tap **Driving Mode**. The Safety Interlock checks all sensors — all clear. The van secures: lights off, pump off. You drive away. The GPS anchor is released.

5. You've left but the roof vent was open. As you pull out of the pitch, the geofence triggers departure detection and the Van Brain's safety check fires: "🚨 STOP! SAFETY WARNING — Roof Vent is still open."

**The key relationships:**

| What | Drives | What |
|------|--------|------|
| Van Mode switch | → triggers | HomeKit Scenes |
| Van Mode switch | → triggers | Van Brain rules |
| Van Mode switch | → activates/deactivates | Spot Mode (GPS anchor) |
| Spot Mode departure (driving) | → auto-switches to | Driving Mode |
| Spot Mode departure (walking) | → auto-switches to | Sentry Mode |
| Spot Mode return | → auto-switches to | Camped Mode |
| Any sensor/device state change | → triggers | Van Brain rules |
| Time events / weather thresholds | → trigger | Van Brain rules |
| Van Brain rules | → execute | Scenes, device control, notifications |

---

## Requirements

- Apple HomeKit configured with at least one accessory in the Apple Home app
- iOS Location permission ("Always Allow" recommended for Spot Mode)
- iOS Motion & Fitness permission (for driving vs walking detection at departure)
- Smart Van enabled in Settings → App Settings
