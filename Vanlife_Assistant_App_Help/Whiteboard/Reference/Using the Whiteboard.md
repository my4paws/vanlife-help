---
title: "Using the Whiteboard"
aliases:
  - "whiteboard"
  - "brain dump"
  - "quick notes"
  - "to do list"
  - "reminders list"
category: "Whiteboard"
type: "Reference"
tags: [help, vanlife-assistant, whiteboard, reference, reminders, todo, due-date, location, notification, voice, using, the]
last_updated: "2026-02-21"
---
 📋 Using the Whiteboard

## Overview

The Whiteboard is your van's shared brain — a single place for grocery runs, to-do tasks, maintenance reminders, and anything you need to remember before leaving a campsite. It lives just above the rest of the app, always a single pull gesture away, and it's smart enough to sort your shopping list by supermarket aisle before you've even walked through the door.

---

## Opening the Whiteboard

**Pull down** from the top of any of the main tabs. As you pull, a `✏️ Pull for Whiteboard` indicator appears above the content. Keep pulling past the threshold and it changes to `Release to Open` — let go and the Whiteboard slides up as a sheet. The keyboard focuses automatically so you can start typing straight away.

You can also open it by asking the [[Voice Additions|Voice Assistant]]: *"Open my whiteboard"* or *"Show shopping list"* works from any tab.

> **First time?** The app walks you through a short four-screen introduction the first time you open the Whiteboard, covering the pull gesture, smart aisle sorting, location-aware reminders, and the Stow feature.

---

## The Dashboard

When you open the Whiteboard with items already inside, the first thing you see is the **Dashboard** — a horizontally scrolling row of summary cards at the top, one per list plus a special Urgent card.

- **Urgent** (red) — appears when any item has a due date or is flagged as high priority. Tap to see those items surfaced together at the top of the full list.
- **List cards** (your list's colour) — show the list name, icon, and a count of active (uncompleted) items. Tap any card to drill straight into that list.

Below the dashboard, all your active items are grouped by list. Each list section shows its first four items by default; if there are more, a **Show X more…** button expands the section in place.

Tap the **🗂 folder+ button** in the top-right toolbar to create a new list.

---

## Two Kinds of List

Everything in the Whiteboard belongs to one of two list types. The type isn't cosmetic — it changes how items are sorted, what swipe actions are available, and what happens when you complete an item.

### 🛒 Shopping Lists

Shopping lists are built for supermarket runs. When you add an item, the app immediately guesses which aisle it belongs to using a keyword database of hundreds of common products across 18 categories — Fruit & Veg, Bakery, Dairy, Meat & Fish, Frozen, Cleaning, Health & Beauty, and more. The list then groups your items under coloured aisle headers in the same order you'd walk through a typical supermarket, so you're never doubling back.

The default **Groceries** list is a shopping list. When you create a new list, you choose Shopping or To-Do in the list editor.

### ✅ To-Do Lists

To-do lists are for tasks, not products. Items are grouped by their Manifest category if one is assigned, with uncategorised items collected at the bottom. Completing a to-do item simply checks it off — there's no trolley or stow flow.

The default **General Tasks** list is a to-do list.

---

## Adding Items

The **quick-add bar** sits permanently at the bottom of the Whiteboard. It shows:

- A row of **list selector pills** — tap the coloured pill to choose which list the item goes into.
- A **text field** showing "Add to [list name]…" — type your item here and tap the send button or press Return to add it instantly.

After two characters, the app checks its memory for matching items you've added before and shows up to three **autocomplete suggestions** above the keyboard. Tapping a suggestion adds the item immediately without needing to press Return.

---

## Shopping Lists in Detail

### Aisle Grouping

Every item on a shopping list is sorted into an aisle section as soon as it's added. The app uses keyword matching — type "cheddar" and it lands in Dairy; "sourdough" goes to Bakery; "ibuprofen" goes to Health & Beauty. Items the app doesn't recognise land in an **Unsorted** section at the bottom. You can correct any aisle at any time (see *Teaching the App* below), and the app will remember your preference for next time.

### Checking Items Off: The Trolley

Tap the circle next to any shopping item to tick it off. Rather than disappearing, completed items move into the **Trolley** — a collapsible bar pinned to the bottom of the screen, showing a cart icon with a red badge indicating how many items are inside.

Tap the trolley bar to expand it. Inside you'll find a **Checkout** button and a scrollable list of everything you've ticked off.

### Checkout: Closing the Shop

When you're done shopping, tap **Checkout (n)** in the trolley. The app asks what to do with the completed items:

- **Log in Ledger** — opens a pre-filled expense entry in the Money module with your groceries category and a memo noting how many items were in the run. Fill in the total amount, confirm, and the transaction is saved to your ledger. The trolley clears automatically.
- **Just Clear** — removes the completed items from the list without creating a transaction.
- **Cancel** — leaves everything in place so you can carry on shopping.

### Stowing Items into the Manifest

The Whiteboard and the [[Understanding_the_Manifest|Van Manifest]] are connected. When you buy something that lives in your van — a gas canister, a spare bulb, a bag of coffee — you can transfer it directly from the shopping list into your inventory without leaving the Whiteboard.

**Swipe right** on any shopping item to reveal the green **Stow** button.

If the app has seen you stow this item before, it stows it **instantly** — zone, container, and category pre-filled from memory — and a toast confirms it. Nothing more to do.

If it's the first time, the **Stow Item** screen opens with three sections to fill in:

- **Location** — pick a zone from your van's manifest (Current Van zones are listed first, then Offboard zones like a garage or storage unit, then any other vehicles in your fleet). If the selected zone has containers inside it, a second picker lets you place the item inside a specific box or bag.
- **Details** — set the weight, quantity, replacement value, and manifest category.

Tap **Confirm** and the item becomes a proper manifest entry in the zone you chose. The checklist item is removed. The app stores everything you just filled in so next time you stow the same item, it happens in one swipe.

### Quantity Adjustments

**Swipe left** on any shopping item to reveal **+1** and **-1** buttons. The quantity is displayed as a badge on the item row — "x3" for three units of the same thing.

---

## To-Do Lists in Detail

To-do items are grouped by their assigned Manifest category. Items with no category assigned collect in an **Uncategorised** section. There is no trolley — ticking off a task simply marks it complete and moves it out of view.

On the main Dashboard, any item with a **due date** or marked as **high priority** is pulled out of its list and surfaced in a red **Priority & Upcoming** section at the top, sorted by due date. This means urgent tasks are never buried inside a list.

**Swipe right** on a to-do item to go straight to the Edit screen (no stow action on to-do items).

---

## Item Rows at a Glance

Every item row, regardless of list type, shows the same set of indicators:

| Indicator             | What it means                                                       |
| --------------------- | ------------------------------------------------------------------- |
| `x2` quantity badge   | More than one unit of this item                                     |
| `!` red circle        | Flagged as high priority                                            |
| 📅 date pill          | Has a due date; turns red if overdue                                |
| 📍 blue location pill | Has a location trigger; shows "Arrive" or "Leave" and the zone name |

Tap the **ⓘ info button** on the right of any row to open the item's detail sheet.

---

## The Item Detail Sheet

Tap ⓘ on any item to open its full detail view. From here you can:

- **Rename** the item.
- **Flag as High Priority** — moves it to the Priority section on the dashboard.
- **Move to a different list** — you can move items between lists of the same type (shopping to shopping, to-do to to-do).
- **Set the aisle** (shopping items) — changes where the item sorts and teaches the app for next time.
- **Set a Smart Grouping** (to-do items) — assigns a Manifest category for grouping.
- **Add a Time Trigger** — sets a due date and time. The app schedules a notification and the item gets a date badge on its row.
- **Add a Location Trigger** — links the item to one of your named offboard zones (a supermarket, a garage, a parent's house) and sets whether to remind you on **Arriving** or **Departing**. See [[Due Dates and Location Triggers|Due Dates and Location Triggers]] for the full details.
- **Add Notes** — free-text notes visible on the detail sheet.
- **Stow This Item** (shopping items only) — the same stow flow described above, accessible as a prominent green button at the top of the sheet.

Tap **Done** to save all changes. If a due date was set, a notification is scheduled. If a location trigger was set, the app begins monitoring the zone.

---

## Teaching the App

The Whiteboard gets smarter the more you use it, thanks to a learning engine called **Product Knowledge**. Every time you:

- **Stow an item** — the app remembers the zone, container, and category you used.
- **Correct an item's aisle** — the app records the right aisle for that product name.

The next time you type the same item name, it will autocomplete in the quick-add bar and, if you stow it, pre-fill the entire Stow screen automatically. Over time, a weekly shop becomes a series of instant swipes rather than a manual filing exercise.

Product Knowledge is stored locally on your device and syncs via iCloud alongside the rest of your data.

---

## Items Arriving Automatically

Not everything on the Whiteboard has to be added by hand. Two other parts of the app can push items in:

- **Manifest Low Stock alerts** — when you mark an item in your van inventory as running low, it automatically appears on your primary shopping list so you remember to restock.
- **Maintenance system** — certain maintenance-triggered actions can create To-Do items on the Whiteboard to remind you of tasks that need completing.

These items show their origin (Low Stock Trigger or Maintenance System) in the item's detail sheet, so you always know where they came from.

---

## Managing Your Lists

In the top-right toolbar of the Dashboard, tap the **🗂 folder+ button** to create a new list. Give it a name, choose a type (Shopping or To-Do), pick a colour, and select an icon from the built-in grid.

When you're inside a specific list, the toolbar shows an **⋯ menu** with two options:

- **Edit List Details** — rename, recolour, or change the icon. Note that changing the list type is not possible after creation.
- **Clear Completed** — removes all ticked items from the list. For shopping lists, this triggers the Checkout flow first (giving you the option to log the spend to your ledger before clearing).

Deleting a list from the editor removes it and all its items permanently.

---

## Searching

Tap the **magnifying glass** in the top-right toolbar to open a search bar that slides in from the top. It searches across item titles, notes, and category names across all lists simultaneously, showing results grouped by list. Tap **Cancel** to dismiss and return to the normal view.

---

## Common Questions

**My grocery items aren't sorting into the right aisles.**
The aisle detection uses keyword matching — it works well for common products, but it won't know every brand name or regional term. You can long-press on the item in the list and choose "Move to Aisle" or open the item's detail sheet, tap **Aisle**, and pick the correct one. The app will remember your correction and use it every time you add that item in future.

**The Stow button isn't appearing on an item.**
The Stow swipe action only appears on items in **Shopping** lists. To-do items use the swipe for Edit instead. If you need to stow something from a to-do list, open the item's detail sheet and use the full stow flow from there — actually, note that the Stow button in the detail sheet is also only available for shopping items. Move the item to a shopping list first if you want to stow it.

**I cleared my shopping list, but the items didn't appear in my Manifest.**
Clearing the list (or using Checkout → Just Clear) deletes the checklist items but does not stow them. Stowing is a separate deliberate action — either the right swipe or the Stow button in the detail sheet. Clearing is for items you've dealt with but don't need to track in your inventory.

**The Checkout option to "Log in Ledger" isn't pre-filling my groceries category.**
The app looks for a budget category whose name contains "grocer" or "food". If your groceries category is named something different — "Supermarket" or "Food & Drink" — the pre-fill won't match. You can still select it manually in the ledger entry that opens, and it will save normally.

---

## Related Articles
- [[Due Dates and Location Triggers|Due Dates and Location Triggers]]
- [[Voice Additions|Voice Additions]]
- [[Understanding_the_Manifest]]
- [[The Magic of Check-ins - Automated Journaling]]