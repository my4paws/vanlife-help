---
title: "The Maintenance Schedule"
aliases:
  - "maintenance schedule"
  - "service schedule"
  - "maintenance task"
  - "add maintenance task"
  - "oil change"
  - "vehicle health"
  - "maintenance reminder"
  - "service interval"
  - "maintenance due"
  - "overdue maintenance"
  - "load schedule"
category: "Van"
type: "Reference"
tags: [help, vanlife-assistant, van, maintenance, schedule, health, tasks, intervals, reference]
last_updated: "2026-02-23"
---

# 🔧 The Maintenance Schedule

## Overview

A van that breaks down somewhere remote is an adventure nobody planned for. The Maintenance Schedule keeps you on top of every recurring service task — oil changes, brake fluid, coolant checks, tyre rotations — tracking both time and distance intervals so nothing slips through the cracks.

Each task appears as a health cell on the Van tab, showing a colour-coded countdown bar that tells you at a glance whether everything's good, something's due soon, or something's overdue. It's the difference between proactive van ownership and waiting for something to start making a noise.

---

## The Vehicle Health Card

The **Vehicle Health** card sits on the Van tab home screen. It displays all your scheduled maintenance tasks as a responsive grid of health cells. Each cell shows:

- The task icon
- The task name
- A mini countdown bar (green → orange → red as the interval is consumed)
- The status text: "X days left", "X km left", "X days overdue", or "X km overdue"

Cells can show both time and distance remaining if both intervals are set — it picks whichever runs out sooner for the primary status colour.

**Status colours:**
- **Green** — good, plenty of interval remaining
- **Orange** — due soon
- **Red** — overdue

---

## Loading the Default Schedule

If you haven't added any tasks yet, the Vehicle Health card shows a "No Schedule" empty state with a **Load Schedule** button. Tap it to automatically add seven standard maintenance tasks:

- Engine Oil & Filter (12 months / 15,000 km)
- Tyre Rotation (6 months / 10,000 km)
- Brake Fluid Service (24 months)
- Cabin Air Filter (12 months / 20,000 km)
- Coolant Check (12 months)
- Wiper Blades (12 months)
- General Inspection (12 months)

These are reasonable defaults for most vans. You can edit any of them immediately after loading, add your own, or delete ones that don't apply to your vehicle.

Loading the default schedule doesn't overwrite any existing tasks — it only adds tasks if the list is empty.

---

## Adding a Task

Tap **Edit** in the Vehicle Health card header to open the Maintenance Schedule screen. Tap **+** in the toolbar to open the Task Editor.

### Task Name
What you call it. Be specific: "Engine Oil & Filter", "LPG Service", "Fan Belt Check". This is how it appears on the health cell and in the Service Logbook.

### Icon
Choose an icon from the grid: wrench, oil can, tyre, battery, suspension, paintbrush, fanblades, engine, wiper, coolant, and more. Tap to select. The selected icon is used on the health cell.

### Frequency (Whichever Comes First)

This is the key configuration. A task can be triggered by time, distance, or both. When both are set, the task becomes due when **whichever interval is exhausted first**.

**Time Interval** — Toggle on and enter the number of months. E.g. 12 for annual, 6 for every 6 months, 24 for every 2 years.

**Distance Interval** — Toggle on and enter the distance in your preferred units (km or miles, based on your settings). The app stores values in km internally and converts for display.

At least one interval must be set to save the task.

### Last Performed

**Date** — When you last did this task. Defaults to today for a new task (adjust it to the actual date if it was done previously).

**Odometer** — The odometer reading when you last performed the task. Tap **Set to Current (X km/mi)** to use your van's current odometer reading instantly.

These two values are the baseline from which the countdown starts. If you're setting up a task for an oil change you did 3 months ago at 45,000 km, enter that date and reading — the app will calculate correctly from there.

---

## Editing a Task

Tap any task in the Maintenance Schedule list to reopen the Task Editor pre-populated with its current values. All fields are editable. **Save** updates the task and immediately recalculates its health cell.

Alternatively, tap any health cell on the Van tab home screen to go directly to that task's editor.

---

## Logging a Completed Service

When you complete a task, open the Task Editor and update **Last Performed** to today's date and the current odometer reading. Tap **Set to Current** for a one-tap update. Save — the health cell resets to green and the countdown restarts from the new baseline.

> Want to also record the cost of the service? That's done separately in the [[The_Service_Logbook|Service Logbook]], which tracks the financial side of maintenance. The Maintenance Schedule tracks *when* things are due; the Service Logbook tracks *what you spent*.

---

## Deleting a Task

Open the task in the editor and tap **Delete Task** at the bottom. An alert confirms. Deleting a task removes it from the schedule but does not delete any existing Service Logbook entries.

Alternatively, swipe left on any task row in the Maintenance Schedule list and tap Delete.

---

## The "Next Due" Preview

The Van editor's Maintenance section shows a preview of the next due or most urgent task — a single row with the task icon, name, and status message. This is your at-a-glance warning that something is coming up even when you're not looking at the full schedule.

---

## How the Countdown Works

The app uses your average daily driving distance (calculated from your Service Logbook odometer readings) to estimate when a distance-based interval will expire in terms of days.

For example: if you average 30 km/day and have 900 km left before an oil change is due, the app shows "30 days left" as a projected date. This projection updates automatically as you log more fuel and service entries.

If there's no odometer history to calculate from, distance-based tasks show only "X km left" without a projected date.

---

## Related Articles
- [[Van_Profile_and_Setup|Setting Up Your Van Profile]]
- [[The_Service_Logbook|The Service Logbook]]
- [[Compliance_and_Legal_Dates|Compliance and Legal Dates]]
