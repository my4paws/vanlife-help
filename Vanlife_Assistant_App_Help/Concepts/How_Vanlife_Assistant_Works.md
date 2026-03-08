---
title: "How Vanlife Assistant Works"
aliases:
  - "app overview"
  - "how the app works"
  - "app philosophy"
  - "system overview"
  - "what does the app do"
  - "big picture"
  - "app structure"
  - "vanlife assistant explained"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, overview, philosophy, reference]
last_updated: "2026-03-08"
---

# 🗺️ How Vanlife Assistant Works

Vanlife Assistant is not a single tool. It's a collection of connected systems that together function as an operating system for life on the road.

This article explains the big picture: what each system does, how they connect, and why the app is built this way.

---

## The Core Idea

Most apps do one thing. Vanlife Assistant does many things, and they talk to each other.

Your fuel spend knows about your money. Your van weight knows about your crew. Your travel history knows about your documents. When you record a check-in, the weather is captured automatically. When you run the pre-flight checklist, it knows whether you have pets on board. When the Voice Assistant answers "where's the first aid kit?" it's looking at your live inventory.

This interconnection is intentional. Vanlife is not a collection of separate activities — it's a life — and the app is designed to reflect that.

---

## The Four Tabs

The app is organised into four main tabs, each representing a major system:

**Money** — your full financial picture: daily spending, accounts, budgets, scenarios, and long-term runway forecasting.

**Van** — everything about your vehicle: the fleet profile, manifest inventory, Glovebox documents, maintenance schedule, Drive Recorder, and SmartVan home automation.

**Travel** — your journey history: trips and expeditions, check-ins, drives, weather, borders, Schengen tracking, and the Spots discovery map and trip planner.

**Assistant** — the voice-driven AI interface that can query, record, and navigate across all of the above using natural language.

One more element floats across all tabs: the **Whiteboard**, pulled up with a swipe from anywhere in the app. It handles your shopping lists, to-do tasks, and location reminders — the things you jot down mid-drive without ever opening a specific section.

---

## The Systems and How They Connect

### 📍 Trips & Travel History

The Trips system is the spine of the app. Every journey is structured as an **expedition** — a named trip with a start date, cover photo, and tags. Inside each expedition live three types of record:

- **Drives** — GPS-recorded routes from the Drive Recorder
- **Check-ins** — places you stopped, slept, or visited
- **Memories** — the photos, journal entries, and weather snapshots attached to those places

Everything in the Trips system feeds everywhere else. Your check-ins contribute to your Schengen counter, your country map, your All-Time Records, and your spending history. Your drives build the elevation charts and route maps that appear in Trip Detail View.

→ See [[The Trip Structure Explained]]

### 💰 Money

The Money system records every transaction you make on the road. At its heart is the **Ledger** — a running log of expenses, income, and transfers across one or more accounts. Transactions are organised by **category** and grouped into higher-level **category groups** (Food, Transport, Accommodation, etc.). Each transaction can also carry a **vendor** (the shop or business you paid), a trip assignment, and a location.

On top of the Ledger sit three layers of intelligence:

- **Budgets** (called Scenarios) — monthly spending plans you define per category
- **Runway** — how long your current savings will last at your current burn rate, accounting for inflation and interest
- **What-If Events** — one-off future events (a big repair, a new van purchase, a work contract) layered over the runway projection

Money is aware of your van: fuel costs feed directly from your fuel log, and vehicle expenses are flagged separately so you can see your true living costs vs your van's running costs.

→ See [[The Ledger — How Spending Is Recorded]]

### 🚐 Van

The Van system holds your vehicle's complete digital life:

- **Fleet Manager** — one or more vans, each with full specs, tyre pressures, fluid types, and service intervals
- **Manifest** — your full inventory: zones, containers, and items with weights, values, and expiry dates
- **Glovebox** — scanned documents (insurance, MOT, passport, warranty cards), organised by van
- **Maintenance Schedule** — time- and distance-based service reminders
- **SmartVan** — HomeKit-based home automation for your van's lights, switches, sensors, and cameras
- **Drive Recorder & Drive History** — GPS route recording with elevation tracking and segment replay
- **Level Assist** — your iPhone's gyroscope turned into a levelling tool

The Van tab's title in the tab bar dynamically updates to show your currently active vehicle's name.

→ See [[The Manifest System — How Gear Is Organised]]

### 🔍 Spots

The Spots system is a high-performance, offline location database. It doesn't use iCloud or any external server — it runs on a local SQLite engine built for speed, even with hundreds of thousands of locations loaded.

You bring your own datasets. Spots are organised into **packs** — named collections of locations. One pack called "My Places" is always present for spots you add yourself. Additional packs can be imported as CSV files from any source (third-party datasets, community lists, your own exports). Every spot can be scouted before your arrive — checking reviews, services, and vehicle restrictions — and turned into a planned route or promoted directly into your trip timeline as a check-in.

The Spots Vault is accessed from inside the **Travel** tab alongside the Trips dashboard.

→ See [[The Spots Vault]]

### 🏠 SmartVan

SmartVan brings your van's HomeKit accessories — lights, switches, sensors, cameras, locks — into a single control surface designed for van life. It lives within the Van tab but connects outward to the rest of the app: Van Modes can trigger automations via the Van Brain rules engine, and the weather card on the Trips dashboard reflects your current location's conditions in real time.

→ See [[SmartVan Index]]

### 🎙️ Voice Assistant

The Voice Assistant is a natural language interface that can read from and write to all of the above systems. It understands follow-up questions, date ranges, comparisons, and context carried across a conversation. It can log a spend, find a document, locate an item in the manifest, check your Schengen status, or set a whiteboard reminder — without touching the screen.

→ See [[Voice Assistant Index]]

---

## Two Different Databases

Understanding where your data lives explains a lot about how the app behaves.

**SwiftData + iCloud** is where most of your personal data lives: your trips, check-ins, transactions, van profiles, documents, and manifest items. This is synced privately across your Apple devices via CloudKit. It works offline and syncs whenever you have a connection.

**SQLite (local only)** is where the Spots Vault lives. The location database never syncs to iCloud — it stays on device for performance, privacy, and because large dataset files are not practical to cloud-sync. If you move to a new phone, you import your packs again from file.

→ See [[CloudKit Sync Behaviour]] and [[Offline-First Design]]

---

## Why It's Built This Way

### Offline first

Vanlife takes you places with no signal. The app is designed to work fully offline — recording GPS, logging expenses, auditing inventory, and running automations without needing any internet connection. Data accumulates on device and syncs when you reconnect.

### No account, no server

There are no Vanlife Assistant user accounts. There are no external servers holding your data. Everything lives on your device and, if you choose to enable it, in your private iCloud container. The app cannot access your data; only you can.

### Van-aware defaults

The app knows which van you're currently using. Manifest items belong to zones on your active van. Fuel records belong to your active van. Documents are filed per van. If you have multiple vehicles, switching the active van changes which inventory, maintenance schedule, and documents are shown throughout the app.

---

## Where to Go Next

If this is your first time using the app, the best place to start is the onboarding guide — it walks you through setting up your van profile, connecting your accounts, and creating your first expedition.

- [[Onboarding Guide]] — *First-time setup, step by step*
- [[The Trip Structure Explained]] — *How expeditions, drives, and check-ins fit together*
- [[Check-ins — The Engine of the Travel Journal]] — *Why check-ins are central to the whole app*
- [[Spots vs Check-ins — What's the Difference?]] — *Clearing up the most common point of confusion*
- [[The Manifest System — How Gear Is Organised]] — *How inventory tracking works*
