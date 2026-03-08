---
title: "Setting Up Smart Van"
aliases:
  - "smart van setup"
  - "setup smart van"
  - "connect homekit"
  - "homekit setup"
  - "smartvan wizard"
  - "first time setup"
  - "permissions"
  - "location permission"
  - "motion permission"
  - "homekit permissions"
  - "enable smart van"
  - "disable smart van"
  - "restart setup"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, setup, homekit, permissions, reference]
last_updated: "2026-02-23"
---

# ⚡ Setting Up Smart Van

## Overview

Smart Van turns your van into a reactive smart home by connecting to Apple HomeKit — the platform that already controls smart bulbs, switches, sensors, locks, and cameras through the Apple Home app. Before Smart Van can show you your van's devices, monitor its perimeter, and run automations, a one-time setup wizard walks you through three things: enabling the feature, granting two iOS permissions, and optionally assigning your first mode scene.

---

## Requirements

Before running the setup wizard, you'll need:

- **Apple HomeKit configured** — your van's devices must already be paired to a Home in the Apple Home app. If they aren't yet, set them up there first, and ideally group them into Rooms that reflect the van's layout (Cab, Kitchen, Living Area, etc.)
- **iOS Location permission** — needed for Spot Mode, the GPS perimeter anchor that detects when you drive away from a pitch
- **iOS Motion & Fitness permission** — used to distinguish driving from walking when the van leaves a spot

Smart Van does not require an always-on internet connection once HomeKit is configured locally. All device control is local to your home network or Bluetooth range.

---

## Opening the Setup Wizard

Smart Van's setup wizard runs automatically the first time you open the Smart Van card on the Van tab. If the card shows a "Setup Smart Van" banner, tap it. The wizard opens as a full-screen four-step flow.

---

## Step 1 — Enable Smart Integrations

The first screen confirms whether you want to use Smart Van at all. A toggle is shown:

**Enable Smart Integrations — "I have HomeKit devices in my van"**

This defaults to **on**. Leave it on and tap **Get Started** to proceed.

If you don't have HomeKit devices and want to skip the feature entirely, toggle it **off** and tap **Disable Feature**. Smart Van will be disabled and the card will disappear from the Van tab. You can re-enable it later from Settings → App Settings → Smart Van.

---

## Step 2 — Connect Your Home

The wizard starts searching for HomeKit accessories. A counter shows how many devices it finds in your configured Home. If you see "Searching for accessories..." and nothing appears, check:

- The Apple Home app is working and your accessories are online
- Your phone is on the same Wi-Fi network as the HomeKit hub (HomePod, Apple TV, or iPad acting as a hub)
- HomeKit permissions are granted to the app in iOS Settings → Privacy → HomeKit

Once you see a count of discovered devices (e.g. "14 devices found"), tap **Next**.

### Multiple Homes

If you have more than one HomeKit Home configured in Apple Home, Smart Van will try to match the one whose name contains your van's name (as set in [[Van_Profile_and_Setup|Van Profile]]). If it can't match, it falls back to the first Home it finds. You can manually switch the active Home later from the Smart Van dashboard toolbar menu → **Homes**.

---

## Step 3 — Auto-Pilot Permissions

Smart Van uses two iOS permissions to power [[Spot_Mode|Spot Mode]] — the feature that automatically switches modes when you leave a pitch or return to it.

**Location Access** — tap **Grant** to request iOS location access. Select "Always Allow" for full Spot Mode functionality. "While Using" works but won't trigger mode switches when the app is in the background.

**Motion & Fitness** — tap **Grant** to request motion data. This lets the app determine whether movement detected at a spot is the van driving away (→ Driving Mode) or you taking a short walk (→ Sentry Mode).

You can skip both permissions and use Smart Van in manual-control-only mode, but Spot Mode won't function without them.

---

## Step 4 — Quick Setup (First Scene Assignment)

The final step lets you assign a HomeKit Scene to trigger when you switch to **Camped Mode** — the mode used when you arrive at a pitch.

A list of all your HomeKit scenes is shown. Tap the one you want (e.g. "Arrive Home", "Camp Setup", "Evening Lights"). A green checkmark confirms the selection.

This is optional — you can skip it and assign or change scene-to-mode mappings later from the [[Scenes|Scenes]] article or from the [[Van_Modes|Van Modes]] configuration.

Tap **Finish Setup** (or the equivalent completion button) to complete the wizard. The Smart Van dashboard opens immediately.

---

## After Setup

Once setup is complete, the Van tab home screen shows the **Smart Van summary card** — a compact strip showing the current mode, a one-line status summary (lights on, security alerts, temperature), and a chevron into the full dashboard. Tapping the mode icon on the left of that card quick-toggles between Driving and Camped modes.

---

## Restarting the Setup Wizard

If you need to reconfigure from scratch, open the Smart Van dashboard, tap the **status indicator** (top-right pill, e.g. "Live ⋯"), and select **Restart Setup Wizard** from the Display section of the menu. This resets the setup completion flag and re-opens the four-step wizard on next open.

---

## Disabling Smart Van

To turn off Smart Van entirely (which hides the card from the Van tab and stops all HomeKit polling and Spot Mode):

1. Go to Settings → App Settings
2. Tap **Smart Van** and toggle it off

The card disappears immediately and all automations stop running. No HomeKit data is deleted. Re-enabling it re-starts the connection and automations.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[Spot_Mode|Spot Mode]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
- [[Van_Profile_and_Setup|Van Profile and Setup]]
