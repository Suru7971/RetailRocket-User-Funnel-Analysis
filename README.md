# 🛒 RetailRocket User Funnel Analytics Dashboard
### End-to-End Funnel Analytics Project | SQL · Power BI · DAX · Business Intelligence

---

> **Analyzing 2.7 million e-commerce events to uncover funnel drop-off points, cart abandonment patterns, and conversion optimization opportunities through Power BI.**

---

## 🎯 Project Overview

This project analyzes **2.7 million e-commerce events** from the [RetailRocket Recommender System Dataset](https://www.kaggle.com/datasets/retailrocket/ecommerce-dataset) — a real-world behavioral dataset covering 1.4M+ unique visitors across the online shopping journey.

The goal was to build a production-style funnel analytics dashboard that answers real business questions:

- Where are users dropping off in the shopping funnel?
- What percentage of cart users actually complete a purchase?
- When is user activity at its peak, and what does that mean for promotions?
- Which products drive the most purchases?

---

## 🚀 Why This Project Matters

This project demonstrates my ability to:

* Analyze large-scale behavioral datasets (2.7M+ events)
* Build KPI-driven Power BI dashboards
* Write SQL queries for funnel and conversion analysis
* Develop DAX measures for business metrics
* Identify customer drop-off points and conversion bottlenecks
* Translate user behavior into actionable business recommendations

This project covers the complete analytics lifecycle — from data extraction and transformation to dashboard development and business decision-making.

## 📌 Executive Summary

Using 2.7 million e-commerce events from the RetailRocket dataset, this analysis evaluated user behavior across the online shopping funnel.

The dashboard identified significant drop-offs between product views, cart additions, and purchases. While over 1.4 million users viewed products, only 2.69% added items to their cart and just 0.83% completed a purchase.

The analysis revealed a cart abandonment rate of 68.9%, highlighting a major conversion opportunity. Additional insights showed peak user activity during evening hours and identified top-performing products driving purchases.

These findings provide actionable recommendations to improve conversion rates, reduce cart abandonment, and increase overall revenue.

## 📊 Project Highlights

- 🛒 2.7M+ E-commerce Events Analyzed
- 👥 1.4M+ Unique Visitors Evaluated
- 📉 68.9% Cart Abandonment Identified
- 📈 Conversion Funnel Analysis Dashboard
- ⚡ 19 SQL Business Queries
- 📊 Power BI + DAX Analytics Solution

**Business Question:**
> "Where are we losing users in the shopping funnel — and what can we do about it?"

**Funnel Summary:**
```
View Product  →  Add to Cart  →  Purchase
  1,404K            38K           12K
   100%            2.69%         0.83%
```

**Key Finding: 68.9% of cart users abandon before completing purchase**

> ⚠️ *Note: this dataset covers May 3 – September 18, 2015 (~4.5 months of activity).*

---

## 📸 Dashboard Preview

![Dashboard](Dashboard_Screenshot.png)

---

## 📊 Dashboard File

> ⚠️ The Power BI dashboard file (.pbix) is 104MB and exceeds GitHub's 100MB file size limit.
>
> **👉 Download Dashboard Here (Google Drive):**
> [RetailRocket_Dashboard.pbix](https://drive.google.com/file/d/1MQ5THmPKS5Q_uY2_cF_0sqj3XFXkC2FG/view?usp=sharing)
>
> *Click the link above → Google Drive opens → click Download button (top right)*

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Power BI Desktop** | Dashboard building and visualization |
| **DAX** | 9 custom measures for KPIs and conversion metrics |
| **SQL (MySQL)** | 19 queries for funnel and behavioral analysis |
| **Power Query** | Timestamp conversion and data cleaning |

---

## 📁 Project Structure

```
RetailRocket-User-Funnel-Analysis/
 ┣ 📄 RetailRocket_Funnel_Analysis.sql   ← 19 SQL queries
 ┣ 🖼  Dashboard_Screenshot.png           ← Dashboard preview
 ┗ 📄 README.md                          ← This file

📊 Dashboard .pbix → Google Drive (link above)
📦 Dataset        → Kaggle (link above)
```

---

## 📈 Dashboard Features

| Visual | Type | What it shows |
|--------|------|---------------|
| Total Visitors | KPI Card | 1M — total unique users who visited |
| Cart Users | KPI Card | 38K — users who added at least one product to cart |
| Transaction Users | KPI Card | 12K — users who completed a purchase |
| View to Cart % | KPI Card | 2.69% — only 2.69% of visitors add to cart |
| Total Events | KPI Card | 3M — total interactions in the dataset |
| Cart Abandonment % | KPI Card | 68.9% — 7 in 10 cart users never purchase |
| User Conversion Funnel | Funnel Chart | View 1404K → Cart 38K → Transaction 12K |
| Monthly Visitor Trend | Line Chart | May to September 2015, peak in July (0.38M) |
| Top Purchased Product IDs | Bar Chart | Top 10 items by purchase count (Item 461686 leads) |
| Activity by Hour | Bar Chart | Peaks between hours 18-23 (6 PM to 10 PM) |
| Key Insights | Text Panel | 8 data-driven business findings |

**Interactive filters:** Time of Day slicer · Month Name slicer — all visuals update together.

---

## 🔍 Key Insights

These findings were derived from the dashboard analysis — not visible from the raw data alone:

1. **97% Drop-off at the View → Cart Stage**

Only 2.69% of visitors who viewed a product went on to add it to cart, indicating significant friction or lack of motivation at the very top of the funnel.

2. **Cart Abandonment Rate of 68.9%**

Nearly 7 in 10 users who added a product to cart never completed a purchase — the single largest conversion opportunity identified in this analysis.

3. **Strong Checkout Intent Once Reached**

Cart-to-purchase conversion stands at 31.58%, suggesting that once a user reaches checkout, intent to buy is relatively strong — the real problem is earlier in the funnel.

4. **Clear Evening Activity Peak**

Visitor activity consistently peaks between 6 PM and 10 PM, with July recording the highest monthly traffic (0.38M visitors) before a sharp drop to 0.17M in September.

---

## 🎯 Skills Demonstrated

* Funnel Analytics
* Conversion Rate Analysis
* Cart Abandonment Analysis
* Product Analytics
* User Behavior Analysis
* Business Intelligence
* KPI Development
* SQL Data Analysis
* DAX Calculations
* Data Visualization
* Dashboard Storytelling
* Stakeholder Reporting
* Business Recommendation Development

---

## 💡 Business Recommendations

**1. Fix the View → Cart Drop-off (97% drop)**
- Improve product page quality — better images, clearer descriptions, reviews
- Add urgency cues — "Only 3 left in stock"
- Expected impact: Doubling view-to-cart from 2.69% to 5% = 2x more revenue

**2. Reduce Cart Abandonment (68.9%)**
- Send cart abandonment email within 1 hour
- Add push notification reminder for mobile users
- Offer 5-10% discount for users who abandon cart
- Expected recovery: 10-15% of 26K abandoned = 2,600 to 3,900 additional purchases

**3. Maximize Evening Promotions**
- Schedule flash sales between 6 PM and 10 PM
- Run paid ads during peak hours to maximize ROI

**4. Investigate September Drop**
- Activity dropped from 0.31M to 0.17M
- Check marketing budget, technical issues or seasonal pattern

**5. Double Down on Top Products**
- Item 461686 and Item 119736 lead in purchases
- Increase visibility and inventory for top 10 items

---

## 📐 DAX Measures

```dax
-- Core funnel measures
Total Visitors =
    DISTINCTCOUNT(events[visitorid])

View Users =
    CALCULATE(DISTINCTCOUNT(events[visitorid]),
    events[event] = "view")

Cart Users =
    CALCULATE(DISTINCTCOUNT(events[visitorid]),
    events[event] = "addtocart")

Transaction Users =
    CALCULATE(DISTINCTCOUNT(events[visitorid]),
    events[event] = "transaction")

-- Conversion metrics
View to Cart % =
    DIVIDE([Cart Users], [View Users], 0)

Cart to Purchase % =
    DIVIDE([Transaction Users], [Cart Users], 0)

Overall Conversion % =
    DIVIDE([Transaction Users], [View Users], 0)

-- Key business insight
Cart Abandonment % =
VAR CartUsers =
    CALCULATE(DISTINCTCOUNT(events[visitorid]),
    events[event] = "addtocart")
VAR Buyers =
    CALCULATE(DISTINCTCOUNT(events[visitorid]),
    events[event] = "transaction")
RETURN DIVIDE(CartUsers - Buyers, CartUsers)

-- Scale metric
Total Events = COUNT(events[event])
```

---

## 🗄️ SQL Concepts Used

- `JOIN`-free single-table aggregation across views, carts, and transactions
- `GROUP BY` with aggregate functions (`COUNT`, `DISTINCT`)
- `HAVING` clauses for filtered aggregations (cart abandonment logic)
- `CASE WHEN` for conditional conversion-rate calculations
- Subqueries for multi-step aggregation (abandonment count)
- `RANK()` window function for visitor activity ranking
- `FROM_UNIXTIME()` for timestamp conversion and time-based grouping
- Top-N filtering for product and visitor analysis

---

## 🗄️ SQL Queries (19 Queries)

```sql
/* 1. DATA PREVIEW */
SELECT * FROM events LIMIT 10;

/* 2. TOTAL VISITORS */
SELECT COUNT(DISTINCT visitorid) AS total_visitors
FROM events;

/* 3. VIEW USERS */
SELECT COUNT(DISTINCT visitorid) AS view_users
FROM events WHERE event = 'view';

/* 4. CART USERS */
SELECT COUNT(DISTINCT visitorid) AS cart_users
FROM events WHERE event = 'addtocart';

/* 5. TRANSACTION USERS */
SELECT COUNT(DISTINCT visitorid) AS transaction_users
FROM events WHERE event = 'transaction';

/* 6. VIEW TO CART CONVERSION RATE */
SELECT ROUND(
    COUNT(DISTINCT CASE WHEN event = 'addtocart'
        THEN visitorid END) * 100.0 /
    COUNT(DISTINCT CASE WHEN event = 'view'
        THEN visitorid END), 2
) AS view_to_cart_pct
FROM events;

/* 7. CART TO PURCHASE CONVERSION RATE */
SELECT ROUND(
    COUNT(DISTINCT CASE WHEN event = 'transaction'
        THEN visitorid END) * 100.0 /
    COUNT(DISTINCT CASE WHEN event = 'addtocart'
        THEN visitorid END), 2
) AS cart_to_purchase_pct
FROM events;

/* 8. OVERALL CONVERSION RATE */
SELECT ROUND(
    COUNT(DISTINCT CASE WHEN event = 'transaction'
        THEN visitorid END) * 100.0 /
    COUNT(DISTINCT CASE WHEN event = 'view'
        THEN visitorid END), 2
) AS overall_conversion_pct
FROM events;

/* 9. CART ABANDONMENT USERS */
SELECT visitorid FROM events
GROUP BY visitorid
HAVING SUM(event = 'addtocart') > 0
AND SUM(event = 'transaction') = 0;

/* 10. TOP 10 PURCHASED PRODUCTS */
SELECT itemid, COUNT(*) AS purchase_count
FROM events WHERE event = 'transaction'
GROUP BY itemid
ORDER BY purchase_count DESC LIMIT 10;

/* 11. MONTHLY VISITOR TREND */
SELECT MONTH(FROM_UNIXTIME(timestamp/1000)) AS month_no,
    COUNT(DISTINCT visitorid) AS visitors
FROM events GROUP BY month_no ORDER BY month_no;

/* 12. USER ACTIVITY BY HOUR */
SELECT HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS total_events
FROM events GROUP BY hour_of_day ORDER BY hour_of_day;

/* 13. EVENT DISTRIBUTION */
SELECT event, COUNT(*) AS total_events
FROM events GROUP BY event;

/* 14. TOP ACTIVE VISITORS */
SELECT visitorid, COUNT(*) AS total_events
FROM events GROUP BY visitorid
ORDER BY total_events DESC LIMIT 10;

/* 15. TRANSACTIONS BY HOUR */
SELECT HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS transactions
FROM events WHERE event = 'transaction'
GROUP BY hour_of_day ORDER BY hour_of_day;

/* 16. CART EVENTS BY HOUR */
SELECT HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS cart_events
FROM events WHERE event = 'addtocart'
GROUP BY hour_of_day ORDER BY hour_of_day;

/* 17. VIEW EVENTS BY HOUR */
SELECT HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS view_events
FROM events WHERE event = 'view'
GROUP BY hour_of_day ORDER BY hour_of_day;

/* 18. VISITOR ACTIVITY RANKING — Window Function */
SELECT visitorid,
    COUNT(*) AS total_events,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS activity_rank
FROM events GROUP BY visitorid LIMIT 10;

/* 19. CART ABANDONMENT COUNT — Subquery */
SELECT COUNT(*) AS abandoned_users
FROM (
    SELECT visitorid FROM events
    GROUP BY visitorid
    HAVING SUM(event = 'addtocart') > 0
    AND SUM(event = 'transaction') = 0
) AS abandoned_cart_users;
```

> Full SQL file available in `RetailRocket_Funnel_Analysis.sql`

---

## 📈 Dataset Information

| Property | Detail |
|----------|--------|
| Dataset | RetailRocket Recommender System Dataset |
| Source | [Kaggle](https://www.kaggle.com/datasets/retailrocket/ecommerce-dataset) |
| Time Period | May 3 – September 18, 2015 |
| Total Events | 2,756,101 |
| Unique Visitors | 1,407,580 |
| Event Types | view, addtocart, transaction |

> ⚠️ Dataset not included in repo — download from the Kaggle link above (65MB+)

---

## 👤 About This Project

This project demonstrates end-to-end Product Analytics and Business Intelligence capabilities, including SQL-based funnel analysis, KPI development, Power BI dashboard creation, DAX calculations, and business recommendation generation.

**Core Technologies:**
`Power BI` `SQL` `DAX` `MySQL` `Power Query`

**Analytics Areas:**
`Funnel Analytics` `Conversion Analysis` `Cart Abandonment Analysis` `User Behavior Analytics`
`Product Analytics` `Business Intelligence` `Dashboard Storytelling`

---

## 📬 Connect With Me

🔗 LinkedIn:
www.linkedin.com/in/suresh-pawar-a2b7bb26b

💻 GitHub:
github.com/Suru7971

📧 Email:
surupawar7971@gmail.com

---

> ⭐ If you found this project useful, feel free to star the repository!
