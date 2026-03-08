---
title: "Rooms and Devices"
aliases:
  - "rooms and devices"
  - "device tiles"
  - "service tiles"
  - "room card"
  - "room cards"
  - "device types"
  - "lights"
  - "switches"
  - "sensors"
  - "climate sensor"
  - "temperature sensor"
  - "contact sensor"
  - "motion sensor"
  - "leak sensor"
  - "lock"
  - "door sensor"
  - "power strip"
  - "smart plug"
  - "device not responding"
  - "unreachable"
  - "no response"
  - "device offline"
  - "hidden devices"
  - "hide device"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, rooms, devices, tiles, reference]
last_updated: "2026-02-23"
---

# 🔌 Rooms and Devices

## Overview

Every HomeKit accessory in your van is displayed as a **Service Tile** — a small interactive card showing the device's name, icon, current state, and status text. Tiles are grouped into **Room Cards** that mirror the rooms you've set up in Apple Home (Cab, Kitchen, Living Area, etc.). Each room's tiles are further sorted by device type within the card.

---

## Room Cards

Each HomeKit Room that contains at least one accessory gets its own Room Card on the dashboard. The card header shows the room name in a colour (assigned sequentially from the dashboard's colour palette) and a badge showing how many accessories it contains.

Within the card, accessories are grouped by their **device type** with sub-headers:

1. **Lights** — bulbs, strip lights, spot lights, ambient lamps
2. **Power/Switch** — smart plugs, outlets, switches
3. **Climate** — temperature sensors, humidity sensors, thermostats
4. **Security** — contact sensors, motion sensors, locks, leak sensors, cameras
5. **Media** — HomePods, Apple TVs, speakers
6. **Water** — water pump switches, water sensors
7. **Other** — anything not categorised

Tiles within each group are shown in a two-column grid.

**Reordering rooms:** Open the display menu (top-right pill on the dashboard) and tap **Reorder Rooms**. Drag rooms into your preferred order. The order is saved persistently.

---

## Service Tiles

Each tile shows:

- **Icon** — reflects device type and current state (e.g. a lightbulb fills in when on; a door icon shows open or closed)
- **Device name** — your custom name if set, otherwise the HomeKit name
- **Status text** — a one-line summary of the device's current state (see by type below)
- **Indicator badges** — small icons in the top-right corner of the tile indicate: hidden (eye-slash), multi-socket power strip (stacked squares), or unreachable (warning triangle)

---

## Tile Interactions

### Tap
The tap action depends on device type:

- **Lights, switches, power outlets** — toggles on/off. If it was on, it turns off (and vice versa). Brightness and colour are preserved across off→on cycles.
- **Power strips** (multi-socket accessories) — opens the [[#Power Strip Sheet]] instead of toggling, since each socket needs to be controlled individually
- **Locks and doors** — toggles the lock or door state (secured ↔ unsecured / open ↔ closed)
- **Climate, media, entertainment sensors** — opens the [[Device_Settings|Device Settings sheet]] (these have no direct toggle)
- **Devices with no controllable service** — opens the Device Settings sheet

If a device is **unreachable** (HomeKit reports no response), tapping it does nothing except open Device Settings.

### Long Press
- **Lights** — opens the [[Light_Controls|Light Controls sheet]] for brightness and colour adjustment
- **All other devices** — opens the [[Device_Settings|Device Settings sheet]]

A heavy haptic fires on long-press to confirm.

---

## Device Types in Detail

### Lights
Tiles: lightbulb, strip light, spotlight, or floor lamp icon depending on type. The icon fills when on. Background tints the tile with the light's current colour when on.

Status text: brightness percentage when on ("78%"), "Off" when off.

Tapping toggles on/off and restores the last-known brightness and colour. Long-pressing opens the full [[Light_Controls|Light Controls sheet]].

### Power / Switches
Tiles: plug or socket icon, green tint when on.

Status text: "On" or "Off".

### Climate (Temperature & Humidity)
Tiles: thermometer icon for temperature-only sensors, water drop icon for humidity-only sensors. Blue tint always applied.

Status text: live temperature (e.g. "18.5°C") or humidity (e.g. "65%"). For combined temperature/humidity sensors, the status shows whichever value the sensor reports as primary.

Climate tiles are read-only — they have no tap toggle. The tile always shows live sensor data.

### Security Sensors

**Contact sensors** — door/window open-closed sensor. Shows "Open" (alerting, orange tint) or "Closed" (secure, standard). Icon switches between open and closed state variants.

**Motion sensors** — shows "Motion" (alerting, orange) or "Clear" (secure). Indoor camera motion is suppressed in all modes except Sentry — in other modes, the tile shows "Clear" even if the indoor camera's motion sensor is triggered. Outdoor cameras always show live motion state.

**Locks** — shows "Unsecured" (alerting, orange) or "Secured" (secure, green). Tapping toggles the lock state.

**Leak sensors** — shows "Leak!" (alerting, orange) or "No Leak" (secure). When a leak is detected the tile pulses.

**Cameras** — categorised as Security by default. Shows motion state. If the camera has an attached spotlight, tapping toggles the spotlight. See [[SmartVan_Cameras|Cameras]] for full camera controls.

### Doors

Door accessories (garage doors, sliding doors with HomeKit door controllers) show their current state: "Open", "Closed", "Opening", "Closing", "Stopped". Tapping toggles the door open/closed.

### Water
Water pump accessories show "On"/"Off". Tapping toggles the pump.

### Entertainment (Media)
HomePods, Apple TVs, and compatible smart speakers appear as read-only tiles. No tap toggle; these are shown for status awareness only. Long-press opens Device Settings to customise the tile appearance.

---

## Power Strip Sheet

When a smart power strip or smart socket with multiple independently switchable outlets is tapped, the Power Strip Sheet opens — a list view showing each named socket with its own toggle. Each socket can be controlled independently. The sheet title shows the strip's device name.

---

## Unreachable Devices

When HomeKit reports that a device is not responding:

- The tile desaturates (goes grey/monochrome)
- The status text shows "No Response" in orange
- A warning triangle badge appears in the tile's top-right corner
- The icon opacity is reduced
- Tapping the tile has no effect (all control is disabled)

Unreachable typically means the accessory has lost power, is out of Bluetooth range, or the HomeKit hub can't reach it. Check the Apple Home app for details.

---

## Hidden Devices

Any device can be hidden from the dashboard (see [[Device_Settings|Device Settings]]). Hidden devices are not shown by default. To reveal them temporarily, open the display menu from the top-right pill and toggle **Show Hidden Items**. Hidden devices appear with a faded eye-slash badge but are otherwise fully functional.

---

## Related Articles
- [[Light_Controls|Light Controls]]
- [[Device_Settings|Device Settings]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
- [[SmartVan_Cameras|Cameras]]
