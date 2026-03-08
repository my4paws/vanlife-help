---
title: "The Dynamic Background"
aliases:
  - "dynamic background"
  - "background scene"
  - "app background"
  - "weather background"
  - "live background"
  - "sky animation"
  - "moon phase background"
  - "birds background"
  - "shooting stars"
  - "background changes"
  - "background weather"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, background, weather, moon, animation, reference]
last_updated: "2026-03-08"
---

# 🌄 The Dynamic Background

The background you see on the Money, Van, and Travel tabs is not a static image. It's a live scene — chosen in real time based on your location's current weather, the time of day, the season, and the phase of the moon.

---

## What It Is

Every time you open the app, the background selects a scene that reflects conditions outside your window right now. A clear winter afternoon looks different from a foggy autumn morning. Sunset in summer looks different from blue hour in December. The moon — if it's above the horizon — appears in the correct phase for tonight.

The same background runs across the Money, Van, and Travel tabs simultaneously, so the whole app feels like it exists in the same moment and place you do.

---

## How the Scene Is Chosen

The app runs through a priority chain to pick the right scene:

**1. Severe weather first** — Snow, blizzard, hail, storm, and tornado conditions take precedence over everything. If the weather outside is severe, the background reflects it.

**2. Time of day** — Using your actual sunrise and sunset times from WeatherKit (not a fixed clock), the app identifies which phase of the day you're in:

| Phase | Timing |
|-------|--------|
| **Night** | More than one hour before sunrise or after sunset |
| **Blue Hour** | Within one hour of sunrise (before) or sunset (after) |
| **Sunrise** | First hour after actual sunrise |
| **Sunset** | Hour before actual sunset |
| **Early Morning** | One to three hours after sunrise |

Night, blue hour, sunrise, and sunset override all cloud and precipitation conditions — because even a rainy day has a sunrise, and the light quality at that moment matters more than the weather.

**3. Precipitation and visibility** — Rain, drizzle, fog, mist, haze, and frost are each matched to a dedicated scene. A cold early morning with temperature below 2°C and clear skies gets a frost scene. A foggy morning with an early hour and sub-10°C temperature has a small chance of showing a cloud inversion scene instead.

**4. Cloud cover** — Overcast conditions get a flat grey sky scene. Partial cloud cover gets a broken cloud scene.

**5. Season** — Clear skies and nothing unusual? The season takes over: Spring, Summer, Autumn, or Clear Conditions (Winter clear).

---

## The Offline Fallback

If location permission is not granted, or if WeatherKit can't be reached in time, the app uses your device's clock and the calendar month to pick a reasonable fallback scene — something appropriate for the time of day and time of year, without needing a network connection.

The last successfully fetched scene is also cached on device. On your next launch, it appears instantly while the app quietly refreshes in the background.

---

## The Moon

On night scenes, the moon appears in the sky — and it's the correct phase for tonight.

The phase is fetched from WeatherKit and mapped to one of eight visual assets:

| Phase | What you see |
|-------|-------------|
| New Moon | A faint dark circle — barely visible |
| Waxing Crescent | A slim bright sliver on the right |
| First Quarter | The right half lit |
| Waxing Gibbous | Most of the right side lit |
| Full Moon | The full disc, brightest and largest |
| Waning Gibbous | Most of the left side lit |
| Last Quarter | The left half lit |
| Waning Crescent | A slim bright sliver on the left |

The moon's position in the sky is calculated using real astronomical formulae — the same solar and lunar position engine that drives the solar compass on the Trips dashboard. The moon only appears when it is actually above the horizon at your current location. If the moon has set, or hasn't risen yet, it won't be shown.

The moon's colour shifts through the night: warm amber just after sunset, cooling to soft gold in the early evening, pure silver at midnight, then cooling to a blue-white in the small hours before dawn.

The moon's size on screen varies with phase — a full moon is the largest; a new moon and the crescent phases are smaller.

The phase data is cached for four hours, since the moon phase changes slowly enough that a four-hour window is more than adequate.

---

## The Sky Life

The background isn't static once it's loaded — it has small moments of movement.

**Daytime:** Loose flocks of birds cross the sky occasionally, every 16 to 40 seconds. Each flock is 1 to 6 birds, flying left-to-right or right-to-left at random. Each bird has an independently randomised wing beat rate and phase offset, so no two birds in a flock ever flap in sync. They follow slightly curved Bézier paths rather than straight lines, and their size varies to create a sense of depth.

**Night, Blue Hour, and Sunset:** Shooting stars appear in the upper portion of the sky, every 10 to 30 seconds. Each streaks at a shallow angle from upper-left toward lower-right, fading out mid-flight with a tapered gradient and a soft white glow.

Both effects pause automatically when the app goes to the background, and stop entirely if your device is in Low Power Mode or if you have Reduce Motion enabled in iOS Accessibility settings.

---

## Orientation Awareness

The background uses different photographic assets for portrait and landscape orientation. Rotating your device triggers a quiet refresh — the scene switches to a wider composition designed for the landscape format without any jarring transition.

---

## Privacy Note

The background uses your location to fetch weather and determine which side of sunrise or sunset you're on. It does not store or transmit this location data. The weather fetch happens locally from WeatherKit using your device's location, and the result is cached on device only.

---

## Related Articles

- [[The Solar & Weather Card]] — *The solar compass and five-day forecast on the Travel tab*
- [[How Weather Alerts Work with SmartVan]] — *Weather-triggered automations*
- [[Permissions Explained]] — *Location permission and what it's used for*
