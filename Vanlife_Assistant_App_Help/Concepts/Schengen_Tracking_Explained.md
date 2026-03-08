---
title: "Schengen Tracking Explained"
aliases:
  - "schengen explained"
  - "how schengen tracking works"
  - "90 day rule explained"
  - "schengen concept"
  - "schengen 180 day window"
  - "rolling window schengen"
  - "schengen calculator explained"
  - "90 180 rule"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, schengen, travel, compliance, reference]
last_updated: "2026-03-08"
---

# 🛂 Schengen Tracking Explained

The Schengen counter is one of the most anxiously watched numbers in the app. This article explains exactly what the rule is, the one thing most people get wrong about it, and how the app calculates your position.

---

## The Rule, Plainly Stated

If you hold a non-Schengen passport, you are allowed to spend a maximum of **90 days inside the Schengen Zone in any rolling 180-day period**.

Two words in that sentence matter enormously: *rolling* and *any*.

The window is not a fixed calendar period. It does not reset on 1 January. It does not reset when you leave Schengen. It is a continuous 180-day window that moves forward every day. On any given day, the app looks back 180 days and counts how many of those days you were inside Schengen. That number must not exceed 90.

---

## The Most Common Misconception

Many travellers believe that leaving the Schengen Zone resets their counter, or that 90 days "earned" somehow expire in batches. Neither is true.

**Days drop out of the window gradually.** Each day you spent inside Schengen falls out of the rolling window exactly 180 days after you were there. If you spent 30 days in France in October, those 30 days stop counting toward your limit in April — not because you left, but because 180 days have passed since you were there.

This means:
- Rushing out of Schengen on day 90 does not reset anything
- Re-entering immediately after a short break outside usually still leaves most of those days in the window
- The only thing that "burns off" days is time

---

## The 26 Schengen Countries

The Schengen Zone is not identical to the European Union. The app tracks these countries:

Austria, Belgium, Czech Republic, Denmark, Estonia, Finland, France, Germany, Greece, Hungary, Iceland, Italy, Latvia, Liechtenstein, Lithuania, Luxembourg, Malta, Netherlands, Norway, Poland, Portugal, Slovakia, Slovenia, Spain, Sweden, Switzerland.

Notable absences: Ireland, Romania, Bulgaria, Croatia, and Cyprus are EU members but not full Schengen members for these purposes. The United Kingdom is neither.

---

## How the App Calculates Your Days

The calculator looks at a 180-day window ending today. It works through every day in that window — 180 days in total — and classifies each one.

**A day counts as "in Schengen" if you were inside the zone at any point during that calendar day.** This is not a half-day or hourly rule. If you crossed into France at 11pm, that full day counts.

The app builds your timeline from three sources, combining them into a single picture:

**1. Check-ins** — Every check-in with a Schengen country code contributes the day of that check-in. If you're checking in daily, this is your most reliable source.

**2. Ledger entries** — Any transaction recorded with a country code counts the same way. Paying for fuel in Germany or a campsite in Spain adds a data point to your timeline even without a check-in.

**3. GPS border transitions** — When the app detects you crossing a border automatically (via the background location system), it records the transition with a timestamp. These transitions feed the same window calculation.

The calculator doesn't require all three. It assembles whatever data exists and carries forward the last known state between markers. If you had a check-in in France on a Monday and nothing recorded until a check-in in Portugal the following Sunday, the app fills in the days between based on the last confirmed location.

---

## What the Status Card Shows

The **Schengen Status Card** on the Trips dashboard shows:

- **Days remaining** — how many more days you can spend in Schengen before hitting 90
- **Days used** — from the current 180-day window
- **Next drop date** — the date when your oldest counted day falls out of the window, freeing up one more day of allowance
- A liquid-fill ring that drains as your allowance decreases

The card only appears if at least one person in your Crew has a non-Schengen passport. If everyone in the van is a Schengen resident, the card is hidden.

A **yellow warning** appears when 15 or fewer days remain. A **red overstay** state appears if the count exceeds 90.

---

## "Earliest Re-entry" When You're Outside

When you're outside the Schengen Zone and have used your full 90 days, the app can tell you the earliest date you could legally re-enter. This is the date on which enough of your oldest spent days will have dropped out of the 180-day window to bring your total below 90.

This calculation works by finding the oldest spent days in your history and projecting forward 180 days from each of them. The last of those dates — when enough days have dropped out to bring you below 90 — is your earliest eligible re-entry date.

---

## Seeding the Window When Data Is Sparse

If you've just started using the app mid-trip, or you didn't record anything before the 180-day window starts, the calculator handles gaps gracefully. It looks up to a full year before the window start for any country data, then uses that last known state as the baseline for the beginning of the window.

This means if you have a check-in in Portugal from three months ago and nothing since, the app assumes you've been in Schengen since then — which is the conservative and legally correct approach.

---

## Who This Applies To

The app checks each Traveller's `homeCountryCode`. Travellers from any of the 26 Schengen countries are flagged as Schengen residents and exempt from the 90-day rule. The counter and status card are only active when at least one non-exempt Traveller is configured.

This is why it's important to set up your Crew correctly in Settings, including the home country for each person travelling with you.

→ See [[Schengen Calculator]] for the status card UI
→ See [[How to create a Check-in]] — check-ins are your most reliable Schengen data source
→ See [[Border Crossings and Country Detection]] — how GPS transitions are recorded automatically
