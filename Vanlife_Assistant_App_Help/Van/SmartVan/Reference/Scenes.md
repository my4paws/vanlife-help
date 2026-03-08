---
title: "Scenes"
aliases:
  - "scenes"
  - "homekit scenes"
  - "scene"
  - "action set"
  - "execute scene"
  - "trigger scene"
  - "assign scene to mode"
  - "scene to mode"
  - "mode scene"
  - "reorder scenes"
  - "scene carousel"
  - "run scene"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, scenes, homekit, modes, reference]
last_updated: "2026-02-23"
---

# 🎬 Scenes

## Overview

A Scene is a saved HomeKit preset that sets multiple devices to specific states in a single tap. Scenes are created and managed in the Apple Home app — Vanlife Assistant reads them from HomeKit and surfaces them in the Smart Van dashboard's scenes carousel for instant execution. Scenes can also be **assigned to Van Modes** so that switching a mode automatically triggers the corresponding scene.

---

## The Scenes Carousel

Beneath the CCTV section on the Smart Van dashboard, a horizontal row of capsule-shaped buttons shows all your configured HomeKit scenes. Tap any button to execute the scene immediately.

Each scene button shows:
- An icon based on the scene type — Sleep scenes use a moon, wake-up scenes use a sun, arrival scenes use an arriving figure, departure scenes use a departing figure, user-defined scenes use a star
- The scene's name

Tapping a scene button triggers haptic feedback and a brief bounce animation on the icon to confirm execution. All actions defined in the scene run simultaneously against your HomeKit Home.

---

## Reordering Scenes

The scenes carousel preserves the order you specify. To reorder:

1. Tap the **status indicator pill** in the top-right of the dashboard (e.g. "Live ⋯")
2. Tap **Reorder Scenes**
3. The Reorder Scenes sheet opens in edit mode — drag the three-line handles to rearrange scenes
4. Tap **Save**

The order is saved persistently and persists across restarts.

---

## Assigning a Scene to a Van Mode

When you switch to a Van Mode, Smart Van can automatically trigger a HomeKit scene for you. This is the "one-tap sets the whole van" power move: switch to Sleep Mode and everything dims and locks simultaneously.

### How Assignments Work

Each system mode has a fallback heuristic that looks for a scene with a matching name if no explicit assignment exists:

- **Driving** → looks for a scene named "Driving" or "Drive"; falls back to scenes named "Away" or "Secure"
- **Camped** → looks for scenes with the HomeKit "Arrival" type, or scenes named "Arrive"
- **Sentry** → looks for scenes named "Sentry", "Secure", or "Lock"; falls back to the Departure heuristic
- **Sleep** → looks for scenes named "Sleep" or "Good Night"
- **Stealth** → looks for scenes named "Stealth" or "Dark"
- **Custom modes** → no heuristic fallback; they rely entirely on explicit assignments or [[Van_Brain|Van Brain rules]]

For reliable results, create an explicit assignment.

### Setting an Explicit Assignment

During the setup wizard's Step 4, you can assign a scene to Camped Mode. For all other modes, assign scenes from the Mode Configuration sheet:

1. On the Smart Van dashboard, **long-press** any mode in the carousel to open its Mode Configuration sheet
2. In the **Van Brain Rules** section, you can see if a Van Brain automation is already handling scene triggering
3. To assign a scene directly (the simpler approach), create a Van Brain rule with trigger **"Mode changes to [this mode]"** and action **"Execute Scene → [your scene]"**. See [[Van_Brain|The Van Brain]] for how to build this

Alternatively, the explicit scene-to-mode mapping is stored silently when you make a selection in the setup wizard. You can change this by repeating the assignment flow in Settings or via the Van Brain.

---

## Scenes vs Van Brain Rules

The scenes carousel and mode scene assignments handle static "always do this" scene executions. The [[Van_Brain|Van Brain]] goes further — it lets you add conditions so that a scene only runs in specific circumstances:

- *Execute the "Evening Lights" scene when switching to Camped Mode, but only if it's after Sunset*
- *Execute the "Bright Kitchen" scene when the sliding door opens, but only if Camp Mode is active*

If you find yourself wishing a scene would only run sometimes, that's your cue to use a Van Brain rule instead of (or in addition to) a direct mode-scene assignment.

---

## Related Articles
- [[Van_Modes|Van Modes]]
- [[Van_Brain|The Van Brain]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
