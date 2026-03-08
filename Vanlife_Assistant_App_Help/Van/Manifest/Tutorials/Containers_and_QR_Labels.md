---
title: "Containers and QR Labels"
aliases:
  - "container"
  - "qr code"
  - "qr label"
  - "scan container"
  - "print label"
  - "x-ray vision"
  - "container qr"
  - "box label"
  - "scan box"
  - "nested items"
  - "items inside container"
  - "create container"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, containers, qr, labels, scanner, nesting, kits]
last_updated: "2026-02-22"
---

# 📦 Containers and QR Labels

## Overview

A container is an item that holds other items. Any box, bag, case, drawer, or backpack in your van can be represented as a container in the Manifest — and once it has a printed QR label stuck to it, scanning that label with your phone instantly shows you exactly what's inside, without opening the app or searching for it.

The app calls this **X-Ray Vision**.

---

## Creating a Container

A container is created the same way as any item — through the item editor — with one difference: the **This is a Container** toggle is switched on.

1. Tap **+** in any zone to open the item editor.
2. Enter the container's name (e.g. "Blue Pelican Case", "Kitchen Drawer", "Hiking Backpack").
3. Enter the container's own weight — the weight of the empty physical container itself, not its contents.
4. Toggle on **This is a Container**.
5. Choose a **Container Style** from the picker (Box, Bag, Hard Case, Drawer, etc.).
6. Set any other details (category, value, notes) as needed.
7. Tap **Save**.

The container now appears in the zone's **Containers** disclosure group, shown with an orange icon. Its total shown weight includes both the container's own weight and the combined weight of everything inside it.

For a full explanation of all item fields, see [[Adding_and_Editing_Items|Adding and Editing Items]].

---

## Adding Items Inside a Container

Once a container exists in a zone, any item can be placed inside it.

**When adding a new item:** Select the zone, then choose the container from the **Inside Container** picker. The item appears inside that container.

**When editing an existing item:** Open the item editor and change the **Inside Container** picker to the desired container.

**From the container detail view:** Open the container (tap its row or navigate to it) and tap **+** in the toolbar. Any item added this way is automatically placed inside that container.

Items inside a container appear in the container's contents list grouped by category. Their weight counts toward the container's total and rolls up into the zone's total.

---

## Nesting Containers

Containers can contain other containers. A hard case inside the garage zone can itself contain a toolbox; the toolbox can contain tools. There's no enforced depth limit.

The weight rollup is recursive: each level adds its own weight plus the total weight of everything inside it. If you add a 2kg hard case and fill it with items totalling 5kg, the container shows 7kg on the zone list and contributes 7kg to the payload.

To create a nested container, create it as a new item with the Container toggle on, then set its **Inside Container** to the parent container. You can also use the [[Van/Manifest/Tutorials/The_Loading_Bay|Loading Bay]] to move an existing container inside another.

---

## Browsing Container Contents

Tap any container row in the zone view to open its detail screen. Here you'll see:

- The container's name, total stack weight, and total value
- Any notes you've added
- **Contents** grouped by category, with containers listed first in their own disclosure group

Tap any sub-container row to drill down further. Use the back button to navigate back up the hierarchy.

The **⋯** menu on the container detail toolbar gives access to Edit and Move options.

---

## Generating a QR Label

Every container gets a unique QR code tied to its persistent UUID. This code survives renaming, moving, or editing the container — the same label always opens the same container regardless of what else changes.

To generate the label:

1. Open the container's detail view.
2. Tap **QR Code** in the toolbar (the `qrcode` icon).
3. The **X-Ray Vision** sheet opens showing the QR code on a white card alongside the container's name and UUID.

Tap **Print or Share QR Code** to open the iOS share sheet. From here you can:
- Send to a **Bluetooth label printer** (e.g. a Brother QL or similar AirPrint-compatible printer)
- **Save as image** to your Photos library and print later
- **AirDrop** it to another device
- Export as a **PDF** via Files

The QR image is a high-resolution PNG suitable for printing at label sizes from 25mm × 25mm upwards. Smaller labels still scan reliably at close range; larger labels scan from greater distances.

---

## Scanning a QR Label

The scanner can be opened from two places:

- The **camera viewfinder icon** in the Manifest home screen toolbar (top left)
- By scanning, the app navigates to the container from anywhere

Point your phone's camera at the printed label. The app recognises the `vlb-container:` prefix, validates the UUID, and navigates immediately to that container's detail view.

**Haptic feedback** confirms a successful scan.

If the scanned code doesn't match any container in your manifest (for example, a label from a container you've since deleted), an alert appears: "Container Not Found — The scanned QR code does not match any item in your manifest."

> The QR scanner requires a device that supports `DataScannerViewController` (iPhone XS and later running iOS 16+). On unsupported devices, the scanner icon does not appear.

---

## Moving Containers

Containers can be moved between zones, or from a zone root into another container (and vice versa), using the **Move** option.

Long-press or tap the **⋯** context menu on any container row and choose **Move Container**. This opens the [[Van/Manifest/Tutorials/The_Loading_Bay|Loading Bay]] pre-filtered for that container. Select the destination zone and optionally a destination container, then confirm.

When a container moves, all its contents move with it — their zone and parent relationships update recursively.

---

## Deleting a Container

Long-press a container row and choose **Delete Container** from the context menu. This deletes the container and all items inside it. The app does not prompt for confirmation before deleting from the context menu, so take care.

Alternatively, delete from the item editor by tapping **Cancel** and then... no — deletion is only available from the context menu or swipe in the zone list. There is no Delete button in the editor itself.

---

## Common Questions

**Can I turn an existing item into a container without deleting it?**
Yes. Open the item editor and switch on **This is a Container**. The item is converted in place — it keeps its existing weight, category, and all other properties.

**Can I turn a container back into a regular item?**
Yes, by switching the toggle off — but only if the container is currently empty. If it has items inside, the toggle is still available, but the `isKit` computed property will remain true as long as contained items exist. Move or delete the contents first.

**The label printed but the scanner doesn't recognise it.**
Make sure the label printed cleanly — crumpled, smeared, or very small labels can fail to scan. Try printing at a larger size or on a different printer. For troubleshooting, see [[My_Scanner_Isnt_Recognising_the_QR_Code|My scanner isn't recognising the QR code]].

**I renamed the container — do I need to reprint the label?**
No. The QR code is based on the container's internal UUID, which never changes. The label always opens the correct container regardless of what you rename it to.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
- [[Van/Manifest/Tutorials/Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]
- [[Van/Manifest/Tutorials/The_Loading_Bay|The Loading Bay]]
