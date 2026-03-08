---
title: "The Compass and Records Card"
aliases:
  - "distance to home"
  - "furthest bounds"
  - "all time stats"
  - "compass view"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, dashboard, compass, home, records, statistics]
last_updated: "2026-02-22"
---

# 🧭 The Compass & Records Card

## Overview

Sitting at the very bottom of your [[The Trips Dashboard|Trips Dashboard]] is a deeply personal, interactive card. While the rest of the dashboard focuses on your _current_ expedition, this card aggregates your entire vanlife history and keeps you oriented to where you started.

Like the Journey Card, it features **two sides**. Tap anywhere on the card to flip between your Live Orientation compass and your All-Time Records!

---

## 🧭 The Front: Orientation & Bounds

The front of the card is all about your physical place in the world right now.

- **The Live Compass:** A beautifully designed digital compass that uses your iPhone's magnetometer to show your exact current heading in real-time. As you turn, it rotates fluidly beneath your fingertips.
- **Distance to Home:** Vanlife is about exploring, but it's always nice to know how far you've gone. Once you set your "Home Base" location in the app Settings, the engine uses the Haversine great-circle formula to calculate your exact straight-line distance from your driveway, updating live as you drive. A small **house icon** on the compass face always points you in the direction of home.
- **Furthest Bounds:** Four compass pills—**N, S, E, W**—show the absolute furthest geographic limits you have ever reached in your van. Each pill displays the coordinates and location name of that extreme point. Tap any pill to jump directly to that check-in's detail page.

---

## 🏆 The Back: All-Time Records

Flip the card over to see your ultimate vanlife bragging rights.

Rather than dry totals, this side shows you the **actual specific places** that hold your all-time personal records—each one a tappable link that takes you straight into that check-in's full journal entry. Your memories, not just your numbers.

The records grid can show up to eight categories:

|Record|What it tracks|
|---|---|
|🌡️ **Hottest**|The check-in with the highest recorded temperature, pulled from the weather snapshot attached at the time|
|❄️ **Coldest**|The check-in with the lowest recorded temperature|
|⛰️ **Highest**|The check-in logged at the greatest altitude above sea level|
|🌊 **Lowest**|The check-in logged closest to (or below) sea level|
|🏠 **Furthest from Home**|The check-in with the greatest straight-line distance from your Home Base|
|⭐ **Top Rated**|Your single highest-rated check-in—the place you gave 5 stars|
|💰 **Most Expensive**|The check-in where you recorded the highest cost in the Cost Metadata field|
|⚡ **Best Equipped**|The check-in where you logged the most available services (electricity, water, showers, waste, etc.)|

> **A card only appears when the data exists to support it.** If you haven't rated any check-ins yet, the Top Rated tile won't appear. If no check-ins have weather data attached, the temperature records stay hidden. The more richly you log your stops—adding ratings, cost metadata, and allowing the weather engine to attach conditions—the fuller and more satisfying this grid becomes over time.

---

## Common Questions

**Does the records grid show all-time data, or just the current trip?** Both! On the main **Trips Dashboard**, the card pulls from every check-in you have ever saved across all expeditions. Inside an individual **Trip Detail View**, it narrows down to show the records from just that specific journey—so you can see which stop on your Morocco trip was the coldest, for example.

**My Furthest Bounds pills are blank even though I have check-ins.** The directional records are calculated from your check-in coordinates. If your check-ins are missing GPS data (e.g., you logged them manually without a location), they won't contribute to the bounds. Try editing those check-ins and adding a location.

---

## Troubleshooting

**"My Distance to Home says 0 or is blank."** You need to tell the app where home is! Go to the main app **Settings** > **Trips & Map** and set your Home Base coordinates or address. Without a Home Base set, both the distance display and the Furthest from Home record tile will remain empty.

**"The Compass isn't updating when I turn my phone."** Ensure your iPhone's compass calibration is enabled. Go to **iPhone Settings → Privacy & Security → Location Services → System Services**, and make sure **Compass Calibration** is toggled ON. If the problem persists, open the built-in Compass app and follow the calibration figure-of-eight gesture it prompts.

---

## Related Articles

- [[The Trips Dashboard]]
- [[Check-in Services and Journaling]] _(Adding ratings, cost, and services makes your Records grid much richer!)_
- [[The Magic of Check-ins - Automated Journaling]] _(Weather data is automatically attached when you use the photo-first wizard)_
- [[Border Crossing Detection|Border Crossing Detection]]