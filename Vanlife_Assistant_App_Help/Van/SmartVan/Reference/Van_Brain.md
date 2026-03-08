---
title: "The Van Brain"
aliases:
  - "van brain"
  - "automations"
  - "automation"
  - "van brain rules"
  - "rules"
  - "rule"
  - "create automation"
  - "new automation"
  - "edit automation"
  - "automation trigger"
  - "automation condition"
  - "automation action"
  - "when trigger"
  - "if condition"
  - "then action"
  - "device trigger"
  - "time trigger"
  - "weather trigger"
  - "spot mode trigger"
  - "van mode trigger"
  - "send notification"
  - "control device"
  - "execute scene automation"
  - "automation not working"
  - "disable automation"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, van-brain, automations, rules, reference]
last_updated: "2026-02-23"
---

# 🧠 The Van Brain

## Overview

The Van Brain is Smart Van's local automation engine. It lets you define rules that run automatically in response to events — without any cloud service, without an internet connection, and without you touching the app. Rules follow a simple **WHEN / AND / THEN** structure: when a trigger fires, and all conditions are met, execute a set of actions.

Rules are evaluated locally on the device, using real-time HomeKit state as the source of truth.

---

## Opening the Van Brain

From the Smart Van dashboard, tap the **status indicator pill** (top-right, e.g. "Live ⋯") and select **Van Brain Rules**. The automation list opens as a sheet.

Each rule in the list shows its name, a count of triggers/conditions/actions, and an enable/disable toggle. Tap any rule to edit it. Swipe left to delete it. Tap **+** to create a new rule.

---

## How Rules Evaluate

**Triggers use OR logic** — if you add multiple triggers to a rule, the rule fires when *any one* of them occurs. Think of triggers as the list of events that can "wake up" the rule.

**Conditions use AND logic** — all conditions must be true at the moment the trigger fires for the actions to execute. If any condition fails, the rule is silently skipped.

**Actions all execute** — when a rule fires and all conditions pass, every action in the list runs.

A rule with no conditions always runs when triggered. A rule with no triggers never runs (it can't be saved that way).

---

## Creating a Rule

Tap **+** on the Van Brain list, or tap **Create New Rule** from inside a Mode Configuration sheet (where the rule is pre-populated with the mode-change trigger for that mode). The automation editor opens.

**Name** — give the rule a meaningful name. Required to save.

**Enable toggle** — rules can be toggled on/off without deleting them.

### Add Triggers (WHEN)

Tap **Add Trigger**. A type picker appears with five categories:

---

#### Trigger: Device Event
*"When a specific device does something"*

Select a device from the categorised picker (grouped by type: Lights, Power, Climate, Security, etc.). Once selected, the event picker adapts to what the device can do:

- **Contact/door sensor** — "Opens" or "Closes"
- **Motion sensor** — "Detects Motion" or "Stops Detecting"
- **Leak sensor** — "Detects Leak" or "Stops Detecting"
- **Temperature sensor** — "Rises above" / "Falls below" + a temperature value in °C
- **Humidity sensor** — "Rises above" / "Falls below" + a humidity value in %
- **Light/switch/outlet** — "Turns On" or "Turns Off"
- **Lock** — "Secures" or "Unsecures"

For combined temperature + humidity sensors (e.g. a climate sensor that reports both), you choose which reading to use first.

*Example: "When the Roof Vent sensor Opens..."*

---

#### Trigger: Spot Mode
*"When the van's perimeter changes"*

Toggle between:
- **"Spot Mode is Active"** — fires when the perimeter anchor is set (i.e. you switch to any stationary mode)
- **"Spot Mode is Inactive"** — fires when the perimeter anchor is released (i.e. you switch to Driving Mode)

*Example: "When Spot Mode Activates..."*

---

#### Trigger: Van Mode
*"When a specific mode is selected"*

Choose from any of your configured modes (system or custom).

*Example: "When Mode changes to Sleep..."*

---

#### Trigger: Time Event
*"When a specific time occurs"*

Three options:
- **Sunrise** — fires at the actual sunrise time for your current location
- **Sunset** — fires at the actual sunset time
- **Specific Time** — opens a time picker (hours and minutes)

*Example: "When the time is Sunset..."*

---

#### Trigger: Weather
*"When a weather condition crosses a threshold"*

Choose a metric, a comparison, and a threshold value:

- **Metric** — Precipitation Chance (%), Wind Speed, or Temperature
- **Comparison** — Greater Than, Less Than, or Equal To
- **Threshold** — a numeric value

*Example: "When Precipitation Chance is Greater Than 70%..."*

---

### Add Conditions (AND)

Tap **Add Condition**. Three condition types are available:

---

#### Condition: Time Window
*"Only if the current time is within a window"*

Define a start and end event, each of which can be Sunrise, Sunset, or a specific time. The condition passes if the current time falls between them.

*Example: "...AND time is between Sunset and Sunrise (i.e. overnight)..."*

---

#### Condition: Van Mode
*"Only if the van is currently in a specific mode"*

Choose a mode from the list. The condition passes if the van's current mode matches.

*Example: "...AND Van Mode is Camped..."*

---

#### Condition: Device State
*"Only if a specific device is in a specific state"*

The same device and state pickers as the Device Event trigger, but checking *current* state rather than *change* events. Available states depend on device type:

- Contact/door sensors → Open / Closed
- Motion sensors → Detected / Not Detected
- Leak sensors → Detected / Not Detected
- Temperature sensors → Is above / Is below + value
- Humidity sensors → Is above / Is below + value
- Lights/switches → On / Off
- Locks → Secured / Unsecured

*Example: "...AND Sliding Door is Closed..."*

---

### Add Actions (THEN)

Tap **Add Action**. Three action types are available:

---

#### Action: Execute Scene
*"Run a HomeKit scene"*

Choose any HomeKit scene from the picker. When the action executes, all of the scene's configured states are applied simultaneously to your HomeKit Home.

*Example: "...THEN Execute Scene: Goodnight"*

---

#### Action: Control Device
*"Set a specific device to a specific state"*

Choose a device from the controllable device picker (lights, switches, outlets, locks, thermostats, fans, garage doors). Configure the target state:

- **Lights/switches/outlets/fans** → On or Off. For lights set to On, you can additionally:
  - Set Brightness (slider, 1–100%)
  - Set Colour (preset colour circles: white, yellow, orange, red, purple, blue, green)
- **Locks** → Secured or Unsecured
- **Thermostats/heater-coolers** → Target Temperature in °C

Each device control is a separate action entry. If you want to turn a light on at 40% brightness in warm amber, that's three actions: Turn On, Set Brightness 40%, Set Color (orange).

*Example: "...THEN Turn Off: Roof Fan"*

---

#### Action: Send Notification
*"Push an alert to your phone"*

Fill in:
- **Title** — the notification headline (e.g. "Van Alert")
- **Message** — the notification body text
- **Critical Alert** toggle — if enabled, the notification uses iOS's "Time Sensitive" interruption level, which breaks through Do Not Disturb

*Example: "...THEN Send Notification: 'Rain on the way' / 'Close the roof vent.'"*

---

## Example Rules

**Automatic arrival scene with time condition:**
- WHEN: Mode changes to Camped
- AND: Time is between Sunset and Sunrise
- THEN: Execute Scene "Evening Arrival"

This runs the arrival scene only when you park up at night. Park up in daylight and nothing changes automatically.

---

**Roof vent auto-close warning:**
- WHEN: Precipitation Chance is Greater Than 60%
- AND: Van Mode is Camped
- THEN: Send Notification — "Close the roof vent! Rain expected."

---

**Lights on when door opens:**
- WHEN: Sliding Door sensor Opens
- AND: Van Mode is Camped
- THEN: Control Device "Kitchen Light" → On, Brightness 80%

---

**Auto-sentry when you leave:**
- WHEN: Spot Mode Activates
- AND: Time is between Sunset and Sunrise
- THEN: Execute Scene "Night Sentry"

---

## Managing Rules

Rules are shown in the Van Brain list sorted by most recently created. Each rule shows its name, trigger/condition/action count, and a toggle.

**Enable/Disable:** Use the toggle on each row to pause a rule without deleting it.

**Edit:** Tap any rule to open the editor and change any part of it.

**Delete:** Swipe left on any rule in the list and tap Delete, or use the delete option within the editor.

---

## Van Brain Rules Linked to a Mode

When you open a Mode Configuration sheet (long-press any mode in the carousel), the **Van Brain Rules** section shows all rules whose triggers include "Mode changes to [this mode]". You can toggle, edit, or create rules directly from there without needing to open the full Van Brain list.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[Spot_Mode|Spot Mode]]
- [[Scenes|Scenes]]
- [[Rooms_and_Devices|Rooms and Devices]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
