---
title: "Route Conditions"
aliases:
  - "route conditions"
  - "route weather"
  - "conditions oracle"
  - "weather route"
  - "solar route"
  - "weather next stop"
  - "conditions report"
  - "route forecast"
  - "waypoint weather"
category: "Spots"
type: "Reference"
tags: [help, vanlife-assistant, spots, route-conditions, weather, solar, reference]
last_updated: "2026-03-08"
---

# 🌦️ Route Conditions

## Overview

Route Conditions is a weather and solar oracle for your planned route. It gives you a snapshot of the expected conditions at your current location (or departure point) and your next planned stop — so you can decide whether to set off, stay put, or adjust your route before committing.

Access it by tapping the **Conditions** button (purple, cloud + rain icon) in the Trip Planner route sheet. The button only appears once you have two or more waypoints with a calculated route.

---

## What It Shows

The Route Conditions sheet is built around two **weather cards**, one for each relevant location:

### Current / Departure Card
Shows conditions at the **waypoint you are currently at or departing from**. Labelled "Departure: [name]" for the first stop on a fresh route, or "Current: [name]" once you're underway and have marked earlier stops as visited.

### Next Stop Card
Shows conditions at **your next pending waypoint** — the first stop you haven't yet visited. Labelled "Next Stop: [name]".

If your route only has one pending stop remaining, only the departure card is shown.

---

## What Each Card Contains

Each weather card shows:

- **Location name** and the **estimated arrival time** for that stop (using current time + cumulative drive time from the route sheet)
- **Weather conditions** — current or forecast temperature, a conditions description (e.g. Partly Cloudy, Heavy Rain), wind speed, and precipitation probability
- **Sunrise and sunset times** — exact local times for the stop's coordinates
- **Elevation** — the altitude of the waypoint, which contextualises temperature (high-altitude stops are often significantly colder than the surrounding forecast suggests)

Weather data is fetched using the same engine as the Trips Dashboard weather card. Data is pulled from Apple's WeatherKit API; an internet connection is needed when the sheet first loads.

---

## How Arrival Time is Calculated

The arrival time shown on each card accounts for cumulative drive time across the route. If your route is:

- Stop 1 → 2h drive → Stop 2 → 3h drive → Stop 3

And it is currently 09:00, the Departure card for Stop 2 shows "11:00" and the Next Stop card for Stop 3 shows "14:00".

This ensures the weather shown is the **forecast for when you'll actually arrive**, not just current conditions — highly relevant for mountain passes or coastal locations where conditions change significantly through the day.

---

## Elevation Context

The elevation figure on each card uses the waypoint's stored elevation data (if available) or a live fetch. Elevation matters because forecast temperatures from weather services are typically given for sea level and adjusted for altitude — a spot at 1,800m may be 10–12°C colder than the general area forecast suggests.

---

## Loading State

The sheet opens with a "Consulting the Oracle..." loading indicator while it fetches weather and solar data for both waypoints simultaneously. This typically takes 1–3 seconds on a good connection.

If data cannot be loaded for a particular stop (e.g. network timeout), only the successfully loaded card is shown.

---

## Common Questions

**The Conditions button is greyed out / not showing.**
The button only appears in the route sheet once two or more waypoints are set and a route has been calculated. Add at least a second waypoint and wait for the route to calculate.

**The weather data looks wrong for my location.**
Weather and solar data is fetched for the exact GPS coordinates of your waypoints. If a waypoint was placed slightly away from your intended location (e.g. on a road rather than the campsite itself), the coordinates used may be a few hundred metres off. For most weather purposes this is immaterial, but in complex terrain (valley vs hilltop) it may matter.

**Is an internet connection required?**
Yes. Route Conditions fetches live forecast data from Apple WeatherKit when the sheet loads. If you're offline, the sheet will show a loading error. The Trip Planner itself and the Spots Vault work fully offline — only Route Conditions requires connectivity.

---

## Related Articles
- [[Trip_Planner_and_Route_Builder|The Trip Planner & Route Builder]]
- [[The_Spots_Vault|The Spots Vault]]
- [[How_Weather_Alerts_Work_with_SmartVan|How Weather Alerts work with SmartVan]] *(Same weather engine, different application)*
