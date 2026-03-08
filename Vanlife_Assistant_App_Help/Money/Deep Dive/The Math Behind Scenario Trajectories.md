---
title: "The Math Behind Scenario Trajectories"
aliases:
  - "scenario math"
  - "how is it calculated"
  - "trajectory calculation"
category: "Money"
type: "Deep Dive"
tags: [help, vanlife-assistant, money, deep-dive, spend, spent, transactions, budget, remaining, vendor, category, scenario, what-if, forecast, runway, the, math, behind, trajectories]
last_updated: "2026-02-21"
---

# 🔮 The Math Behind Scenario Trajectories

When you look at the [[The Money Dashboard - Your Financial GPS|10-Year Forecast]], you aren't just looking at a simple "Total divided by Spend" calculation. Life on the road is dynamic—prices go up, savings accounts earn interest, and your travel habits shift.

To give you a trajectory you can actually bank on, the app uses a custom-built **Runway Engine** that simulates your financial life month-by-month for up to 30 years into the future. Here is how the magic happens.

---

## 🕒 The Monthly Simulation
Unlike basic calculators, our engine doesn't just do one big sum. It starts at the current month and runs a high-speed simulation, calculating your exact balance at the end of every single month. 

For every month in the simulation, it performs four major steps:
1. **Applies Interest:** It calculates how much interest your current savings have earned based on your [[Managing Accounts|Account Settings]].
2. **Applies Inflation:** It calculates the "real-world cost" of your lifestyle for that specific month.
3. **Injects Events:** It checks if you have any active [[How to build your first What-If Scenario|What Ifs]] (like a seasonal job or a van upgrade) occurring in that specific window.
4. **Calculates the Delta:** It adds your income, subtracts your expenses, and finds your new "Starting Balance" for the next month.

---

## 📈 Compounding Inflation & Interest
The engine recognizes that a dollar today won't buy the same amount of diesel in five years.

* **Cumulative Inflation:** We use a compound inflation model. This means that if inflation is at 3%, the engine compounds that rate every month. Your "adjusted expenses" grow cumulatively over time, which is why you might see your runway curve start to "dip" more aggressively in later years.
* **Interest Gains:** Similarly, the engine calculates your interest monthly ($1/12th$ of your annual rate). As your pot grows (or shrinks), the amount of interest you earn scales with it, providing a realistic view of how your "Nest Egg" is actually performing.

---

## ⚡ What-If Event "Physics"
What-If events are more than just static numbers. When you add an event, you can choose how it interacts with the rest of the world’s math:

* **Frequency Logic:** The engine automatically translates weekly or yearly events into the correct monthly "flow" (e.g., it knows to divide a yearly tax bill by 12 or multiply a weekly paycheck by 4.33).
* **Index-Linked Events:** You can toggle whether an event is "Index-Linked." If you have a remote job that gives you a cost-of-living raise every year, the engine will automatically grow that income based on your inflation settings so your forecast stays accurate.

---

## 🛡️ The "Liquid" Safety Filter
The most important part of the math is what it **ignores**. 

The engine is strictly filtered to use your **Runway Pot** (liquid cash), not your total **Net Worth**. It knows that you can't pay for a ferry with your van's solar panels. By excluding the physical value of your assets, the trajectory shows you exactly when you will run out of *spendable* money, giving you a "Hard Floor" for your travel planning.

---

### What's Next?

Now that you know how the math works, let's look at how to handle different currencies and keep all this data safe across your devices.

👉 **[[Currency and Sync]]**
👉 **[[Why isn't my Scenario updating?]]**
