---
title: "Viewing Weather Forecasts for Your Route & Spots"
aliases:
  - "route forecast"
  - "weather along route"
  - "spots weather"
  - "camp forecast"
  - "upcoming weather"
  - "route conditions weather"
  - "weather at waypoint"
  - "check-in weather"
  - "weather on check-in"
  - "weather voice"
  - "ask about weather"
  - "viewing weather forecasts"
category: "Weather"
type: "Tutorial"
tags: [help, vanlife-assistant, weather, forecast, trips, spots, route, check-in, voice, tutorial]
last_updated: "2026-03-08"
---

# 🌤️ Viewing Weather Forecasts for Your Route & Spots

Weather in Vanlife Assistant isn't limited to the [[The_Solar_and_Weather_Card|Solar & Weather Card]] on the Trips Dashboard. Forecasts and historical weather data surface in three other places: the Route Conditions report in the Trip Planner, the weather automatically captured on each check-in, and via the voice assistant. This tutorial covers all three.

---

## Route Conditions: Weather Along Your Planned Journey

When you've built a route in the [[Trip_Planner_and_Route_Builder|Trip Planner]], the Route Sheet has a **Conditions** button in the toolbar. Tapping it opens the **Route Conditions Oracle** — a full-screen report that fetches forecast weather for your two most critical stops.

### What the Oracle Shows

The Oracle calculates your estimated arrival times at the current stop (or your departure point if not yet en route) and your next pending waypoint. It then fetches weather for those specific locations at those specific times using Apple WeatherKit. For each stop it shows:

- The condition icon and description (e.g. "Partly Cloudy")
- The current temperature at that location and time
- The high/low range for the day
- Wind speed
- Sunrise and sunset times for that date, including the sun's azimuth (compass bearing) at both events — useful for judging where to park for the best sun angle

If a stop is far enough in the future that hourly forecasts aren't available, the Oracle uses the best available daily forecast data and notes this.

### When to Use It

Open Route Conditions before committing to a waypoint order, especially if your route has an exposed high-altitude section where weather can change rapidly. It's also useful for timing arrivals — knowing sunset is at 18:30 at your next stop helps you decide whether to push on or camp where you are.

### A Note on Data Requirements

Route Conditions requires an internet connection to fetch forecasts. The Oracle caches the results for the current session — tapping Conditions again won't re-fetch unless you've changed your route.

---

## Weather on Check-ins

Every time you save a [[Checkins and Timeline|check-in]], the app silently fetches and stores a weather snapshot for that exact location and time. This becomes a permanent part of the check-in record.

### What Gets Captured

The check-in stores: temperature, weather condition description, wind speed and direction, and sunrise/sunset times for that day. For check-ins created while you have an internet connection, the data is fetched automatically. For check-ins saved while offline, weather cannot be fetched and that field remains empty.

### Viewing Check-in Weather

On any [[Check-in Detail View|check-in detail view]], scroll down to the weather section. The condition icon, temperature, wind, and sunrise/sunset are displayed alongside the check-in's location and time. Historical check-in weather is also visible in the Travel Feed in the [[Trip Detail View|Trip Detail View]] — each check-in card shows the condition and temperature at that moment.

### Using Weather to Search Check-ins

The search bar on the Trips Dashboard can filter check-ins by weather-related terms (e.g. typing "rain" finds check-ins where the condition description included rain). This means your check-in history becomes a useful record of what the weather was really like at specific spots on specific nights — worth checking before returning to a location.

---

## Asking the Voice Assistant

The voice assistant handles weather queries naturally. Tap the microphone icon (or use the assigned button) and ask:

- *"What's the weather like today?"*
- *"Is it going to rain tomorrow?"*
- *"What's the wind speed right now?"*
- *"When is sunset tonight?"*
- *"What's the UV index today?"*
- *"When is golden hour?"*
- *"Is it good for stargazing tonight?"*

The assistant fetches live WeatherKit data for your current location and responds with a full spoken briefing, including any practical vanlife advisories: awning warnings for high gusts, frost protection reminders for near-freezing overnights, and solar charging tips for clear days. See [[Voice_Travel|Voice Travel Commands]] for the full list of supported weather queries.

---

## Related Articles

- [[The_Solar_and_Weather_Card|The Solar & Weather Card]] — The live solar compass and forecast card on the Trips Dashboard
- [[How_Weather_Alerts_Work_with_SmartVan|How Weather Alerts Work with SmartVan]] — Triggering van automations based on weather thresholds
- [[Trip_Planner_and_Route_Builder|Trip Planner & Route Builder]] — Building routes and accessing the Route Conditions Oracle
- [[Checkins and Timeline|Check-ins & Timeline]] — How check-ins record your location, time, and conditions
- [[Permissions Explained|Permissions Explained]] — Location and WeatherKit permission requirements
