---
title: "Border Crossing Detection"
aliases:
  - "border crossing"
  - "country change"
  - "entered france"
  - "left uk"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, trip, check-in, timeline, drive, gpx, route, elevation, schengen, border, map, crossing, detection]
last_updated: "2026-02-21"
---

# 🛃 Border Crossing Detection

## Overview
For full-time nomads, keeping track of exactly which day you entered or exited a country is a massive headache—especially when dealing with complex visa rules. **Border Crossing Detection** uses your device's location to automatically log these transitions in your database, creating a permanent, legally helpful record of your movements.

## How It Works
The app maintains an offline database of global country borders. As your location updates in the background (either via the [[Drive Recorder|Drive Recorder]] or a manual [[Checkins and Timeline|Check-in]]), the app cross-references your coordinates against these borders.

When the app detects that you have crossed from one country to another:
1. It instantly creates a **Border Crossing Event** in your timeline.
2. It logs the exact date, time, and coordinates of the crossing.
3. It triggers the **[[Schengen Calculator]]** to recalculate your remaining visa days if you entered or exited the Schengen Zone.
4. It safely caches this data offline until you reconnect to the internet.

## Common Questions

**Does this work on ferries?**
Yes! If you board a ferry in the UK and arrive in Spain, the app will recognize that your last known location was the UK, and your new location is Spain. It will log the border crossing at the time you first establish a GPS connection on Spanish soil.

**What if I am driving right along the border of two countries?**
GPS signals can "bounce" by a few meters. If you are driving on a mountain pass right on the border of France and Italy, the app uses a "smoothing" algorithm to prevent logging 50 different border crossings in 10 minutes. It waits until you are definitively inside the new country before logging the event.

## Troubleshooting

### "My border crossing was logged on the wrong day."
If you had your phone turned off or in Airplane mode for three days after crossing a border, the app will log the border crossing on the day you finally turned your location services back on. 
👉 *Fix it:* You can manually edit the date of any Border Crossing Event by tapping on it in your Timeline and selecting **Edit**.

## Related Articles
* [[Schengen Calculator]]
* [[Drive Recorder|Drive Recorder]]
* [[Checkins and Timeline|Checkins and Timeline]]
* [[Emergency Mode: What it is and how to use it]] *(Emergency numbers update automatically based on your detected country!)*