---
title: "Voice Travel Commands"
aliases:
  - "voice travel"
  - "voice check in"
  - "voice checkin"
  - "voice schengen"
  - "voice 90 days"
  - "voice countries visited"
  - "voice where am i"
  - "voice days in france"
  - "voice time on road"
  - "voice trip history"
  - "voice next trip"
  - "voice last trip"
  - "voice location"
  - "voice europe"
  - "voice return to europe"
  - "voice schengen days"
  - "voice schengen status"
  - "voice mark location"
  - "voice vanlife duration"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, travel, navigation, schengen, reference]
last_updated: "2026-02-23"
---

# 🗺️ Voice Travel Commands

The Travel handler covers location check-ins, Schengen zone compliance, trip statistics, and anything to do with your movement history.

---

## Check-In at Current Location

Log your current GPS location as a check-in point on your trip timeline.

- *"Check in"*
- *"Check me in"*
- *"Mark my location"*
- *"Log current location"*

The assistant resolves your GPS coordinates to a place name, creates a new check-in entry in your trip timeline, and confirms: *"Checked in at [Location Name]."* The timeline refreshes on screen automatically.

If GPS is unavailable: *"I can't see your GPS location right now. Please try again when you have a signal."*

---

## Where Am I?

Get the name of your current location without creating a check-in.

- *"Where am I?"*
- *"What's my current location?"*

Returns the resolved place name from your GPS coordinates. Useful for quick orientation or to read out an address before logging it.

---

## Schengen Zone Status

Check how many days of your 90-day Schengen allowance you've used and how many remain.

- *"Schengen status"*
- *"How many Schengen days do I have left?"*
- *"Check my 90 days"*
- *"Am I okay for the Schengen zone?"*

**Response examples:**

> *"You have used 47 of your 90 days. You have 43 days remaining."*

> *"Careful, you only have 8 days left in the Schengen zone."*

> *"Warning: You have exceeded your 90-day Schengen allowance by 3 days!"*

---

## When Can I Return to Europe?

If you're currently outside the Schengen zone (or about to leave), ask when you can re-enter.

- *"When can I go back to Europe?"*
- *"When can I re-enter the Schengen zone?"*
- *"When am I eligible to return to Europe?"*

**Response examples:**

> *"You can return to Europe on 14 April 2025 (in 31 days)."*

> *"You are eligible to enter the Schengen zone immediately."*

---

## Countries Visited

- *"How many countries have I visited?"*
- *"How many countries have we been to?"*

Returns the count of unique countries in your check-in history.

---

## Days Spent in a Country

- *"How many days have I spent in France?"*
- *"How long was I in Portugal?"*
- *"Days in Spain"*

Returns the number of check-in records associated with that country.

---

## Time on the Road

- *"How long have I been doing vanlife?"*
- *"How long have we been on the road?"*
- *"When did we start vanlife?"*

Uses the Vanlife Start Date from your Settings to calculate the elapsed time, returning a human-friendly duration like "1 year and 4 months".

If no start date is saved: *"I don't know when you started. Please set a 'Vanlife Start Date' in Settings."*

---

## Trip Queries

### Next trip
- *"What's my next trip?"*
- *"When is the next expedition?"*
- *"How many days until my next trip?"*

Returns the name, start date, and number of days until your next scheduled trip.

### Last / previous trip
- *"What was my last trip?"*
- *"Tell me about the previous expedition"*

Returns the name and end date of your most recently completed trip.

### Trip count
- *"How many trips have I been on?"*
- *"How many expeditions have I done?"*

---

## Tips

**Check-in GPS accuracy**: The assistant uses your device's best available GPS fix at the moment of the command. In built-up areas, GPS may resolve to a street or neighbourhood rather than a specific building.

**Schengen calculation**: The Schengen count is calculated from your trip check-in history using the same engine as the Schengen tracker screen. If your check-in history has gaps, the count may be approximate. Keeping regular check-ins as you cross borders gives the most accurate result.

**"Days in country" note**: The assistant counts check-in records in that country, not calendar days between first and last visit. A single day with multiple check-ins in France still counts as multiple records. For exact compliance tracking, use the Schengen screen directly.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[The_Crew|The Crew (Schengen)]]
- [[Drive_History|Drive History]]
