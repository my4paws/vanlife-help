---
title: "Voice Smart Van Commands"
aliases:
  - "voice smart van"
  - "voice homekit"
  - "voice lights"
  - "voice turn on lights"
  - "voice turn off lights"
  - "voice brightness voice"
  - "voice mode switch"
  - "voice driving mode"
  - "voice sleep mode"
  - "voice sentry mode"
  - "voice camped mode"
  - "voice stealth mode"
  - "voice van status"
  - "voice device control"
  - "voice temperature"
  - "voice colour lights"
  - "turn off heater voice"
  - "voice light colour"
  - "voice switch mode"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, smart-van, homekit, reference]
last_updated: "2026-02-23"
---

# 🏠 Voice Smart Van Commands

The Smart Van voice handler gives you hands-free control over your HomeKit devices and van modes. Dim the lights before sleeping, check the temperature, switch modes without touching the dashboard, or get a full van status report.

---

## Switching Van Modes

You can switch to any system or custom mode by name.

### System mode aliases

| What you say | Mode activated |
|---|---|
| *"Driving mode"* | Driving |
| *"We are leaving"* | Driving |
| *"Camp mode"* / *"Camped mode"* | Camped |
| *"Sentry mode"* | Sentry |
| *"Secure the van"* | Sentry |
| *"Sleep mode"* | Sleep |
| *"Good night"* | Sleep |
| *"Stealth mode"* | Stealth |
| *"Go dark"* | Stealth |

### Custom modes

Any custom mode you've created can be activated by its name:
- *"Activate [mode name]"*
- *"Switch to [mode name] mode"*
- *"[Mode name] mode"*

Mode switching triggers the associated HomeKit scene and updates the SmartVan dashboard state just as if you'd tapped the mode carousel.

---

## Controlling Devices

Use the **exact name** of a HomeKit accessory as the app knows it (or its custom name if you've set one). The handler checks your live accessory list when matching — so if a device is called "Kitchen Strip" in HomeKit, say that name.

### Turn on / off

- *"Turn on the kitchen lights"*
- *"Switch on the roof light"*
- *"Turn off the USB sockets"*
- *"Switch off the heater"*

### Brightness

- *"Set the kitchen lights to 50%"*
- *"Dim the bedroom lights to 20"*
- *"Set brightness of the strip light to 80"*

The handler extracts the first number from the phrase and passes it as a brightness percentage (0–100).

### Colour

Supported colour names: **red, blue, green, yellow, orange, purple, white, cyan, indigo**

- *"Make the kitchen lights blue"*
- *"Set colour of the bedroom strip to red"*
- *"Turn it purple"* (if a device was already matched earlier in the phrase)
- *"Change colour to green"*

### Generic lights fallback

If you just say *"turn on the lights"* without specifying a device name, the handler picks the first light it finds in your accessory list. This is useful if you only have one light circuit. If you have multiple lights, always use the name to be specific.

---

## Querying Device Status

### Temperature and humidity

- *"What's the temperature?"*
- *"How hot is it inside?"*
- *"How cold is the van?"*
- *"What's the humidity?"*

Returns the current reading from the named climate sensor, or a general inside-temperature average if no device is specified.

### General device status

- *"Is the roof light on?"*
- *"[Device name]"* — asking just the device name returns its current state

### Van status report

- *"Van status"*
- *"How is the van?"*
- *"Van report"*

Returns the same summary text shown on the Van tab status card: current mode, any security alerts, inside temperature average, and connectivity status.

---

## Tips

**Device name matching is exact**: The handler searches your live HomeKit accessory list for names that appear within your spoken text. A device named "Kitchen Strip Light" is matched when you say "Kitchen Strip" or "Kitchen Strip Light" but not "kitchen lights" unless the accessory is literally named that. If a command isn't working, check the device name in the Smart Van device settings.

**Unreachable devices**: If a device is unreachable at the time of the command, the HomeKit write will still be attempted, but the response may reflect the last-known state rather than the new one.

**Mode safety interlock**: Switching to Driving mode via voice still checks for open sensors. If any doors or windows are open, the mode switch happens anyway (the voice command bypasses the "Ignore & Drive" confirmation alert — it assumes you've acknowledged the situation).

**Multiple devices**: Each command targets one device at a time. There's no group control command — to control multiple devices simultaneously, use a HomeKit scene instead and execute it by name.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[SmartVan_Dashboard|Smart Van Dashboard]]
- [[Voice_Overview|Voice Overview]]
