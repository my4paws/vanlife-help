---
title: "Permissions Explained"
aliases:
  - "permissions"
  - "app permissions"
  - "privacy settings"
  - "why does it need permissions"
  - "enable permissions"
  - "location permission"
  - "notifications permission"
  - "microphone permission"
  - "homekit permission"
  - "icloud permission"
  - "app has no access"
category: "Getting_Started"
type: "Reference"
tags: [help, vanlife-assistant, getting-started, reference, onboarding, setup, permissions, icloud, sync, backup, restore, explained, location, notifications, homekit, microphone, hub, entry-point]
last_updated: "2026-02-21"
---

# Permissions Explained 🔐

Vanlife Assistant is designed to be your ultimate co-pilot. To do things like automatically log your drives, scan documents, or let you add expenses hands-free, the app needs access to certain features on your device.

We believe your data belongs to you. **We do not sell your data, and we do not track you for ads.** All of your data stays securely on your device or in your personal Apple iCloud account. The developer collects no data from you whatsoever.

Here is a plain-English breakdown of every permission the app asks for, why we need it, and what happens if you say "No."

---

## 📍 Location Services
Location is the most heavily used permission in the app, powering our best features. You will be asked to grant **"Always Allow"** or **"While Using the App."**

* **Why we need it:** * **Drive Recorder:** To automatically draw your route and track your elevation on the map while your phone is locked or in your pocket. 👉 *See [[Drive Recorder]]*
    * **Schengen Calculator:** To silently detect when you cross an international border and update your visa countdown automatically. 👉 *See [[Border Crossing Detection]]*
    * **SmartVan Triggers:** To turn on your van's heater when you are 5 miles away from camp.
* **If you deny it:** You will have to manually input your Check-ins, border crossings, and locations for expenses.
* **Privacy Note:** Your location data is kept locally on your device and synced only to your private iCloud. We cannot see where you are.

## 🎙️ Microphone & Speech Recognition
* **Why we need it:** To power the Voice Assistant. This allows you to say *"Log 50 Euros for diesel"* or *"Where did I stow the jump leads?"* while your hands are firmly on the steering wheel.
* **If you deny it:** The microphone icon will be disabled, and you will need to type your expenses, whiteboard items, and manifest queries manually.
* **Privacy Note:** Audio is processed quickly to understand your command and is never permanently recorded or sent to third-party servers. The Vanlife assistant works entirely offline, utilising machine learning and Apple Intelligence to deliver Ai-level responses to complex questions. 
  

## 📷 Camera
* **Why we need it:** * **Manifest:** To quickly scan QR codes printed on your storage bins so you can see what is inside without opening them. 👉 *See [[How to print and scan QR labels for Containers]]*
    * **Glovebox:** To use the built-in document scanner for your passport, insurance, and vehicle registration. 👉 *See [[Using the Document Scanner]]*
    * **Vehicle Profile:** To snap a photo of your beautiful rig for the dashboard!
* **If you deny it:** You won't be able to scan QR labels or use the automatic document cropper (though you can still upload existing PDFs).

## 🏡 HomeKit (Local Network)
* **Why we need it:** To talk to the smart devices in your van. Vanlife Assistant is the only app designed for mobile living. If you have HomeKit-enabled temperature sensors, smart plugs, or battery monitors, this permission allows Vanlife Assistant to read those levels and display them on your dashboard. You can build complex automations. The app knows where your new home is for the night and treats it just like it was a bricks and mortar home. Think.. "turn off the lights when I leave the van and walk to the shops"
* **If you deny it:** The SmartVan module will not be able to display your live vehicle data. 👉 *See [[Connecting HomeKit Accessories]]*

## 🔔 Notifications
* **Why we need it:** To keep you out of trouble! We use notifications to alert you if:
    * You are nearing your Schengen visa limit. When can you return to the Schengen zone? The app will tell you that too. 
    * A scheduled maintenance task (like changing the oil) is due.
    * The temperature inside the van drops below freezing (via SmartVan).
* **If you deny it:** You will have to manually open the app to check your visa limits, maintenance schedules, and weather warnings. 👉 *See [[Customising Notification Preferences]]*

## 🖼️ Photos
* **Why we need it:** To attach receipts to your financial transactions or add beautiful sunset photos to your Trip Check-ins.
* **If you deny it:** You can still use the app, but you won't be able to attach visual memories to your logs.

---

### How to change your permissions later
Did you deny a permission during Onboarding and change your mind? No problem.
1. Open your iPhone's main **Settings** app.
2. Scroll down until you find **Vanlife Assistant**.
3. Toggle the permissions on or off as needed.

👉 *Still having trouble? Check out our [[Troubleshooting Overview]].*