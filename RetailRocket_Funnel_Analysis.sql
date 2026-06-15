/* =====================================================
   RETAILROCKET USER FUNNEL ANALYTICS PROJECT
   Dataset : RetailRocket Events Dataset (Kaggle)
   Link    : kaggle.com/datasets/retailrocket/ecommerce-dataset
   Tools   : MySQL, Power BI
   Author  : Suresh Vakil Pawar
   Role    : Data Analyst | Business Analyst | Product Analyst
===================================================== */

/* =====================================================
   1. DATA PREVIEW
===================================================== */

SELECT *
FROM events
LIMIT 10;

/* =====================================================
   2. TOTAL VISITORS
===================================================== */

SELECT
    COUNT(DISTINCT visitorid) AS total_visitors
FROM events;

/* =====================================================
   3. VIEW USERS
===================================================== */

SELECT
    COUNT(DISTINCT visitorid) AS view_users
FROM events
WHERE event = 'view';

/* =====================================================
   4. CART USERS
===================================================== */

SELECT
    COUNT(DISTINCT visitorid) AS cart_users
FROM events
WHERE event = 'addtocart';

/* =====================================================
   5. TRANSACTION USERS
===================================================== */

SELECT
    COUNT(DISTINCT visitorid) AS transaction_users
FROM events
WHERE event = 'transaction';

/* =====================================================
   6. VIEW TO CART CONVERSION RATE
===================================================== */

SELECT
    ROUND(
        COUNT(DISTINCT CASE
            WHEN event = 'addtocart'
            THEN visitorid END) * 100.0
        /
        COUNT(DISTINCT CASE
            WHEN event = 'view'
            THEN visitorid END),
        2
    ) AS view_to_cart_pct
FROM events;

/* =====================================================
   7. CART TO PURCHASE CONVERSION RATE
===================================================== */

SELECT
    ROUND(
        COUNT(DISTINCT CASE
            WHEN event = 'transaction'
            THEN visitorid END) * 100.0
        /
        COUNT(DISTINCT CASE
            WHEN event = 'addtocart'
            THEN visitorid END),
        2
    ) AS cart_to_purchase_pct
FROM events;

/* =====================================================
   8. OVERALL CONVERSION RATE
===================================================== */

SELECT
    ROUND(
        COUNT(DISTINCT CASE
            WHEN event = 'transaction'
            THEN visitorid END) * 100.0
        /
        COUNT(DISTINCT CASE
            WHEN event = 'view'
            THEN visitorid END),
        2
    ) AS overall_conversion_pct
FROM events;

/* =====================================================
   9. CART ABANDONMENT USERS
===================================================== */

SELECT
    visitorid
FROM events
GROUP BY visitorid
HAVING
    SUM(event = 'addtocart') > 0
    AND
    SUM(event = 'transaction') = 0;

/* =====================================================
   10. TOP 10 PURCHASED PRODUCTS
===================================================== */

SELECT
    itemid,
    COUNT(*) AS purchase_count
FROM events
WHERE event = 'transaction'
GROUP BY itemid
ORDER BY purchase_count DESC
LIMIT 10;

/* =====================================================
   11. MONTHLY VISITOR TREND
===================================================== */

SELECT
    MONTH(FROM_UNIXTIME(timestamp/1000)) AS month_no,
    COUNT(DISTINCT visitorid) AS visitors
FROM events
GROUP BY month_no
ORDER BY month_no;

/* =====================================================
   12. USER ACTIVITY BY HOUR
===================================================== */

SELECT
    HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS total_events
FROM events
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* =====================================================
   13. EVENT DISTRIBUTION
===================================================== */

SELECT
    event,
    COUNT(*) AS total_events
FROM events
GROUP BY event;

/* =====================================================
   14. TOP ACTIVE VISITORS
===================================================== */

SELECT
    visitorid,
    COUNT(*) AS total_events
FROM events
GROUP BY visitorid
ORDER BY total_events DESC
LIMIT 10;

/* =====================================================
   15. TRANSACTIONS BY HOUR
===================================================== */

SELECT
    HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS transactions
FROM events
WHERE event = 'transaction'
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* =====================================================
   16. CART EVENTS BY HOUR
===================================================== */

SELECT
    HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS cart_events
FROM events
WHERE event = 'addtocart'
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* =====================================================
   17. VIEW EVENTS BY HOUR
===================================================== */

SELECT
    HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
    COUNT(*) AS view_events
FROM events
WHERE event = 'view'
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* =====================================================
   18. TOP ACTIVE VISITORS RANKING
       Window Function — RANK()
===================================================== */

SELECT
    visitorid,
    COUNT(*) AS total_events,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS activity_rank
FROM events
GROUP BY visitorid
LIMIT 10;

/* =====================================================
   19. CART ABANDONMENT COUNT
       Subquery — counts total abandoned users
===================================================== */

SELECT
    COUNT(*) AS abandoned_users
FROM (
    SELECT visitorid
    FROM events
    GROUP BY visitorid
    HAVING
        SUM(event = 'addtocart') > 0
        AND
        SUM(event = 'transaction') = 0
) AS abandoned_cart_users;

/* Expected Result:
   abandoned_users : ~46,875
   These are users who added to cart
   but never completed a purchase.
   This = 68.9% cart abandonment rate.
*/

/* =====================================================
   PROJECT SUMMARY

   Queries Covered:
   ✔  1. Data preview
   ✔  2. Total visitors
   ✔  3. View users
   ✔  4. Cart users
   ✔  5. Transaction users
   ✔  6. View to cart conversion rate
   ✔  7. Cart to purchase conversion rate
   ✔  8. Overall conversion rate
   ✔  9. Cart abandonment users (list)
   ✔ 10. Top 10 purchased products
   ✔ 11. Monthly visitor trend
   ✔ 12. Activity by hour
   ✔ 13. Event distribution
   ✔ 14. Top active visitors
   ✔ 15. Transactions by hour
   ✔ 16. Cart events by hour
   ✔ 17. View events by hour
   ✔ 18. Visitor activity ranking (Window Function)
   ✔ 19. Cart abandonment count (Subquery)

   Key Business Findings:
   → 68.9%  cart abandonment rate
   → 2.69%  view to cart conversion
   → 31.58% cart to purchase conversion
   → 0.83%  overall conversion rate
   → Peak activity between 6 PM and 10 PM
   → July highest visitor month (0.38M)
   → September significant drop (0.17M)
   → Item 461686 top purchased product

   Author : Suresh Vakil Pawar
   Role   : Data Analyst | Business Analyst | Product Analyst
===================================================== */
