---
title: "The Trip Structure Explained"
aliases:
  - "trip structure"
  - "how trips work"
  - "expedition structure"
  - "trip timeline concept"
  - "how travel history works"
  - "what is a trip"
  - "trip data model"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, trips, timeline, drives, check-ins, structure, reference]
last_updated: "2026-03-08"
---

# 🗺️ The Trip Structure Explained

The Trips system organises everything you do on the road into a coherent, searchable history. Understanding how it's structured makes the rest of the app much clearer.

---

## The Hierarchy

Every journey in Vanlife Assistant follows a consistent structure:

```
Trip (Expedition)
 ├── Drives
 ├── Check-ins
 └── (Statistics, maps, and memories are derived from the above)
```

**Trips** are the containers. **Drives** and **check-ins** are the content. Statistics, maps, weather data, elevation charts, and country histories are all derived from those two things.

---

## What Is a Trip?

A **Trip** (also called an Expedition) is a named period of travel with a start date and an optional end date. It's your top-level label for a journey — "France 2025", "Scotland Summer", "Pan-American Highway".

Trips are:
- Associated with a specific **van** from your fleet
- Given a **cover photo**, matched automatically from your camera roll by date and GPS coordinates
- Tagged with context labels (e.g. "Winter", "Remote Work", "Surf")
- Shown in the **Expedition Carousel** on the Trips dashboard, with a seasonal colour gradient and a flag summary of countries visited

A trip doesn't close automatically. It stays **active** until you mark it complete. You can have multiple trips in your history and one active at a time.

→ See [[Trip States: Future, Active, and Past Expeditions]]

---

## What Is a Drive?

A **Drive** (also called a Drive Log) is a recorded GPS route. When you arm the Drive Recorder and tap **Start Drive**, the app begins capturing your route — every coordinate, altitude, and direction of travel — until you tap **End Drive**.

Each drive stores:
- The full GPS polyline (your route on the map)
- Distance in kilometres
- Total ascent and descent in metres
- An elevation profile chart (altitude vs distance)
- Start and end timestamps
- The tracking mode used (Balanced, High Accuracy, or Breadcrumb)

Drives automatically belong to the current active trip. They appear in Trip Detail View as route segments on the map and as entries in the Travel Feed.

---

## What Is a Check-in?

A **Check-in** is a record of a place you stopped. It's the fundamental unit of your travel journal.

Unlike a drive (which is a route), a check-in is a **point** — a location with a timestamp, a title, and everything you want to remember about it: notes, photos, ratings, facilities, cost, overnight status, and a GPS coordinate.

Each check-in belongs to a trip and stores:
- GPS coordinates and a reverse-geocoded location name
- The country code (used by the Schengen counter and Visited Countries card)
- A **place type**: Wild camp, Free aire, Paid aire, Campsite, Accommodation, or Services Only
- An optional **hero photo**, matched from your camera roll by date and GPS proximity
- A **weather snapshot** from WeatherKit, captured at the moment of creation
- Your altitude at the time
- Optional ratings (stay quality, access, beauty, privacy)
- Facilities logged (electricity, showers, water, waste disposal, etc.)
- A cost note (what you paid, if anything)
- Freeform notes and tags

Check-ins are what the rest of the app reads. Your Schengen counter reads their country codes. The Visited Countries map reads them. The All-Time Records card (hottest, coldest, highest, furthest) reads them. The Postcard Generator builds its postcards from them. Voice queries about "where did I sleep in France?" search them.

→ See [[Check-ins — The Engine of the Travel Journal]]

---

## How They Combine in Trip Detail View

When you open a specific trip, you see **Trip Detail View** — a unified view of everything from that expedition:

- A **map** showing all your drive routes stitched together, with check-in pins dropped at each stop
- A **Travel Feed** — a chronological list of both drives and check-ins interleaved, so you can see the whole story of the trip as it unfolded
- **Statistics**: total distance, countries, nights away, total ascent
- A **Smart Notebook** — the trip's photo album, matching photos from your camera roll to the dates and locations of your drives and check-ins
- A **Spending Sheet** — all ledger transactions assigned to this trip

This is your complete record of a journey. It's a travel diary, a route atlas, a spending report, and a photo album in one place.

---

## How Check-ins Become Statistics

The Trips dashboard shows live statistics derived from your entire history of check-ins and drives. These update automatically as you travel:

- **Days on Road** — total days across all trips with the active van
- **Visited Countries** — unique country codes from check-ins, shown as a flag grid
- **Schengen Status** — calculated from check-ins in Schengen Zone countries, using a rolling 180-day window
- **All-Time Records** — hottest, coldest, highest altitude, furthest from home — all from check-in metadata
- **Furthest Bounds** — the absolute north, south, east, and west coordinates you've ever reached

Nothing needs to be manually entered for any of this. It all flows automatically from the check-ins you create.

---

## What About Planned Trips?

Alongside your travel history, the Trips system includes a **Trip Planner** — a forward-looking tool for planning routes before you drive them. A planned trip (called a **TripDraft**) is a separate object from a recorded trip; it holds waypoints and route lines for scouting and planning purposes.

When you execute a planned route, driving to your waypoints and checking in at stops, those check-ins and drives flow into the active recorded trip as normal. The planner is a tool for preparation; the actual history is what matters for statistics.

→ See [[The Trip Planner & Route Builder]]

---

## The Big Picture

```
┌─────────────────────────────────────────────┐
│                   Trip                      │
│  Name · Van · Cover photo · Tags · Dates    │
│                                             │
│  ┌─────────────────┐  ┌─────────────────┐  │
│  │      Drive      │  │    Check-in     │  │
│  │ Route · Dist    │  │ Location · Type │  │
│  │ Elevation       │  │ Weather · Photo │  │
│  │ GPS polyline    │  │ Facilities      │  │
│  └─────────────────┘  │ Country code   │  │
│                        └─────────────────┘  │
│                                             │
│  Derived from drives & check-ins:           │
│  Maps · Stats · Schengen · Countries        │
│  Records · Postcards · Voice answers        │
└─────────────────────────────────────────────┘
```

---

## Related Articles

- [[Check-ins — The Engine of the Travel Journal]] — *The concept behind check-ins*
- [[Spots vs Check-ins — What's the Difference?]] — *Spots are potential; check-ins are history*
- [[Creating a Trip (Expeditions)]] — *How to start a new trip*
- [[How to create a Check-in]] — *Logging a stop*
- [[The Trips Dashboard]] — *What you see on the Trips home screen*
- [[Drive Recorder]] — *Recording a drive*
- [[Schengen Calculator]] — *How the 90-day counter works*
