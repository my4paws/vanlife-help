---
title: "Border Crossings and Country Detection"
aliases:
  - "border crossing detection"
  - "country detection"
  - "automatic border detection"
  - "how borders are detected"
  - "gps border tracking"
  - "country transition"
  - "border events"
  - "how country changes work"
category: "Concepts"
type: "Deep Dive"
tags: [help, vanlife-assistant, advanced, borders, gps, location, schengen, reference]
last_updated: "2026-03-08"
---

# 🗺️ Border Crossings and Country Detection

Vanlife Assistant can detect when you cross from one country to another — automatically, without you tapping anything. This article explains how that works, what gets recorded, and how it feeds the Schengen calculator.

This is a deep-dive article. Most users never need to think about this layer of the app — it works quietly in the background. But if you want to understand exactly how your country history is built, this is the full picture.

---

## How Country Detection Works

The app uses iOS's **significant location changes** API to monitor position without continuously running GPS. This API wakes the app whenever you've moved roughly 500 metres or more — efficient enough to run in the background without meaningful battery impact.

When the app wakes, it checks which country code the new location falls in (using the device's reverse geocoder). It maintains an internal state machine with two states:

- **Inside** a country (with the country code and the time you entered)
- **Outside** (if no country code can be determined, or in international waters)

When the detected country code changes — say, from `DE` (Germany) to `AT` (Austria) — the app records a **country transition**: a timestamped record of the border crossing including the `from` country, the `to` country, the timestamp, and the GPS coordinate where it was detected.

### The Stabilisation Window

A single GPS point near a border can be unreliable — signal bounce, map inaccuracies, or a motorway that runs close to a frontier can produce false detections. The app handles this with a stabilisation approach: it doesn't record a transition until the new country code has been confirmed consistently, preventing spurious crossings from being logged when you're driving parallel to a border.

---

## Where Transitions Are Stored

Country transitions are stored in a local JSON file (`country_transitions.json`) in the app's Application Support directory. This is **not iCloud-synced** — it's a device-local log for privacy reasons. Your precise GPS coordinates at the moment of each border crossing are sensitive data and are better kept on device.

The log is automatically trimmed to keep only the last 750 days of transitions. Older records are removed as new ones are added. This keeps the file size manageable while retaining more than two years of history — well beyond the 180-day Schengen window.

---

## How This Feeds the Schengen Calculator

The Schengen calculator draws from three sources to build your country timeline:

1. **Check-ins** — with their country codes
2. **Ledger transactions** — if tagged with a country code
3. **GPS transitions** — from the local transition store

All three are merged into a single timeline, sorted by date. The calculator then walks day by day through the 180-day window, classifying each day as inside or outside Schengen based on the most recent marker.

This three-source approach means the Schengen counter is resilient: even if you haven't created a check-in in a week, the GPS transitions fill in the gaps. And even if GPS was off or unavailable, your check-ins and transactions provide coverage.

### The "Any Time During the Day" Rule

A day counts as inside Schengen if you were in a Schengen Zone country at **any point during that calendar day**. This follows the official interpretation of the Schengen rule. If you crossed from Morocco into Spain at 11:50pm, that calendar day counts as one Schengen day.

The consequence: the app is deliberately conservative. If there's evidence you were in Schengen at any time on a given day, that day counts. This is the correct approach for legal compliance.

---

## Manual Fallback

Automatic detection requires the app to be running (or at least backgrounded with location permission) when you cross the border. If you've been offline for an extended period, or if location wasn't available during the crossing, no automatic transition is recorded for that moment.

In those cases, the Schengen calculator falls back on your check-ins and transactions. If you create a check-in in Spain after driving from Portugal, the Spanish country code on that check-in tells the calculator you're now in Spain — even without an automatic border event.

This is why **regular check-ins are the most reliable foundation for Schengen tracking**. GPS transitions supplement them; they don't replace them.

---

## What You See

Country transitions surface in the app in two places:

**The Visited Countries card** — a flag grid showing every country you've checked in to. This is built from check-in country codes, not GPS transitions.

**The Schengen Status Card** — uses all three sources (check-ins, transactions, transitions) to calculate your position in the 180-day window.

Individual GPS border transitions don't appear in the Trips timeline UI — they're a background data source, not a user-facing travel record. Check-ins are the user-facing record of your stops; transitions are the system-level record of your movements.

---

## Related Articles

- [[Schengen Tracking Explained]] — *The 90/180 rule and how the counter works*
- [[Check-ins — The Engine of the Travel Journal]] — *The primary data source for country history*
- [[Background Behaviour]] — *How the app tracks location when not in use*
- [[Offline-First Design]] — *Why transitions are stored locally, not in iCloud*
