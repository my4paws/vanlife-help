---
title: "Elevation Charts"
aliases:
  - "elevation"
  - "altitude"
  - "elevation chart"
  - "hills"
  - "mountain profile"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, trip, check-in, timeline, drive, gpx, route, elevation, schengen, border, map, charts]
last_updated: "2026-02-21"
---

# 🏔️ Elevation Charts (Expedition Profile)

## Overview

Every mountain pass, coastal cliff road, and alpine descent you drive gets captured by the [[Trips/Reference/Drive Recorder|Drive Recorder]] and stitched together into one of the most satisfying views in the entire app: the **Expedition Profile** chart.

Found inside your Trip Detail View, directly above the [[The Compass and Records Card|Compass & Records card]], the Expedition Profile draws a beautiful gradient silhouette of every metre you climbed and descended across your entire expedition—from the very first kilometre to the last.

---

## How It Works

### Distance, Not Time

Most fitness apps plot elevation against _time_. We plot it against _distance_. This is a deliberate choice: when you're crossing the Pyrenees, you want to see the shape of the mountains you drove through, not how many hours it took. The X-axis always shows how far you've travelled in total (km or miles, depending on your unit settings), and the Y-axis shows your altitude in metres or feet.

### Stitching Multiple Drives Into One Picture

A two-week trip might contain forty separate drive sessions. Rather than showing forty disconnected fragments, the chart engine collects every [[Trips/Reference/Drive Recorder|Drive Log]] that falls within your expedition's date range and stitches them together end-to-end into a single, unbroken elevation profile. The cumulative distance keeps counting upward from the first drive to the last, so the chart reads like one continuous journey.

### Smart Downsampling

A long expedition can produce tens of thousands of individual GPS altitude readings. Rendering all of them at once would slow the app to a crawl. Instead, the engine applies a **500-point safety valve**: if your total drive data exceeds 500 readings, it intelligently samples the full dataset to produce an accurate representative curve that still captures every peak and valley, while remaining perfectly smooth on screen.

### The Gradient

The chart renders as a warm orange-to-purple gradient fill beneath a crisp orange line. The gradient is purely visual—the colour carries no additional meaning beyond making it very easy to read the shape of the terrain at a glance.

---

## Units

The chart fully respects your unit preference set in [[How to change units (Metric-Imperial, Currency)|Settings]]:

- **Metric:** Elevation is shown in **metres (m)**, distance in **kilometres (km)**.
- **Imperial:** Elevation is shown in **feet (ft)**, distance in **miles (mi)**.

The Y-axis has a sensible default ceiling of **3,500m (11,500ft)** to give your mountain passes room to breathe visually. If you happen to drive somewhere _above_ that (hello, Andean passes!), the axis expands automatically to accommodate your actual maximum altitude.

---

## Common Questions

**Why is the chart missing from my trip?** The Expedition Profile only appears when your trip has at least one saved [[Trips/Reference/Drive Recorder|Drive Log]]. If you haven't driven with the Drive Recorder armed, or if all your drives fall outside the trip's date range, the chart will display a _"No Driving Data"_ message instead. The simplest fix is to start using the Drive Recorder on your next drive—your future trips will build up a full profile as you go.

**My trip is ongoing—will the chart update as I drive more?** Yes! The chart refreshes every time you open your Trip Detail View. Each new drive you record gets added to the right-hand side of the profile automatically.

**The altitude line looks very flat even though I drove over big mountains.** This can happen if your phone's GPS had poor vertical accuracy during that drive. The [[Trips/Reference/Drive Recorder|Drive Recorder]] applies strict accuracy gates and only saves altitude readings when the phone is confident in its vertical position. If you were driving through a deep valley, a city centre with tall buildings, or had the phone flat on a seat (blocking the sky view), readings may have been sparse. The chart will still draw the best picture it can from the data it captured.

**My chart has a very tall, narrow spike in it.** This is a classic sign of a single noisy GPS reading slipping through. Even with the Drive Recorder's smoothing algorithms, occasional outliers can occur in areas with very poor signal. You can safely ignore these cosmetic blips—they don't affect your Total Ascent statistics.

---

## Troubleshooting

### "The chart just shows a spinner and never loads."

The chart processes your drive data in the background to keep the app responsive. On very large, multi-month trips, this can take a few seconds. Try scrolling away and back to give it a moment to finish. If it never resolves, try force-quitting and relaunching the app.

### "My chart shows far fewer drives than I expected."

The engine matches drives to your trip using two criteria: drives **directly assigned** to the trip, and drives whose **start date falls within the trip's start and end dates**. If some of your older drives were recorded before you created the expedition, they won't match on date alone. You can reassign drives manually by editing the Drive Log and linking it to the correct trip.

---

## Related Articles

- [[Trips/Reference/Drive Recorder|Drive Recorder]]
- [[Trips/Reference/Elevation Charts|GPX Import]] _(Imported GPX routes also contribute to your Expedition Profile!)_
- [[Trips/Reference/Checkins and Timeline|Check-ins and Timeline]]
- [[Trip States - Future, Active, and Past Expeditions]]