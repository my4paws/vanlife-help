---
title: "Light Controls"
aliases:
  - "light controls"
  - "light control sheet"
  - "brightness"
  - "set brightness"
  - "light colour"
  - "light color"
  - "colour picker"
  - "color picker"
  - "colour wheel"
  - "color wheel"
  - "preset colours"
  - "dim lights"
  - "turn off lights"
  - "rgb light"
  - "smart bulb"
  - "smart light"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, lights, brightness, colour, reference]
last_updated: "2026-02-23"
---

# 💡 Light Controls

## Overview

The Light Controls sheet gives you fine-grained control over any smart light — dimming, colour, and power — all in one place. It opens when you **long-press** any light tile in the rooms grid. For lights that don't support colour (dimmable-only bulbs), only the brightness slider is shown. For colour-capable lights (RGB or colour-temperature bulbs), the full colour picker appears above the slider.

The dashboard tile and the Light Controls sheet stay in sync — adjusting brightness in the sheet immediately updates the tile's percentage display.

---

## Opening Light Controls

Long-press any light tile in the dashboard rooms grid. A medium haptic confirms the gesture and the sheet rises from the bottom of the screen. It opens at medium height by default and can be pulled up to full screen.

The sheet title shows the light's name (custom name if set, otherwise the HomeKit name). A gear icon in the top-right opens [[Device_Settings|Device Settings]] without closing the controls.

---

## Colour Section

*This section only appears for lights that support colour (HomeKit Hue characteristic).*

### Preset Colour Row
A horizontal scrolling strip of seven colour circles: White, Yellow, Orange, Red, Purple, Blue, Green. Tap any circle to apply that colour instantly — both the preview ring and the light itself update. The currently active colour shows a highlighted ring border.

At the left end of the row is a **spectrum gradient button** — a circle filled with an angular rainbow gradient. Tapping it opens the Custom Colour Wheel.

### Custom Colour Wheel
The colour wheel expands to fill the section area, showing a full angular colour spectrum rendered as a circle. To use it:

1. **Drag** anywhere on the wheel's circumference — a preview thumb follows your finger showing the live hue, but the light itself doesn't change during the drag (this prevents strobing/flickering while you're choosing)
2. **Lift your finger** — the colour is committed and sent to the light
3. **Tap the centre circle** (which shows your current preview colour) — commits the colour and collapses the wheel back to the preset row

The centre circle shows the colour you're previewing so you can see what you're about to commit before lifting your finger. The surrounding wheel ring shows the full spectrum for reference.

Tap **Close** in the top-right (visible when the wheel is open) to collapse it without changing colour.

### Colour Synchronisation
If another device (e.g. the Apple Home app, a Siri command, or a HomeKit scene) changes the light's colour while the sheet is open, the preset row and wheel update to reflect the new state — but only if you haven't interacted with the picker in the last 2 seconds. This prevents your active selection from being overwritten while you're mid-choice.

---

## Brightness Slider

A custom gradient slider fills the width of the sheet. The left edge shows a small sun icon (dim), the right shows a larger sun (bright). The current brightness percentage is shown in the top-right.

**To adjust:** drag left or right along the slider. The slider colour reflects the light's current colour (so a warm amber light shows an amber-tinted slider). The actual brightness is sent to the HomeKit light only when you **lift your finger** (on commit), not continuously during drag — this prevents overwhelming the HomeKit hub with rapid writes.

If you drag to 0%, the light remains on (since turning it off is the power button's job). The minimum useful brightness is 1%.

When the sheet opens, the slider loads the light's current brightness. If you turn a light on from the tile and it was previously at 0%, it defaults to 100% to ensure you get usable light.

---

## Power Button

At the bottom of the sheet, a large full-width button shows the current power state:

- **"Turn On"** (green background) — when the light is currently off
- **"Turn Off"** (red background, destructive style) — when the light is currently on

Tapping **Turn Off** powers down the light and dismisses the sheet automatically (since there's nothing left to control). Tapping **Turn On** powers the light on at the current brightness and colour settings.

The power state is read from HomeKit when the sheet opens, so it always reflects the actual current state.

---

## Related Articles
- [[Rooms_and_Devices|Rooms and Devices]]
- [[Device_Settings|Device Settings]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
