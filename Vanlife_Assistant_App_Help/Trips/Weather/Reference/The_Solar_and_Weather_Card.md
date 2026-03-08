---
title: "The Solar & Weather Card"
aliases:
  - "solar and weather card"
  - "solar tracker"
  - "solar compass"
  - "weather card"
  - "solar card"
  - "golden hour"
  - "blue hour"
  - "uv index"
  - "wind indicator"
  - "solar yield"
  - "night sky rating"
  - "sun position"
  - "moon position"
  - "precipitation chance"
  - "sun azimuth"
  - "moon azimuth"
  - "sunrise sunset card"
  - "5 day forecast"
  - "week ahead weather"
  - "weather forecast trips"
category: "Weather"
type: "Reference"
tags: [help, vanlife-assistant, weather, solar, tracker, compass, golden-hour, blue-hour, uv, wind, forecast, reference]
last_updated: "2026-03-08"
---

# 🌤️ The Solar & Weather Card

## Overview

The Solar & Weather Card lives on the Trips Dashboard, below the Journey Card. It's a flippable dual-sided card — tap anywhere to flip between the **Solar Tracker** on the front and the **Weather Forecast** on the back. It uses Apple WeatherKit for live weather data and a local astronomical calculator for solar and lunar positions, all updated in real time from your current GPS location.

If you've ever tried to park a solar-equipped van for maximum charging, or wondered whether tonight is worth setting up outside to stargaze, this card is built for you.

---

## Front Side: The Solar Tracker

The front shows a live **solar compass dial** — a circular instrument that works exactly like a physical compass, rotating as you physically turn your phone or walk around, so the cardinal points always reflect your real-world orientation.

### The Compass Dial

The outer ring of the dial is a compass with cardinal and intercardinal markers. Four icons orbit this ring, showing the current and forecast positions of the sun and moon:

- **Sun icon** — positioned at the sun's current azimuth (compass bearing). When the sun is above the horizon, the icon sits outside the ring and glows yellow. When it's below the horizon (before sunrise or after sunset), it moves inside the ring and dims, showing where it will next rise.
- **Sunrise icon** (orange) — marks the azimuth where the sun will rise (or rose) today.
- **Sunset icon** (dark red) — marks the azimuth where the sun will set (or set) today.
- **Moon icon** — positioned at the moon's current azimuth, using the correct phase symbol for tonight (new moon, crescent, half, gibbous, or full). Sits outside the ring when the moon is above the horizon, inside when it's below.

The whole dial rotates against your device heading — so if you physically face north, north sits at the top. This makes it genuinely useful for physically orienting your van to maximise solar exposure.

**Haptic feedback:** when you point your phone directly at the sun, the card gives a brief haptic tap to confirm alignment. Useful when you're outside judging the best parking angle.

### Centre Panel

The central circular panel shows the most time-sensitive data at a glance:

- **Sunrise time** — today's sunrise in your local timezone
- **Current temperature** — live outside temperature (°C or °F, matching your unit setting)
- **Sunset time** — today's sunset
- **Moonrise / Moonset times** — with the correct moon phase icon

### Corner Badges

Four smaller badges sit in the corners of the dial, each updating in real time:

| Corner | Badge | What it shows |
|--------|-------|---------------|
| Top-left | **WIND** | Live wind speed with a compass arrow pointing in the direction the wind is blowing towards, relative to your current heading. Rotates as you turn. |
| Top-right | **RAIN CHANCE** | Today's precipitation probability as a percentage, with the current weather condition icon. |
| Bottom-right | **MAX UV** | The forecast maximum UV index for today, colour-coded: green (0–2, low), yellow (3–5, moderate), orange (6–7, high), red (8–10, very high), purple (11+, extreme). |
| Bottom-left | **YIELD** *(day)* or **NIGHT SKY** *(night)* | During the day: a solar yield rating based on current cloud cover — from ⚡️⚡️⚡️ (clear) down to ☁️ (overcast). After sunset: a stargazing rating on the same scale — ✨✨✨ for clear, ☁️☁️ for heavy cloud. |

### Contextual Summary Line

Below the compass, a short contextual sentence gives practical vanlife advice based on conditions. Examples for daytime clear skies: *"Clear — park facing South for maximum charge."* For overcast: *"Overcast — solar yield will be low regardless of parking angle."* For clear nights: *"Clear — grab a blanket, the night sky is wide open."*

### Golden Hour & Blue Hour Countdown

A second line shows the countdown to the next photography or stargazing window:

- **Before sunrise:** "Blue Hour Starts: 06:12"
- **During blue hour:** "Blue Hour Ends: 06:42"
- **During golden hour:** "Golden Hour Ends: 07:42"
- **During the day:** "Golden Hour Starts: 18:31"
- **During evening golden hour:** "Golden Hour Ends: 19:31"
- **After sunset:** "Next Blue Hour: 05:58"

Golden hour is defined as one hour either side of sunrise and sunset. Blue hour is the 30 minutes before sunrise and after sunset.

### Background Gradient

The card's background gradient shifts with the actual sun elevation: a bright blue-cyan tint during full daylight, warm orange-pink during golden hour, deep indigo-purple during blue hour, and near-black during night. This gives an immediate visual sense of where in the day you are.

---

## Back Side: The Weather Forecast

Tap anywhere on the Solar Tracker to flip the card over to the **Weather Forecast**.

### Today Summary

The top section is a detailed breakdown of today's conditions:

- The human-readable weather condition description (e.g. "Partly Cloudy", "Heavy Rain")
- The condition's weather icon
- Today's high and low temperatures
- Maximum wind gusts, if significant
- A contextual paragraph — generated automatically — that calls out anything relevant to van life: wind gusts above 25 mph prompt a reminder to stow the awning and close roof vents; lows near freezing suggest draining exposed water lines or enabling frost protection; highs above 28°C suggest parking in shade; clear sunny conditions suggest solar charging.

### Week Ahead

Below the today summary, the next five days are listed in a compact table showing the abbreviated day name, condition icon, and the low and high temperatures for each day.

---

## Data Sources and Refresh

The card uses **Apple WeatherKit** (built into iOS) for all forecast and current weather data. This is the same source that powers the system Weather app. WeatherKit data requires an internet connection to refresh — but the last fetched data is cached for display while offline.

Solar and lunar position calculations run entirely on-device using local astronomy formulas — no internet required. The sun and moon positions refresh every 60 seconds automatically.

---

## Permissions Required

The Solar & Weather Card requires **Location Services** to be enabled in order to calculate solar positions and fetch weather data for your current position. If location access is denied, the card shows "Location required to calculate astrometrics" and will not display data. Permissions can be updated in iOS Settings → Privacy & Security → Location Services → Vanlife Assistant. See [[Permissions Explained|Permissions Explained]] for full details.

---

## Related Articles

- [[How_Weather_Alerts_Work_with_SmartVan|How Weather Alerts Work with SmartVan]]
- [[Viewing_Weather_Forecasts_for_Your_Route_and_Spots|Viewing Weather Forecasts for Your Route & Spots]]
- [[Trip_Planner_and_Route_Builder|Trip Planner & Route Builder]]
- [[Permissions Explained|Permissions Explained]]
