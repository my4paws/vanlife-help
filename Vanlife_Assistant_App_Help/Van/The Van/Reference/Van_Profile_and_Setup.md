---
title: "Setting Up Your Van Profile"
aliases:
  - "van profile"
  - "edit van"
  - "van setup"
  - "van name"
  - "van registration"
  - "van specs"
  - "van dimensions"
  - "van weight"
  - "kerb weight"
  - "GVM"
  - "tank capacity"
  - "fuel capacity"
  - "water capacity"
  - "van icon"
  - "van photo"
  - "vin number"
  - "oil type"
  - "tyre pressure"
  - "fluid types"
  - "van notes"
category: "Van"
type: "Reference"
tags: [help, vanlife-assistant, van, setup, profile, specs, reference]
last_updated: "2026-02-23"
---

# 🚐 Setting Up Your Van Profile

## Why This Matters

Your van profile is the backbone of the entire app. The registration plate appears on the header card. The kerb weight and GVM power the payload calculation. The dimensions define the weight distribution heatmap grid. The fluid specs scroll along the ticker tape so you never have to look them up at a workshop. The more you put in here, the more the app can give back.

---

## Opening the Editor

From the Van tab home screen, tap the **pencil icon** (✏️) in the top-right corner of the van header card. This opens the van editor — a single scrollable screen divided into sections.

---

## Section 1: Van Profile

### Name
The name that appears on the header card, throughout the Manifest, in the Service Logbook, and spoken by the voice assistant. Keep it short and distinctive — "Bertha", "Transit", "Van der Van". This is how the app refers to your vehicle everywhere.

### Photo
Tap the large square photo area (or camera icon) to open the iOS photo picker. Select a portrait or landscape photo — it's cropped to a square and displayed as the hero image on the Van tab header card. Use your best shot of the van from the side or a three-quarter angle.

To remove the photo, tap **Remove** below the photo area. The van returns to using its icon on a gradient background.

### Vehicle Icon
Tap **Vehicle Icon** to expand the icon picker. Choose from a library of custom-drawn vehicle silhouettes — VW campers, Transit-style vans, motorhomes, overlanders, pickups, caravans, motorbikes, and more — plus standard SF Symbols as fallbacks.

The selected icon shows in the collapsed DisclosureGroup header so you can preview it without fully expanding the picker. Tap any icon to select it and the picker collapses automatically.

The icon is used: on the header card when no photo is set, in the Manifest payload header, and in the Fleet Manager.

### Make, Model, and VIN
Enter your vehicle's make (e.g. Ford), model (e.g. Transit Custom), and VIN (Vehicle Identification Number). The VIN is particularly important: it's the unique chassis number that identifies your specific vehicle for parts lookups, warranty claims, and recall notifications. It's stamped on a plate visible through the windscreen on the driver's side, and also in the V5C logbook.

### Registration Plate
The reg plate is shown in a yellow plate-style badge on the header card — just like the real thing. Enter it in full (e.g. AB12 CDE). It accepts spaces and formatting as-is.

### Fuel Type
Select **Diesel** or **Petrol**. This determines the fuel density used in the payload calculation when Weight Distribution is enabled (diesel: 0.84 kg/L, petrol: 0.75 kg/L).

### AdBlue
If your diesel van requires AdBlue (common on Euro 6 engines), toggle this on. "AdBlue Required" then appears in the ticker tape strip as a reminder.

---

## Section 2: Dimensions & Weight

These values feed the weight distribution heatmap and payload calculation. Even rough estimates are more useful than zeros — fill in what you know.

### Length, Width, Height
Enter in metres. These define the floor plan grid for the weight heatmap (a 6m × 2m van generates a 12×4 cell grid where each cell is 0.5m²). Height is used for clearance references in the voice assistant.

### GVM (Gross Vehicle Mass)
The maximum legal total weight of the fully-loaded vehicle — driver, passengers, cargo, and all fluids. Found on the VIN plate (usually driver's door jamb) and in the V5C logbook.

### Kerb Weight
The weight of the empty vehicle with a full fuel tank and all standard fluids but no cargo or passengers. Also in the V5C logbook or your manufacturer's handbook.

These two values together define your payload allowance: **GVM − Kerb Weight = Payload Allowance**. Set them correctly and the payload ring on the Manifest tab becomes a reliable tool. See [[Payload_and_Weight_Management|Payload and Weight Management]].

### Fuel Tank Capacity & Water Tank Capacity
Enter in litres. These are used to calculate the weight of fuel and water when the Weight Distribution toggle is enabled — a full 100L water tank adds 100kg to your payload.

### Weight Distribution (Toggle)
When on, fuel and water tank sliders appear on the Manifest payload header, and fuel/water weight is included in the payload calculation and heatmap. The fuel and water tanks are also painted onto the heatmap at whatever grid position you set (see [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]).

---

## Section 3: Odometer

### Current Odometer Reading
Enter your van's current mileage. The app stores this in kilometres internally and converts to miles if you've set Imperial units. The odometer reading animates on the header card like a mechanical roller — it's satisfying.

If you've already logged fuel or service entries with odometer readings, the app automatically suggests the highest recorded reading and uses it if your van mileage is set to 0. Any time you increase the odometer reading here, the change is automatically saved as a zero-cost waypoint entry in the Service Logbook, so the odometer history is always continuous.

**Warning:** If you enter a value lower than the highest recorded entry, the app will warn you and offer to use the last recorded reading instead. A decreasing odometer usually means an input error.

---

## Section 4: Vehicle Value

### Purchase Price and Purchase Date
What you paid for the van and when. Used to calculate depreciation when viewed alongside the current value.

### Current Value
Your best estimate of what the van is worth now. This updates your net worth calculation in the Money tab if **Include in Net Worth** is toggled on.

### Include in Net Worth
When on, the current value of the van is added to the total net worth calculation in the Money tab.

### Include in Runway
When on, any projected sale of the van is factored into the financial runway calculation.

---

## Section 5: Fluids & Technical

Tap **Fluids & Technical** to open a sub-screen where you enter the fluid specs for your van. These scroll along the **Ticker Tape** — the horizontal info strip below the header card — so they're always visible when you need them.

### Engine Oil
Spec string — e.g. "5W-30 Fully Synthetic". Appears as "OIL: 5W-30" in the ticker.

### Coolant, Brake Fluid, Power Steering, Transmission, Gearbox/Diff
Enter the fluid type or spec. Useful to have correct at a garage, especially in countries where you're sourcing local parts.

### Tire Pressures (Front and Rear)
Enter in PSI. Appears in the ticker tape as "FRONT TYRES: 45 PSI / REAR TYRES: 65 PSI" (or whatever your values are). These are highlighted in blue to stand out from the other specs.

### Wheelbase and Track Width
Used by the **Level Assist** feature to calculate how high you need to raise each wheel for a given tilt. Found in your manufacturer's handbook. Wheelbase is the distance between the front and rear axle centres; track width is the distance between the centre of the left and right tyres on the same axle.

---

## Section 6: Maintenance

A shortcut to the maintenance schedule — shows the number of scheduled tasks and a preview of the next due item. Tap the row to open the full maintenance schedule editor. See [[The_Maintenance_Schedule|The Maintenance Schedule]].

---

## Section 7: Notes

A freeform text area for anything that doesn't have a dedicated field — quirks of the vehicle, workshop contacts, custom modifications, useful notes for when something goes wrong. Grows vertically as you type.

---

## Saving

Tap **Save** in the top-right corner. All data saves immediately and updates the header card, ticker tape, and payload calculation.

---

## The Ticker Tape

The ticker tape is the horizontal scrolling strip of specs that appears on the Van tab home screen, directly below the header card. It shows your van's dimensions, weight, tyre pressures, fuel type, AdBlue status, and all fluid specs — all pulled from the van profile automatically. Scroll it with your finger to see all values. It doesn't require any separate action to update — just save the van profile and it refreshes.

---

## Related Articles
- [[Managing_Your_Fleet|Managing Your Fleet]]
- [[Compliance_and_Legal_Dates|Compliance and Legal Dates]]
- [[The_Maintenance_Schedule|The Maintenance Schedule]]
- [[Payload_and_Weight_Management|Payload and Weight Management]]
- [[Level_Assist|Level Assist]]
