---
title: "Drives, Navigation and Route Planning — What's the Difference?"
aliases:
  - "drives vs navigation"
  - "drives vs route planning"
  - "navigation vs drives"
  - "route planning vs drives"
  - "drive recorder vs navigation"
  - "trip planner vs drive recorder"
  - "what is a drive"
  - "what is route planning"
  - "drives navigation route planning"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, drives, navigation, route-planning, trips, reference]
last_updated: "2026-03-08"
---

# 🧭 Drives, Navigation and Route Planning — What's the Difference?

Three things in Vanlife Assistant look superficially similar because they all involve maps and movement. They do very different jobs.

---

## The One-Line Summary

| | Drive Recorder | External Navigation | Trip Planner |
|---|---|---|---|
| **Direction** | Backward-looking | Real-time | Forward-looking |
| **Purpose** | Records where you went | Gets you there | Plans where to go |
| **Produces** | A drive log in your history | Turn-by-turn directions | A planned route with waypoints |
| **Lives in** | Your trip history | Your nav app | The Spots section |

---

## Drive Recorder — Recording History

The **Drive Recorder** captures your GPS route as you drive. It records every point, altitude, and direction of travel into a DriveLog that becomes part of your permanent trip history.

You arm the recorder before you set off, start it when you leave, and stop it when you arrive. What it produces is a route you already drove: the polyline on the Trip Detail map, the elevation chart, the distance and ascent statistics, the track you can replay later.

The Drive Recorder is about **preservation**. The drive already happened — the recorder is capturing it for your records.

Three tracking modes let you balance quality against battery:
- **Balanced** — recommended for most journeys, good accuracy, moderate battery
- **High Accuracy** — denser GPS points, better track fidelity, higher battery use
- **Breadcrumb Only** — minimal GPS points, lowest battery use, less granular track

→ See [[Drive Recorder]] for full detail.

---

## External Navigation — Getting There

Vanlife Assistant does not contain turn-by-turn navigation. This is deliberate — the app is not competing with Google Maps, Apple Maps, or TomTom GO. Those tools do real-time routing exceptionally well.

Instead, the app integrates with your preferred navigation app. From a Spot's detail view, or from the Trip Planner, you can tap to open the destination in Apple Maps, Google Maps, Waze, or any navigation app you have installed. The app hands off the coordinate and steps back.

Navigation is handled by the tool built for it. The Drive Recorder then captures what actually happened once you're moving.

---

## Trip Planner — Planning Ahead

The **Trip Planner** (accessed from the Travel tab via the Spots section) is a forward-looking tool for planning a route before you drive it. You add waypoints — pulled from your Spots database or placed manually on the map — and the planner calculates the route between them.

The Trip Planner answers "where should I go?" It lets you scout locations from the Spots Vault, check vehicle restrictions (maximum length, height), see what facilities are available, and assemble a sequence of stops into a planned itinerary. Planned routes show estimated distances and travel times between waypoints.

A planned route (called a **TripDraft**) is separate from a recorded trip. It's a planning document, not a travel record. Once you actually drive the route — checking in at stops along the way — those check-ins and Drive Recorder logs become part of your real trip history. The planner's job is done; the record lives elsewhere.

---

## How They Work Together

On a typical journey day, all three are in use — in sequence:

1. **Trip Planner** (beforehand) — you browse Spots, pick a campsite 200km away, confirm the height clearance is fine for the van, and see it's a wild camp with good reviews
2. **External navigation** (during the drive) — you tap "Open in Google Maps" from the Spot detail and follow turn-by-turn directions
3. **Drive Recorder** (running simultaneously) — you'd armed it before setting off, so it captures the full GPS track in the background while you follow navigation

At the end of the day, you have a drive log of the exact route you took, and you create a check-in at the campsite. Neither the navigation app nor the Trip Planner produced those — only the Drive Recorder and your check-in did.

---

## Related Articles

- [[Drive Recorder]] — *Recording a drive*
- [[The Trip Planner & Route Builder]] — *Planning routes with Spots*
- [[Spots vs Check-ins — What's the Difference?]] — *Scouted places vs visited places*
- [[Navigation App Selection]] — *Choosing your external nav app*
