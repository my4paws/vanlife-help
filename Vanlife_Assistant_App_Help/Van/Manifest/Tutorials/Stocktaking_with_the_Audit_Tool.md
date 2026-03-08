---
title: "Stocktaking with the Audit Tool"
aliases:
  - "audit"
  - "stocktake"
  - "verify items"
  - "zone audit"
  - "audit tool"
  - "stocktaking"
  - "check inventory"
  - "never audited"
  - "last audited"
category: "Manifest"
type: "Tutorial"
tags: [help, vanlife-assistant, manifest, tutorial, audit, stocktake, verify, zone]
last_updated: "2026-02-22"
---

# ✅ Stocktaking with the Audit Tool

## Overview

Over time, your Manifest can drift from reality — items get consumed, moved, donated, or lost without being updated in the app. A stocktake (or audit) is the process of physically checking each zone and confirming that what's recorded matches what's actually there.

The Audit Tool guides you through every item in a zone one at a time, tracking your progress with a circular ring. When you've verified everything, it records the date so you always know when each zone was last checked.

---

## Starting an Audit

Navigate to the zone you want to audit. Tap the **⋯** menu (ellipsis) in the top-right corner and choose **Start Audit**.

The Audit view opens showing the zone name and a progress ring at 0%. All items are listed under **To Check**.

You can also start an audit by tapping the **Never Audited** button shown at the bottom of any zone header that has never been checked — this button appears in red as a prompt.

---

## Working Through the Audit

The items list is split into two sections: **To Check** and **Verified**.

Tap any item to toggle it as verified. It moves from To Check into the Verified section and the progress ring advances. If you tap a verified item again, it moves back to To Check — useful if you verified something by mistake.

### Container Verification

When you tap a container row to verify it, all items nested inside that container are automatically verified too — every level of nesting, recursively. You don't need to expand the container and tick each item individually.

Conversely, if you unverify a container, all its contents return to unverified.

The reverse also works: if you individually verify all items inside a container, the container itself is automatically marked as verified when the last child is checked.

This means you can work at whatever level makes sense: tick the whole container if you just want to confirm it's present and sealed, or expand it and verify contents individually if you want to confirm specific items.

---

## Completing the Audit

Once all items are verified (progress ring reaches 100%), a green **Complete Audit** button appears at the bottom of the screen.

Tap it to finish. The audit session ends, and the zone's **last audited** timestamp is updated to today's date.

Back on the zone detail view, the header now shows "Audited: [date]" instead of "Never Audited".

If you tap **Cancel** before completing the audit, no changes are saved — items' verification states are discarded and the zone's timestamp is not updated.

---

## After the Audit

Use what you find to update the Manifest:

- **Item not present** — it's been consumed, lost, or moved. Delete it or move it to the correct zone via the [[Van/Manifest/Tutorials/The_Loading_Bay|Loading Bay]].
- **Item present but wrong quantity** — edit the item to correct the count. Tap the **⋯** menu on the item row or use the Move option to reach the editor.
- **New item found** — add it. Tap **+** in the toolbar while the audit is in progress; new items added during an audit start as unverified and appear in To Check.
- **Item present but in wrong location** — move it using the per-item Move sheet (long-press → Move Item) or via the Loading Bay.

---

## Audit Frequency

There's no required cadence, but auditing each zone before a significant trip — especially before border crossings where customs declarations might matter — is a useful habit. The "last audited" date on the zone header makes it easy to see which zones are overdue for a check at a glance.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Van/Manifest/Tutorials/Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
- [[Van/Manifest/Tutorials/The_Loading_Bay|The Loading Bay]]
- [[Inventory_Control_and_Expiry_Dates|Inventory Control and Expiry Dates]]
