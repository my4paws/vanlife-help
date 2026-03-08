---
title: "Inventory Control and Expiry Dates"
aliases:
  - "inventory control"
  - "stock levels"
  - "low stock"
  - "restock alert"
  - "expiry date"
  - "expiry"
  - "expiring item"
  - "minimum stock"
  - "auto restock"
  - "monitor stock"
  - "expiring soon"
  - "item expires"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, inventory-control, stock-levels, expiry, alerts, notifications, restock]
last_updated: "2026-02-22"
---

# 📊 Inventory Control and Expiry Dates

## Overview

Two features help you stay on top of consumables and time-limited items: **Inventory Control** monitors item quantities and alerts you when stock runs low, and **Expiry Dates** track items with a fixed shelf life and surface them before they go out of date.

Both are optional, per-item settings configured in the [[Adding_and_Editing_Items|item editor]].

---

## Inventory Control

### Setting It Up

Open any item's editor and scroll to the **Inventory Control** section.

Toggle on **Monitor Stock Levels**. A second row appears: **Alert Threshold** with a stepper, defaulting to 1.

Set the threshold to the quantity at which you want to be alerted. A threshold of 1 means you're notified when you're down to the last one; a threshold of 3 means you get a warning while there are still 3 left — enough time to add it to the shopping list before you actually run out.

Tap **Save**.

### How the Alert Works

When the item's quantity drops to or below the threshold, the zone detail view shows an **alert banner** at the top:

> **Low Stock: [Item Name]** — "This item has dropped below its minimum stock level ([threshold]). Would you like to restock it?"

Two buttons appear: **Add to Shopping List** and **Ignore**.

Tapping **Add to Shopping List** creates a new item on your default shopping list in the Whiteboard and shows a brief confirmation toast. You don't need to leave the Manifest — the item is added in the background and will be waiting on the Whiteboard when you next check it. See [[Whiteboard/Reference/Using the Whiteboard|Using the Whiteboard]].

Tapping **Ignore** dismisses the alert without taking any action. The alert will reappear the next time you open that zone while the item is still below threshold.

### What Triggers the Quantity Drop?

The inventory control check fires when you're viewing a zone and the item's quantity is at or below threshold. Quantity changes that can trigger it include:

- Editing the item and reducing the quantity manually
- Using the Move Item sheet to move some (but not all) units elsewhere
- Stowing a Whiteboard item that decrements the count (if the item was added via a shopping list stow)

---

## Expiry Dates

### Setting an Expiry Date

In the item editor, scroll to the **Expiry Date** section (below Inventory Control). Toggle on **Has Expiry Date** and a date picker appears, defaulting to today.

Set the date to when the item expires, runs out, or needs replacing — food best-before dates, first aid kit refill dates, medication expiry, gas canister inspection dates, fire extinguisher service dates, and so on.

Tap **Save**.

### The Expiring Soon Card

Items with an expiry date set appear in the **Expiring Soon** card on the Manifest home screen once they are within **30 days** of their expiry date. The card is a horizontal scroll of chips showing:

- The item name
- The expiry date (abbreviated)
- A countdown: "14d", "3d", etc.
- "Expired" in red if the date has passed

Tap any chip to open that item's editor directly, so you can update the date, remove it, or take action.

The card only appears when at least one item is expiring within 30 days. On the days when nothing is due, the home screen is clean.

### Expiry Notifications

When you save an item with an expiry date, the app schedules a notification to fire **7 days before** the expiry date:

> **Expiring Soon: [Item Name]** — "This item expires in 7 days. Location: [Zone Name]"

If the expiry date is already less than 7 days away when you save it, no notification is scheduled (because the 7-day-prior date has already passed).

Removing the expiry date by toggling **Has Expiry Date** off cancels the pending notification automatically.

The notification requires iOS Notifications permission. If the app doesn't have permission, the Expiring Soon card will still appear on the home screen but no push notification will be sent.

### Good Items to Track with Expiry Dates

- First aid supplies (plasters, antiseptic wipes, medications)
- Food and drinks with a definable best-before or use-by date
- Gas canisters (some have inspection/discard dates stamped on them)
- Fire extinguisher service dates
- Personal medication
- Travel insurance end dates (though these are better tracked in the Glovebox compliance section)
- Battery or tyre inspection reminders

---

## Common Questions

**The low-stock alert keeps appearing even after I tapped Ignore.**
Ignore only dismisses the alert for the current session. It reappears the next time you open the zone while the item is still below threshold. To stop it appearing, either restock the item (increase the quantity) or turn off the Monitor Stock Levels toggle in the item editor.

**I added the item to the shopping list but the alert is still showing.**
Adding to the shopping list doesn't change the item's quantity in the Manifest — it creates a new entry on the Whiteboard for you to buy more. The alert continues to show until you actually receive the stock, edit the item quantity upward, and/or restock the Manifest entry.

**The notification fired but I'd already replaced the item.**
Update the item's expiry date in the editor to reflect the new batch, or remove the expiry date if the replacement doesn't have one.

**The Expiring Soon card isn't showing an item I know is close to expiring.**
Check that the item's expiry date is actually set — open the item editor and confirm **Has Expiry Date** is toggled on and the date is correct. Items without an expiry date set will never appear in the card regardless of how old they are.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
- [[Stocktaking_with_the_Audit_Tool|Stocktaking with the Audit Tool]]
- [[Whiteboard/Reference/Using the Whiteboard|Using the Whiteboard]]
