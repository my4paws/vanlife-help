---
title: "Drive Recorder"
aliases:
  - "drive recorder"
  - "record a drive"
  - "gps recording"
  - "track my drive"
  - "route recording"
  - "live drive"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, trip, check-in, timeline, drive, gpx, route, elevation, schengen, border, map, recorder, location, gps, background]
last_updated: "2026-02-21"
---

# ⏺️ The Drive Recorder

## Overview
The **Drive Recorder** is the silent engine behind your travel maps. When armed, it runs quietly in the background, logging your exact route, distance, and elevation changes. 

Because vanlife often means driving through remote areas with terrible cell service or dealing with phones overheating on the dashboard, the Drive Recorder is built with aggressive offline-first, battery-saving, and crash-recovery technology.

## How It Works: Tracking Preferences
You can customize how the Drive Recorder balances map accuracy against battery life in your app Settings. 

* **Balanced (Recommended):** The smartest option. When the app is open on your screen, it uses high-accuracy GPS. When you lock your phone or switch to Spotify, it drops into a highly efficient "Breadcrumb" mode, connecting the dots of your journey using cell towers and significant location changes to save battery.
* **High Accuracy:** For the data nerds. This forces continuous, turn-by-turn GPS tracking even when the app is in the background. It provides the most beautiful map lines but *will* consume more battery.
* **Breadcrumb Only:** The survival mode. Uses minimal power, plotting straight lines between major location changes. Perfect for multi-day crossings where charging isn't an option.

## 🏔️ The Elevation Engine (EMA)
GPS altitude data from a phone is notoriously messy. If you drive on a perfectly flat highway, raw GPS data might tell you that you climbed 300 meters because the signal kept bouncing.

To fix this, Vanlife Assistant uses an **Exponential Moving Average (EMA) algorithm**. 
1. **Accuracy Gates:** It completely ignores altitude readings if your phone reports poor vertical accuracy (worse than 30 meters).
2. **Curve Smoothing:** When it gets a good reading, it assigns an 85% weight to your *previous* altitude, and only 15% to the new reading. This effectively irons out all the jagged spikes and drops, leaving you with a beautifully smooth elevation chart.
3. **Ascent Hysteresis:** The app will only add to your "Total Ascent" if you climb more than 0.5 meters at a time, preventing tiny signal jitters from artificially inflating your mountain-climbing stats!

## 📦 The Black Box Recovery System
What happens if you are tracking a drive, and your phone battery dies? Or your phone crashes? 

In most apps, you lose the drive. Vanlife Assistant uses a **Black Box System**. 
Every 15 seconds (or every 5 new GPS points), the app silently writes your current route to a secure `current_expedition.json` file buried in your device's storage. 

If the app is forcefully closed, the very next time you open Vanlife Assistant, it will detect the Black Box file, recover every single point of your drive, and seamlessly resume recording right where you left off. 

## Troubleshooting

### "My route has a massive straight line cutting through a mountain."
The Drive Recorder has a strict "Quality Policy" to prevent bad data. If you drive through a long tunnel and lose GPS, and then reconnect on the other side, the app will connect those two points with a straight line. The engine is also programmed to reject "Teleports" (if the GPS accidentally bounces you 50km away for a split second) to keep your map clean.

## Related Articles
* [[Elevation Charts|Elevation Charts]]
* [[Checkins and Timeline|Checkins and Timeline]]
* [[Permissions Explained]]