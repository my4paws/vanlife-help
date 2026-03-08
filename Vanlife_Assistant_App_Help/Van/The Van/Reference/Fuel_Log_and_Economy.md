---
title: "Fuel Log and Economy"
aliases:
  - "fuel log"
  - "fuel history"
  - "fuel economy"
  - "fuel efficiency"
  - "fuel cost"
  - "mpg"
  - "pence per km"
  - "pence per mile"
  - "fill up"
  - "add fuel"
  - "fuel badge"
  - "trip fuel cost"
  - "fuel estimator"
  - "fuel calculator"
category: "Van"
type: "Reference"
tags: [help, vanlife-assistant, van, fuel, economy, efficiency, log, cost, reference]
last_updated: "2026-02-23"
---

# ⛽ Fuel Log and Economy

## Overview

Fuel is usually the biggest single running cost of vanlife. Understanding how much you're spending per kilometre (or mile) tells you how your van is performing, helps you budget for upcoming trips, and flags early if something's wrong — a sudden drop in fuel economy is often the first sign of an engine issue.

The Fuel Log turns every fill-up into data. Over time it builds an efficiency picture that the rest of the app can use — the badge on the Fuel Log card on the Van tab home screen shows your current average, and tapping it opens a trip cost estimator that uses your real-world economy to calculate what a planned journey will cost.

---

## Opening the Fuel Log

Tap **Fuel Log** on the Van tab tools grid (the green fuelpump card). The Fuel Log opens showing your van's name, total fuel spend, average economy, and a chronological timeline of all fill-ups grouped by month.

---

## The Summary Header

Two cards sit at the top of the Fuel Log:

**Total Spent** — The total fuel cost across all entries in the current filter period.

**Avg. Economy** — Your average fuel cost per distance unit (pence per km or pence per mile, depending on your settings). Tap this card to expand or collapse the efficiency chart below it.

If there's not enough data to calculate economy (fewer than two entries with odometer readings), the economy card shows "--".

---

## The Efficiency Chart

Tap the **Avg. Economy** card to toggle an expandable chart showing your fuel efficiency trend over time. Each data point on the chart represents the cost-per-unit for a single interval (from one fill-up to the next). The chart shows whether your economy is improving, worsening, or stable.

---

## Adding a Fill-Up

Tap the floating **+** button to log a new fill-up. The standard ledger entry form opens pre-configured for fuel entries.

### Key Fields

**Date** — When you filled up.

**Vendor / Station** — The petrol station name or location. Filling this in means you can search for fill-ups at a specific station later.

**Amount** — What you paid. In your home currency.

**Odometer** — This is the most important field for economy calculation. Enter your odometer reading at the time of filling. The app calculates economy by comparing the cost of this fill-up with the distance driven since the previous fill-up (the difference between consecutive odometer readings).

If you skip the odometer reading, no economy figure can be calculated for that interval. You don't have to enter it every time, but the more consistently you do, the more accurate your average becomes.

**Account** — The account this expense came from.

**Foreign Currency** — If you filled up in another country and paid in a local currency, enter the amount in foreign currency here. The app stores the conversion for accurate home-currency reporting.

**Memo** — Optional notes ("Full tank at border", "Motorway station, expensive").

**Receipt** — Scan a receipt to attach a PDF to the entry.

---

## How Economy Is Calculated

Economy is shown as **pence per km** (or pence per mile in Imperial). This is more useful than mpg or L/100km for vanlifers because it directly tells you what driving costs.

The calculation for each interval:

```
Economy (p/unit) = (Fill-up cost × 100) ÷ Distance since last fill-up
```

Only intervals where both the current and previous entry have odometer readings can produce an economy figure. The app calculates this for each eligible interval and shows the result on the timeline row as a green badge.

The **average economy** shown in the summary card is the mean across all calculated intervals in the current filter period (up to the last 100 intervals).

---

## The Fuel Economy Badge

On the Van tab home screen, if you have enough data for an economy figure, a small green badge appears on the Fuel Log card showing your current average: e.g. "14.3p/km" or "23.1p/mi".

**Tap the badge** to expand a **Trip Fuel Cost Estimator** inline below the Fuel Log card. Enter a planned trip distance and the estimator uses your real-world average economy to calculate the projected fuel cost. Close it by tapping the ✕ button.

This is the quickest way to answer "how much will fuel cost for the drive to the Alps?" without leaving the Van tab.

---

## The Timeline

Below the summary section, fill-ups are listed chronologically in a timeline grouped by month. Each entry row shows:

- The station name (or "Fuel Station" if blank)
- The date
- The cost
- A green efficiency badge if an economy figure could be calculated for that interval
- The odometer reading and the distance driven since the previous entry (in brackets)

Tap any entry to edit it.

Month headers are sticky and show the total fuel spend for that month.

---

## Filtering and Sorting

The filter bar offers two menus:

**Date** — All time / This Year / Last Year / Custom

**Sort** — Newest / Oldest / Highest Cost / Lowest Cost

---

## Search

Tap the magnifying glass to open a search overlay. Filter by station name or memo text.

---

## Related Articles
- [[Van_Profile_and_Setup|Setting Up Your Van Profile]]
- [[The_Service_Logbook|The Service Logbook]]
