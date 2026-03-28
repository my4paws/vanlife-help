---


---

# 🛠️ Why isn't my Scenario updating?

The Money dashboard relies on a few pieces being in place before the engine can run. If a card is showing "Needs Data," is blank, or just doesn't seem to be responding to changes you've made, work through the checks below one by one.

---

## 1. Do you have at least one Account set up?

The Runway Engine needs a starting pot of liquid cash to simulate from. If you have no Accounts, it has nothing to calculate.

**Fix:** Go to the **Accounts** tab and tap **+** to add at least one account with a current balance. Even adding a single account with your approximate balance is enough to get the charts working.

---

## 2. Are your Accounts actually included in the Runway?

This one is easy to miss. Every account has two independent toggles — **Include in Net Worth** and **Include in Forecast (Runway)**. It's entirely possible to have accounts showing up in your Net Worth number whilst _none_ of them are contributing to the Runway chart.

**Fix:** Go to each account, tap to edit it, and make sure **Include in Forecast (Runway)** is switched **on** for at least one account that holds real, spendable cash.

> 💡 This is by design — you might own a property or a locked pension that has genuine value but can't be spent on diesel. Those should be in Net Worth but _not_ in the Runway.

---

## 3. Do you have at least a few days of Ledger entries?

The baseline of your Runway chart isn't your Scenario budget — it's your **actual, real-world spending** pulled from the Ledger, averaged over the last 12 months (or however long you've been tracking). With no entries, there is no burn rate, and with no burn rate, there is no trajectory to draw.

**Fix:** Log a few real expenses. Even a handful of entries from the last week or two is enough for the engine to produce a first estimate. The more history you have, the more accurate the projection becomes.

> ✨ **Why does it use real spending instead of my budget?** Because the baseline "Actual" line on the chart should reflect _reality_. Your Scenarios (Optimistic, Pessimistic etc.) are then plotted alongside it so you can compare what your real trajectory looks like versus your planned ones.

---

## 4. Is the Plan vs Reality card showing "Needs more data"?

This card has a stricter requirement than the others. It needs **both** an "Optimistic" and/or a "Pessimistic" named scenario to exist before it can calculate a variance to compare against.

**Fix:** On the Money dashboard, scroll down to the Scenarios list and make sure you have at least one scenario with **"Optimistic"** or **"Pessimistic"** somewhere in its name (the app looks for these words specifically). If you only have a single custom-named plan, the card won't know what to benchmark against.

---

## 5. Is your Active Plan set?

The **Active Plan** flag is what connects a Scenario to voice commands and the Plan vs Reality tracking. If no Scenario is marked Active, those features will have nothing to work from.

**Fix:** Scroll to the Scenarios list on the Money dashboard. Find the scenario you want to use as your budget, tap the **edit**(pencil) icon, and make sure the **"Set as Active Budget"** toggle is switched on.

---

## 6. Did you just make a change and nothing happened yet?

The engine has a short deliberate delay of about a quarter of a second built in. This is by design — it prevents the app from burning through CPU when you make lots of changes in quick succession (for example, during a CSV import or when editing many category budgets at once).

**Fix:** Simply wait a moment after saving your changes. The charts will update on their own without needing a manual refresh.

---

## 7. Have you just imported a CSV with a lot of data?

After a large CSV import, the engine can take a few seconds to crunch through all the new entries. The Burn Rate chart will show "Loading data..." while this is happening.

**Fix:** Leave the dashboard open for a few seconds and it will update automatically once processing is complete.

---

### Still stuck?

If you've worked through all of the above and things still don't look right, the most common remaining culprit is a **balance mismatch** — your account balance in the app is out of sync with your real bank balance, making the starting pot for the simulation incorrect.

👉 _See [[Managing Accounts]] — the Quick Balance Calculator section — for how to instantly correct a balance without needing to log a fake transaction._