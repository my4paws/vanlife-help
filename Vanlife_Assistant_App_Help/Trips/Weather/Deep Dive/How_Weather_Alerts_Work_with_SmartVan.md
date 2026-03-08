---
title: "How Weather Alerts Work with SmartVan"
aliases:
  - "weather alerts"
  - "weather automation"
  - "high winds smartvan"
  - "storm warning automation"
  - "temperature threshold smartvan"
  - "rain trigger automation"
  - "wind speed trigger"
  - "precipitation trigger"
  - "freeze warning automation"
  - "smartvan weather"
  - "weather trigger van brain"
  - "close vent rain"
  - "awning wind alert"
  - "frost protection automation"
  - "how weather alerts work"
category: "Weather"
type: "Deep Dive"
tags: [help, vanlife-assistant, weather, alerts, smartvan, van-brain, automations, deep-dive]
last_updated: "2026-03-08"
---

# ⛈️ How Weather Alerts Work with SmartVan

## Overview

The Van Brain — Smart Van's on-device automation engine — can monitor weather conditions and fire rules when thresholds are crossed. This lets you build automations like "close the roof vent relay when rain exceeds 70%" or "send a push notification when wind gusts cross 40 km/h" without any manual intervention. This article explains how the weather trigger works, what it can and cannot do, and walks through practical automation examples.

---

## How the Weather Trigger Works

Weather triggers are one of five trigger types available in the [[Van_Brain|Van Brain]] rule editor. When you add a Weather trigger to a rule, you define three things:

**Metric** — what weather measurement to monitor. Three options are available:

- **Precipitation Chance** — the forecast probability of precipitation as a percentage (0–100%)
- **Wind Speed** — the current wind speed in your preferred units (km/h or mph, matching your app settings)
- **Temperature** — the current outside temperature in your preferred units (°C or °F)

**Comparison** — the direction of the threshold check:

- **Greater Than** — the metric must exceed the threshold value to fire
- **Less Than** — the metric must be below the threshold value to fire
- **Equal To** — the metric must match the value exactly (most useful for temperature conditions)

**Threshold** — the numeric value at which the trigger fires. The editor shows this in your preferred units and converts internally to a stable baseline (Celsius for temperature, km/h for speed).

### Trigger Logic

Weather triggers are evaluated by the Van Brain whenever weather data is refreshed in the background. Like all Van Brain triggers, they use OR logic — a rule can have multiple triggers, and it fires when any of them occurs. This means you could build a single rule that fires on wind *or* rain without needing two separate rules.

### Conditions Still Apply

Weather triggers are still subject to any conditions you add to the rule. A rule with a Wind Speed > 40 km/h trigger and a condition of "Van Mode = Camped" will only fire when it's windy *and* you're in Camped mode. This prevents false positives — you probably don't want an awning alert firing while you're actively driving.

---

## What the Weather Trigger Cannot Do

A few important limitations to understand:

**It does not poll continuously.** Weather data is fetched periodically when the app is in use or in the background. This makes weather triggers suitable for broad conditions (a storm rolling in, a freezing night ahead) but not for instant second-by-second alerts.

**It does not control HomeKit devices directly based on sensor readings.** The Weather trigger uses forecast and current-conditions data from Apple WeatherKit — the outside air temperature via the internet, not from a HomeKit temperature sensor inside your van. If you want to trigger rules based on your van's *internal* temperature sensor, use a Device State trigger instead.

**It requires internet to refresh.** WeatherKit data needs a connection to update. If you're in a remote location without signal, the weather trigger will evaluate against the last cached weather data.

**It does not guarantee a specific fire time.** Because evaluation depends on background refresh timing, there's no guarantee a weather trigger fires at an exact moment. It fires when the app next evaluates the conditions after weather data changes.

---

## Practical Automation Examples

### Example 1: Awning wind warning

> *"When wind speed exceeds 45 km/h, send a push notification"*

Build a rule with:
- **Trigger:** Wind Speed > 45 km/h
- **Condition:** none (or optionally "Van Mode = Camped" to limit to when you're parked up)
- **Action:** Send Push Notification — *"⚠️ High gusts detected — stow the awning if it's out"*

This doesn't require any HomeKit device — the push notification is delivered to your phone via the app. Useful when you're away from the van on a walk.

---

### Example 2: Close a smart relay at high rain probability

> *"When precipitation chance exceeds 80%, close the roof vent switch"*

Build a rule with:
- **Trigger:** Precipitation Chance > 80%
- **Condition:** Van Mode = Camped (so it doesn't fire while driving)
- **Action:** Control Device — your vent switch relay → Off

This requires a HomeKit-compatible switch or relay connected to your roof vent. The Van Brain sends the close command via HomeKit when conditions are met.

---

### Example 3: Frost protection warning

> *"When temperature drops below 2°C overnight, notify and turn on the frost heater circuit"*

Build a rule with:
- **Trigger:** Temperature < 2°C (or 35.6°F)
- **Condition:** Time Window — between Sunset and Sunrise (overnight only)
- **Action 1:** Send Push Notification — *"🌡️ Near-freezing tonight — frost protection active"*
- **Action 2:** Control Device — your heating circuit switch → On

This combines a weather trigger, a time-window condition, and two actions in a single rule.

---

### Example 4: Hot day solar advisory

> *"When temperature exceeds 28°C, send a reminder to park in shade"*

Build a rule with:
- **Trigger:** Temperature > 28°C
- **Condition:** Time Window — between Sunrise and Sunset
- **Action:** Send Push Notification — *"☀️ Hot one today — park in shade if you can"*

---

## Building a Weather Rule: Step by Step

1. From the Smart Van dashboard, tap the status pill (top-right) and choose **Van Brain Rules**.
2. Tap **+** to create a new rule and give it a name.
3. Tap **Add Trigger** and select the **Weather** category.
4. Choose a metric (Precipitation Chance, Wind Speed, or Temperature), a comparison operator, and set your threshold value. The threshold is shown in your display units but stored in baseline units internally.
5. Tap **Add Condition** if you want to restrict when the rule fires (e.g. only in Camped mode, or only overnight).
6. Tap **Add Action** and choose either Send Push Notification or Control Device (which requires a HomeKit-compatible accessory to be set up in Smart Van).
7. Save the rule. The enable toggle is on by default — you can disable it any time without deleting it.

---

## Related Articles

- [[Van_Brain|The Van Brain]] — Full reference for the automation engine: all trigger types, condition types, and action types
- [[The_Solar_and_Weather_Card|The Solar & Weather Card]] — The live weather display on the Trips Dashboard
- [[SmartVan_Setup|Setting Up Smart Van]] — HomeKit requirements and first-time setup
- [[Permissions Explained|Permissions Explained]] — Why the app needs location and background refresh permissions
- [[Viewing_Weather_Forecasts_for_Your_Route_and_Spots|Viewing Weather Forecasts for Your Route & Spots]]
