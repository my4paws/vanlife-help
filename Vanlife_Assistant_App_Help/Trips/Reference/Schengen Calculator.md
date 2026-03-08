---
title: "Schengen Calculator"
aliases:
  - "schengen"
  - "90 180"
  - "days in schengen"
  - "visa days"
  - "how many days left"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, trip, check-in, timeline, drive, gpx, route, elevation, schengen, border, map, calculator]
last_updated: "2026-02-21"
---

# 🇪🇺 Schengen Calculator

## Overview

The European Schengen Zone operates on a strict, and notoriously confusing, "90/180-day rule." Non-EU citizens can only spend 90 days within the zone out of any rolling 180-day period. Overstaying can result in heavy fines, deportation, or a total ban from Europe.

The **Schengen Calculator** in Vanlife Assistant removes the anxiety of doing this complex calendar math yourself.

---

## Who Sees This Card?

The Schengen card is smart enough to know when it isn't needed. **If every member of your crew holds nationality in an EU, EEA, or Schengen-member country, the card hides itself completely** — because those travellers have the right to live and work in the zone indefinitely, so tracking 90-day limits would just be noise.

The card appears as soon as at least one crew member holds a non-Schengen nationality (a British passport, a US passport, an Australian passport, and so on). If you travel alone and haven't added yourself as a Traveller yet, the card shows by default on the safe assumption that it might be needed.

> **The card just disappeared / never appeared?** The app reads each crew member's **home country** from their Traveller profile in Settings. If everyone in your crew has a Schengen nationality set, the card will quietly hide. To bring it back, check your Traveller profiles under **Settings → Crew** and make sure home countries are set correctly. One non-Schengen passport holder in the crew is all it takes for the card to reappear.

---

## How It Works: The Data Engine

The Schengen calculator doesn't rely on you manually typing in your dates. It actively scans three different data sources in your app to build a chronological timeline of your presence:

1. **Background GPS Transitions:** Automatic border crossings logged by your phone's location services.
2. **Check-ins:** Any manual spots or campsites you saved to your journal.
3. **Financial Ledger Entries:** If you bought diesel in France, the app knows you were in France on that day!

_Crucial Legal Note:_ The engine calculates a day as "spent" if any of those three sources prove you were inside a Schengen country at **any time** between 00:00 and 23:59. A single minute on Schengen soil counts as a full calendar day used.

---

## Understanding the Dashboard Card

You can view your real-time visa status via the beautiful "Liquid Wave" donut chart on your Trips Dashboard. The chart changes its tone and messaging based on whether you are currently inside or outside the zone.

### 📍 If you are INSIDE Schengen:

The chart fills with fluid representing your remaining time.

- **Allowed (Blue/Green):** You have plenty of time remaining.
- **Warning (Orange):** You have 15 days or fewer left. Time to plan your exit route!
- **Overstay (Red):** You have exceeded your 90 days. The app will flash red and urge you to exit immediately.
- **Leave By Date:** Flip the card over to see the exact calendar date you must legally exit the zone by.

### 📍 If you are OUTSIDE Schengen:

When you leave the zone, the rules flip. Days are no longer being "spent"—but you might not be allowed back in yet. The engine shifts to calculating your **Eligibility**.

- **Eligible Now:** The app will show exactly how many days you have available to use if you were to cross the border back into Europe _today_.
- **NO ENTRY (Locked Out):** If you burned through all 90 days, the app will show a red lockout screen. It calculates exactly how many days you must wait until your oldest "spent" days begin to drop out of the 180-day window, giving you the exact calendar date you can legally return!

---

## Troubleshooting

### "The app says I have 0 days left, but I know I have more!"

The calculator is only as smart as the data it has. If you took a flight back to your home country for two weeks in the middle of your trip, but didn't spend any money or log any Check-ins back home, the app might assume your van (and you) never left Europe.

👉 _Fix it:_ Simply add a manual Check-in in your home country for the dates you were gone. The engine will instantly recalculate and refund those Schengen days back to you!

---

## Related Articles

- [[Border Crossing Detection|Border Crossing Detection]]
- [[The Trips Dashboard]]