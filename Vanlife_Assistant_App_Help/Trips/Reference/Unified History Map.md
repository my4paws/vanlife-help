---
title: "Unified History Map"
aliases:
  - "all trips map"
  - "master map"
  - "route map"
  - "where have i been"
  - "history map"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, map, history, routes, check-ins, pins, tracking]
last_updated: "2026-02-22"
---

# 🗺️ The Unified History Map

## Overview
While the [[The Trips Dashboard]] focuses on your current expedition, the **Unified History Map** (often called the "All Trips Map") is the master canvas of your entire vanlife story. 

It takes every single [[Drive Recorder]] mile you have ever tracked, and every [[Checkins and Timeline|Check-in]] you have ever saved, and plots them simultaneously on one beautiful, interactive globe. It is the ultimate visual representation of your travels.

## 🎛️ Exploring the Map
Because plotting years of travel data can get visually overwhelming, the map provides several tools to help you filter the noise and find exactly what you are looking for.

### 1. The Visibility Toggles
At the bottom of the map, you will find quick-toggle pills:
* **Pins (Check-ins):** Tap to hide or show your saved locations.
* **Routes (Drives):** Tap to hide or show the magenta lines of your driving history.
* *Pro-Tip: If you are trying to find a specific campsite in a dense area, toggle "Routes" off to declutter the screen!*

### 2. Map Styles
Tap the floating **Map** button (the globe icon) to switch the base layer of your map.
* **Standard:** Best for clear navigation and reading city names.
* **Satellite:** Perfect for zooming in to see the exact terrain or tree cover of a wild camping spot you previously saved.
* **Hybrid:** Combines satellite imagery with road names and borders.

### 3. Search and Focus Mode
The map integrates directly with the app's global search and filtering engines. 
If you search for something specific (e.g., "Show me spots in France" or "Show me places with Grey Waste"), the map instantly enters **Focus Mode**:
* It automatically hides your driving routes so you can focus on the results.
* It dynamically crops and zooms the camera to perfectly frame the search results on your screen.

## 🧠 Under the Hood: The Map Engine
Plotting tens of thousands of GPS coordinates on a phone would normally crash an app or drain your battery in minutes. We built a custom **Route Processing Engine** to ensure your map remains silky smooth, no matter how many years you travel.

* **Background Decoding:** When you open the map, it loads a lightweight placeholder while it decodes your massive track files silently in the background. You'll see a quick "Loading Expedition Data..." overlay, and then your routes will elegantly appear.
* **Smart Simplification:** The engine uses the mathematical *Douglas-Peucker algorithm* to strip out unnecessary, redundant GPS points on straight highways, drastically reducing memory usage without changing the shape of your route.
* **Display Smoothing:** GPS data can look jagged. The engine applies a visual "densification and smoothing" layer, adding tiny, invisible curved points between your raw GPS drops so your route lines look beautifully fluid.
* **The 15-Minute / 2km Rule:** If you lose GPS signal for more than 15 minutes, or your phone's location jumps by more than 2 kilometers (like taking a ferry or driving through a massive tunnel), the engine intelligently *splits* the route into two segments. This prevents the map from drawing ugly, false straight lines right through the middle of an ocean or a mountain range!

## Troubleshooting

### "My map is completely empty!"
If you just opened the map and see nothing, give it a few seconds! If you have thousands of miles tracked, the app's safety protocols load the heavy data in the background so your phone doesn't freeze. 

### "I can't see all my pins when I zoom out."
This is intentional! To prevent your screen from becoming a solid block of icons, the map uses **Clustering**. When you zoom out, nearby Check-ins merge into a single pin. Simply zoom in on the area, and they will separate back into individual spots.

## Related Articles
* [[The Trips Dashboard]]
* [[Drive Recorder]]
* [[The Magic of Check-ins: Automated Journaling]]