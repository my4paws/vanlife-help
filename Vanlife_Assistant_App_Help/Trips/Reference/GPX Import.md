---
title: "GPX Import"
aliases:
  - "import gpx"
  - "gpx file"
  - "import route"
  - "load gpx"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, trip, check-in, timeline, drive, gpx, route, elevation, schengen, border, map, import]
last_updated: "2026-02-21"
---

# 🗺️ GPX Import

## Overview

Vanlife Assistant flawlessly tracks your van's movements, but your adventure doesn't stop when you turn the engine off.

Using the **GPX Import Wizard**, you can bring your external adventures—like a 3-day hike recorded on Strava, a mountain bike trail from Garmin, or your historical trip data from Polarsteps—directly into your Vanlife Assistant timeline.

---

## How the Import Engine Works

GPX (GPS Exchange Format) is the universal file type for maps. When you upload a `.gpx` file, our engine doesn't just blindly copy the lines onto a map; it intelligently dissects the data to fit perfectly into your vanlife journal.

### 1. Smart Waypoint Parsing (`<wpt>`)

If your GPX file includes saved locations or pins, the app converts them into **[[Checkins and Timeline|Check-ins]]**. Even better, it reads the names and symbols of those waypoints to automatically categorise them for you!

- If the waypoint contains words like "camp" or "tent", it becomes a **Campsite**.
- Words like "wild" or "nature" categorise it as a **Wild Camp**.
- Words like "aire" or "parking" categorise it as a **Free Aire**.

### 2. The 4-Hour Auto-Split Rule

Many users export massive, multi-month GPX files from other apps. If we imported a 3-month journey as one single "Drive Log," your app would grind to a halt trying to display it.

Instead, the engine looks at the timestamps of your route. **If it detects a gap of more than 4 hours between two GPS points**, it assumes you stopped for the day and automatically splits the route into a brand new Drive Log. A week-long overland trip becomes a clean, accurate log of each individual day's drive.

### 3. Elevation Hysteresis

Just like the live [[Drive Recorder]], the GPX importer protects your stats from messy data. It applies a strict **5.0-metre hysteresis filter** to imported elevation data, completely ignoring tiny, jagged elevation changes under 5 metres. This ensures your imported "Total Ascent" is an accurate reflection of the mountains you actually climbed—not GPS noise.

---

## Common Questions

**How do I get a GPX file into the app?** The Import Wizard lives inside **Drive History**, which you'll find in your Van details:

1. Export the `.gpx` file from your fitness or travel app and save it to your iPhone's **Files** app.
2. In Vanlife Assistant, open the **Van** tab.
3. Tap into your van's details and find the **Drive History** card.
4. Inside Drive History, tap the **⊕ (plus circle)** button in the top-right toolbar.
5. Select **Import GPX File** from the menu.
6. Choose your file, review the preview in the Wizard, assign it to an Expedition, and hit save!

> **Tip:** While you're in Drive History, you'll also notice a **Sort** button for ordering your drives by date, distance, ascent, or descent—and a **Map** button that opens your full [[Unified History Map]]. Worth a browse!

---

## Troubleshooting

### "My imported file is missing its Trip Name!"

The importer tries to be helpful by reading the `<metadata>` tags hidden inside your GPX file to suggest a name and notes for the import. However, many apps (like Strava) strip this metadata out. If the name is blank, simply type in your own name (e.g., "Dolomites Hike") during the Import Wizard process.

---

## Related Articles

- [[Drive Recorder]]
- [[Creating a Trip]]
- [[Elevation Charts|Elevation Charts]] _(Imported GPX routes feed directly into your Expedition Profile!)_