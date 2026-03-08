---
title: "Van Modes"
aliases:
  - "van modes"
  - "driving mode"
  - "camped mode"
  - "sentry mode"
  - "sleep mode"
  - "stealth mode"
  - "custom mode"
  - "mode"
  - "modes"
  - "change mode"
  - "switch mode"
  - "safety interlock"
  - "open sensors"
  - "mode configuration"
  - "create mode"
  - "van brain mode"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, modes, driving, camped, sentry, sleep, stealth, reference]
last_updated: "2026-02-23"
---

# 🎛️ Van Modes

## Overview

A Van Mode is the van's current operating state. Switching modes is the single most powerful action in Smart Van — it can trigger a HomeKit scene, activate the GPS perimeter anchor, switch between security profiles, and fire any Van Brain automations you've built for that mode. Every mode has a name, icon, colour, and an optional scene assignment. Five system modes are built in; you can create as many custom modes as you like.

The current mode is always shown on the Smart Van dashboard's **Status Card** at the top, and as a coloured icon button on the Van tab's **Smart Van summary card**.

---

## System Modes

The five system modes are created automatically and cannot be deleted. Their names can't be changed but their icon and colour can be customised.

### 🟠 Driving
The road-ready state. Activating Driving Mode deactivates the GPS perimeter anchor (Spot Mode), which stops geofencing alerts. Typically paired with scenes that secure the van: turning off cabin lights, locking doors, and disabling any appliances that shouldn't run while moving.

**Automatic trigger:** When the GPS perimeter detects the van has left a pitch with driving-speed motion detected, Driving Mode activates automatically and a departure notification is sent.

**Safety Interlock:** Driving Mode is the only mode with a safety check. Before activating it, the app scans all contact sensors and door accessories. If any are open or unlocked, it shows an alert listing them by name. You must either close them or tap **Ignore & Drive** to proceed. This prevents driving away with a roof vent, awning arm, or sliding door left open.

### 🟢 Camped
The default stationary state for when you've arrived at a pitch. Activating Camped Mode anchors the GPS perimeter at your current location, enabling Spot Mode monitoring. Typically paired with scenes that bring the van to life: warm lighting, water pump on, awning out.

**Automatic trigger:** When the GPS perimeter detects you've returned to a previously-anchored spot (and you were in Sentry Mode), Camped Mode activates automatically and a "Welcome Back" notification is sent.

### 🔴 Sentry
High-security away mode. Use this when you leave the van unattended at a pitch. Sentry Mode is the only mode where motion sensors on indoor cameras are treated as active alerts — in all other modes, indoor camera motion is suppressed to avoid false alarms when you're moving around inside.

**Automatic trigger:** When the GPS perimeter detects the van has been exited on foot (walking pace, not driving), Sentry Mode activates automatically.

### 🔵 Sleep
Night mode. Designed for when you're in the van but asleep. Typically paired with scenes that turn off all interior lights, lock doors, and set window coverings. Sleep Mode activates the GPS perimeter anchor like Camped Mode, so perimeter monitoring remains active while you sleep.

### ⚫ Stealth
Low-profile camping mode. For spots where you want to minimise your presence — no exterior lights, blackout interior, minimal electronic noise. Like Sleep and Camped, Stealth Mode activates the GPS perimeter anchor.

---

## Custom Modes

Tap the **+ New Mode** button at the end of the mode selector carousel to create a custom mode. Give it:

- **Name** — anything you like ("Dog Walk", "Beach Day", "Work Mode")
- **Icon** — choose from a curated set of SF Symbols
- **Colour** — choose from 10 preset colour swatches

Custom modes work identically to system modes: they activate the GPS anchor (since any non-Driving mode is treated as stationary), can have scenes assigned, and can be used as triggers and conditions in Van Brain automations.

Custom modes can be deleted. System modes cannot.

---

## Switching Modes

Tap any mode in the **mode selector carousel** on the Smart Van dashboard to switch to it immediately. The active mode's card fills with its colour; inactive modes show an outline with a hint of their colour.

A medium haptic confirms the switch. The status card at the top of the dashboard updates instantly to reflect the new mode name and icon.

**Long-pressing** any mode card opens the Mode Configuration sheet.

---

## Mode Configuration

Long-press any mode in the carousel (or tap the ⋯ menu from the mode card) to open its configuration sheet.

**Appearance section:**
- Icon — change the SF Symbol icon
- Colour — change the mode colour

For custom modes only, you can also rename the mode here and delete it.

**Van Brain Rules section:**
This shows all Van Brain automations that are triggered by this specific mode. Tap any rule to edit it, or tap **Create New Rule** to build an automation that fires when this mode is selected. See [[Van_Brain|The Van Brain]] for full details on building rules.

---

## Mode Info Sheet

Tap the ℹ️ button next to "CURRENT MODE" on the status card to open the Mode Info sheet. This shows every mode — system and custom — with its icon and description. Use it as a quick reference for what each mode is for.

---

## How Modes Interact with Spot Mode

Any mode that is **not** Driving Mode is treated as a stationary mode and activates the GPS perimeter anchor automatically when you switch to it. If you switch directly from Driving to Sleep (without going through Camped), the anchor is still set and perimeter monitoring begins. See [[Spot_Mode|Spot Mode]] for full details on the perimeter system.

---

## Related Articles
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
- [[Spot_Mode|Spot Mode]]
- [[Scenes|Scenes]]
- [[Van_Brain|The Van Brain]]
- [[SmartVan_Setup|Setting Up Smart Van]]
