---
title: "Device Settings"
aliases:
  - "device settings"
  - "edit device"
  - "rename device"
  - "custom name"
  - "device name"
  - "device type"
  - "device icon"
  - "custom icon"
  - "hide device"
  - "hide accessory"
  - "critical security"
  - "critical device"
  - "favorite device"
  - "favourite device"
  - "dashboard favourite"
  - "show in favorites"
  - "device appears wrong"
  - "wrong device type"
  - "change device type"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, device-settings, customise, reference]
last_updated: "2026-02-23"
---

# ⚙️ Device Settings

## Overview

Every HomeKit accessory in Smart Van can be individually customised — rename it, change its device type classification, assign a custom icon, hide it from the dashboard, flag it as a critical security device, or mark it as a favourite. These settings are stored locally and persist without affecting your Apple HomeKit configuration.

---

## Opening Device Settings

**Long-press** any device tile in the rooms grid. The Device Settings sheet rises from the bottom of the screen.

Alternatively:
- From the [[Light_Controls|Light Controls sheet]], tap the gear icon in the top-right toolbar
- If a device is unreachable, tapping its tile opens Device Settings instead of performing a control action

---

## Identity

### Custom Name
Replace the HomeKit accessory name with something more descriptive for your van context. The custom name appears everywhere in the app — on the tile, in the Light Controls sheet title, in Van Brain automation descriptions, and in security alert messages.

Leave blank to use the HomeKit name.

### Device Type
Smart Van auto-detects each accessory's type from its HomeKit services. Occasionally this gets it wrong — a device may be classified as "Other" when it should be "Light", or a climate sensor might show as "Security". Use this picker to override the auto-detected type.

Available types: Light (Bulb), Light (Strip), Light (Spot), Light (Ambient), Power/Switch, Water, Climate, Security, Window, Door, Media, Other.

Changing the type immediately changes the tile's icon, colour behaviour, status text logic, and which group it appears in within its room card.

---

## Dashboard Favourites

Toggle **Show in Favourites** to mark this device as a favourite. Favourited devices appear on the reverse side of the Journey Card (the Trips tab summary card) for quick access without needing to open the full Smart Van dashboard.

The caption below the toggle explains where favourites appear.

---

## Visibility

Toggle **Hide from List** to remove this device from the dashboard rooms grid. Hidden devices:

- Don't appear in any room card
- Don't show up in tile counts
- Can be revealed temporarily using "Show Hidden Items" from the dashboard display menu

Use this to declutter the dashboard — useful for accessory hubs, bridge devices, or anything you want to monitor through Van Brain automations but not control manually.

---

## Security

Toggle **Critical Security Device** to mark this accessory as high-priority for Sentry Mode.

When a Critical Security Device is triggered (its state changes to an alert condition — door opens, motion detected, leak found) while the van is in Sentry Mode, the Van Brain and notification system treat the event with elevated priority. Critical alerts use iOS's **Time Sensitive** interruption level, which bypasses Do Not Disturb and delivers the notification immediately.

Use this for the devices that matter most: the sliding door, the main entry point, an exterior motion sensor covering the cab.

---

## Icon

A scrollable grid of icons (SF Symbols) lets you assign a custom icon to this device. The selected icon replaces the default type icon on the tile. A selected icon is highlighted with the app's accent colour.

The icon catalogue includes: lightbulbs, light strips, spotlights, plugs and sockets, water drops, thermometers, fan blades, locks and shields, TVs, fuel pump, coolant, key, windows and curtains, doors, beds, refrigerators, dehumidifiers, and more.

The icon you set is used in its non-filled variant normally, and filled variant when the device is active/on (e.g. "lightbulb" when off, "lightbulb.fill" when on).

---

## Saving

Tap **Save Changes** at the bottom of the form. The button is styled with the app's accent colour for visibility. Changes apply immediately — the tile on the dashboard updates without requiring a HomeKit poll.

Tap **Cancel** in the toolbar to close the sheet without saving.

---

## Related Articles
- [[Rooms_and_Devices|Rooms and Devices]]
- [[Light_Controls|Light Controls]]
- [[Van_Brain|The Van Brain]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
