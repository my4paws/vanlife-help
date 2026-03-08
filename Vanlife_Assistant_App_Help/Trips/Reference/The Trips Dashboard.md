---
title: "The Trips Dashboard"
aliases:
  - "trips home"
  - "trips dashboard"
  - "dashboard cards"
  - "journey card"
  - "visited countries"
  - "trip stats"
  - "all-time records"
  - "solar weather card trips"
  - "schengen card"
  - "expedition carousel"
  - "days on the road"
  - "parking button"
  - "vehicle status banner"
  - "trip statistics card"
  - "furthest compass"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, dashboard, cards, journey, statistics, home, solar, weather, schengen, reference]
last_updated: "2026-03-08"
---

# 🗺️ The Trips Dashboard

## Overview

The Trips Dashboard is the main screen of the Trips tab — a live feed of cards that give you a real-time picture of your journey. Everything is scoped to right now: your current expedition, today's conditions, your visa status, and the cumulative story of everywhere you've been. Cards update as you move, check in, and record drives.

---

## The Cards

### Vehicle Status Banner

This is a brief, animated banner that slides in at the top of the screen when you open the app, if any of your van's maintenance tasks are overdue or due soon. It summarises the van health status at a glance — green for healthy, orange for due soon, red for overdue. After a few seconds it automatically fades out and doesn't reappear until the next time you launch the app. It's not a permanent card; if you don't see it, your van schedule is up to date.

---

### The Journey Card

The Journey Card sits at the top of the dashboard. It's flippable — tap anywhere on it to rotate between the front and back.

**Front side — Drive & Prep**

The front shows your headline travel status:

- **Days on the Road** — a large animated counter showing the total time since your vanlife start date (set in Settings). Below the number, a smaller breakdown shows the same figure broken into years, months, and days.
- **Drive Recorder dot** — a small indicator at the top of the card pulses green when the [[Drive_Recorder|Drive Recorder]] is actively logging a route. Tap it to see the current tracking mode (High Accuracy, Breadcrumb, or Armed).
- **Parking button (top-left)** — while moving, a subtle parking button appears. Tap it to instantly log your current GPS coordinates as a parked location. Once parked, the button changes to show how long you've been stopped and offers a **Walking Directions** shortcut — tap it to get Apple Maps walking navigation back to your van from wherever you've wandered.
- **Pre-Flight button (top-right)** — if your van's pre-flight checklist hasn't been completed recently, this shows as a warning. Tap to open the [[Pre-Flight Checklist|Pre-Flight Checklist]]. Once completed it displays "Ready" in green.

**Back side — Smart Modes or Milestones**

The back side adapts based on whether Smart Van is enabled in Settings:

- **With Smart Van enabled:** the back becomes a condensed van control panel. Tap any mode to switch — Driving, Camped, Sleep, Stealth, or any custom modes you've created. The Safety Interlock applies here: if you try to activate Driving mode while a door or window sensor reports open, the switch is blocked and you're alerted. Favourite accessories are also accessible here for quick control.
- **With Smart Van disabled:** the back shows upcoming travel milestones — countdowns to day 100, day 365, one-year anniversaries, and any custom milestones you've added in the Money section.

---

### The Expedition Carousel

Below the Journey Card, a horizontally scrollable carousel shows all your expeditions as individual cards. The app automatically scrolls to your active or most recent expedition. Each card shows:

- The expedition name, date range, and a seasonal colour gradient based on the time of year it spans
- A row of flag emoji for every country visited during that expedition
- The total trip cost in your home currency
- A trip avatar — an icon or letter based on the expedition name

Tap any expedition card to open the [[Trip Detail View|Trip Detail View]] for that expedition. If you haven't created any trips yet, a prompt to create your first one appears here instead.

---

### The Unified History Map & Search

A full-width embedded map shows your current location and, when you search, highlights matching check-ins. The map has two modes:

- **Normal mode:** shows your current GPS position. Tap the expand button (top-right) to open the full-screen [[Unified History Map|Unified History Map]] with all your routes and check-ins.
- **Search mode:** as you type in the search field below the map, the map shifts to display matching check-ins as pins. The search matches against check-in location names, your personal notes, tags, and check-in type. Searching by service type works too — try "free water", "electric hookup", or "laundry" to find stops by what they offered.

Tap the **×** in the search field to clear and return to normal mode.

---

### The Solar & Weather Card

A flippable dual-sided card. See [[The_Solar_and_Weather_Card|The Solar & Weather Card]] for a full breakdown of everything it shows. In summary:

- **Front (Solar Tracker):** a live compass dial with the current position of the sun and moon plotted at their real azimuth bearings. Corner badges show live wind speed and direction, today's rain chance, max UV index, and a solar yield or night sky rating based on current cloud cover. A golden hour and blue hour countdown updates in real time. The card gives a haptic tap when you point your phone directly at the sun.
- **Back (Weather Forecast):** today's full weather summary with high/low temperatures, wind gusts, and a vanlife-aware advisory paragraph. Below that, a five-day forecast.

---

### The Schengen Status Card

This card only appears if you have crew members with a non-EU passport configured in Settings. It shows a live countdown of how many of the 90 Schengen visa-free days you have remaining, visualised as an animated liquid-fill donut chart. The 90-day rolling window is calculated automatically from your check-in and border crossing history. See [[Schengen Calculator|The Schengen Calculator]] for the full explanation of how the calculation works.

---

### The Visited Countries Card

A grid of flags for every country you have entered, ordered by first visit. The app records a country visit when you save a check-in there, log a financial transaction there, or when the [[Border Crossing Detection|Border Crossing Detection]] engine detects a crossing via GPS.

- Tap any flag to see the country name.
- Long-press any flag to filter the full-screen map to show only routes and check-ins from within that country.

The card only appears once you have at least one country recorded.

---

### The All-Time Records Card

The final card on the dashboard is a flippable statistics card that builds over time as you accumulate check-ins. It requires at least one check-in with location data before it appears.

**Front side — Furthest Compass:** a visual compass showing your furthest points in each cardinal direction (northernmost, southernmost, easternmost, westernmost check-ins) and your furthest distance from your home location. Tap each point to see which check-in holds that record.

**Back side — Records grid:** a collection of your best travel records: hottest check-in, coldest night, highest altitude, lowest point, most expensive stop, and best-equipped campsite (based on services logged). Each record links to the original check-in.

---

## Related Articles

- [[Creating a Trip (Expeditions)|Creating a Trip]] — setting up expeditions and managing their date ranges
- [[Checkins and Timeline|Check-ins & Timeline]] — logging stops and building your travel history
- [[Drive_Recorder|The Drive Recorder]] — recording routes and tracking drives
- [[The_Solar_and_Weather_Card|The Solar & Weather Card]] — full reference for the solar compass and weather forecast
- [[Schengen Calculator|The Schengen Calculator]] — how the 90-day calculation works
- [[Unified History Map|The Unified History Map]] — the full-screen map of all your routes and check-ins
- [[Border Crossing Detection|Border Crossing Detection]] — automatic country detection
- [[SmartVan_Index|Smart Van]] — Van Modes, the Safety Interlock, and accessories
