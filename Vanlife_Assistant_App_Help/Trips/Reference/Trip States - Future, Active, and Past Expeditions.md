---
title: "Trip States: Future, Active, and Past Expeditions"
aliases:
  - "planning a trip"
  - "past trips"
  - "trip timeline"
  - "expedition states"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, expeditions, planning, active, history, scout]
last_updated: "2026-02-22"
---

# ⏳ Trip States: Future, Active, and Past

## Overview
Vanlife Assistant doesn't just track where you are; it helps you plan where you are going and reminisce about where you have been. 

Because of this, an **Expedition** (Trip) behaves entirely differently depending on its dates. The app's interface and underlying engines will automatically adapt based on whether a trip is in the Future, currently Active, or in the Past.

---

## 🔮 Future Trips (Planning Mode)
If you create a Trip with a Start Date in the future (e.g., planning a summer trip to Norway while it's still January), the Trip enters **Planning Mode**.

* **No Live Tracking:** You cannot log a "live" Check-in or use the Drive Recorder for a Future Trip.
* **The Scout Engine:** This is where the magic happens. The app activates the `ExpeditionScoutEngine`. It looks at your upcoming destination and your [[Understanding_the_Manifest|Van Manifest]], and begins suggesting items you need to pack (or unpack!). 
* **Payload Calculation:** As you assign gear to your Future Trip, the dashboard displays your expected Onboard Weight vs. your Van's Maximum Payload, ensuring you don't pack too heavy before you even leave the driveway.

---

## 🟢 Active Trips (Live Mode)
When the calendar hits your Trip's Start Date, it automatically becomes your **Active Expedition**. 
*(Note: You can only have one Active trip at a time).*

* **The Command Center:** Your [[The Trips Dashboard]] transforms to show live data: Days on the road, remaining Schengen visa days, and live Drive Recorder status.
* **Automatic Aggregation:** Every [[Adding Transactions|financial expense]] you log, every Check-in you create, and every mile you drive is silently and automatically tagged and permanently attached to this specific Expedition.

---

## ⏪ Past Trips (Memory & Analysis Mode)
Once a Trip's End Date passes, it is archived as a **Past Trip**.

* **The Unified Story:** The Trip Detail View transforms from a live dashboard into a beautiful, static memory book. Your map shows the complete, unbroken line of your journey.
* **Financial Autopsy:** The app locks in your total spending and calculates your true "Average Cost Per Day" for that specific trip, allowing you to see exactly how much your 3-month Portugal trip actually cost compared to your original What-If scenario.
* **Data Lock:** While you can still edit old Journal entries or add photos, the background Drive Recorder and live GPS engines disconnect from this trip, ensuring your historical data remains frozen and accurate.