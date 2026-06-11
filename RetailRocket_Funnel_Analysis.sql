/* =====================================================
   RETAILROCKET USER FUNNEL ANALYTICS PROJECT
   Dataset: RetailRocket Events Dataset
   Tools Used: MySQL, Power BI
   ===================================================== */

/* 1. DATA OVERVIEW */
SELECT *
FROM events
LIMIT 10;

/* 2. TOTAL VISITORS */
SELECT
COUNT(DISTINCT visitorid) AS total_visitors
FROM events;

/* 3. VIEW USERS */
SELECT
COUNT(DISTINCT visitorid) AS view_users
FROM events
WHERE event='view';

/* 4. CART USERS */
SELECT
COUNT(DISTINCT visitorid) AS cart_users
FROM events
WHERE event='addtocart';

/* 5. TRANSACTION USERS */
SELECT
COUNT(DISTINCT visitorid) AS transaction_users
FROM events
WHERE event='transaction';

/* 6. VIEW TO CART CONVERSION RATE */
SELECT
ROUND(
COUNT(DISTINCT CASE WHEN event='addtocart' THEN visitorid END) * 100.0
/
COUNT(DISTINCT CASE WHEN event='view' THEN visitorid END),2
) AS view_to_cart_pct
FROM events;

/* 7. CART TO PURCHASE CONVERSION RATE */
SELECT
ROUND(
COUNT(DISTINCT CASE WHEN event='transaction' THEN visitorid END) * 100.0
/
COUNT(DISTINCT CASE WHEN event='addtocart' THEN visitorid END),2
) AS cart_to_purchase_pct
FROM events;

/* 8. OVERALL CONVERSION RATE */
SELECT
ROUND(
COUNT(DISTINCT CASE WHEN event='transaction' THEN visitorid END) * 100.0
/
COUNT(DISTINCT CASE WHEN event='view' THEN visitorid END),2
) AS overall_conversion_pct
FROM events;

/* 9. CART ABANDONMENT USERS */
SELECT
visitorid
FROM events
GROUP BY visitorid
HAVING
SUM(event='addtocart') > 0
AND
SUM(event='transaction') = 0;

/* 10. TOP 10 PURCHASED PRODUCTS */
SELECT
itemid,
COUNT(*) AS purchase_count
FROM events
WHERE event='transaction'
GROUP BY itemid
ORDER BY purchase_count DESC
LIMIT 10;

/* 11. MONTHLY VISITOR TREND */
SELECT
MONTH(FROM_UNIXTIME(timestamp/1000)) AS month_no,
COUNT(DISTINCT visitorid) AS visitors
FROM events
GROUP BY month_no
ORDER BY month_no;

/* 12. ACTIVITY BY HOUR */
SELECT
HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
COUNT(*) AS total_events
FROM events
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* 13. EVENT DISTRIBUTION */
SELECT
event,
COUNT(*) AS total_events
FROM events
GROUP BY event;

/* 14. TOP ACTIVE VISITORS */
SELECT
visitorid,
COUNT(*) AS total_events
FROM events
GROUP BY visitorid
ORDER BY total_events DESC
LIMIT 10;

/* 15. TRANSACTIONS BY HOUR */
SELECT
HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
COUNT(*) AS transactions
FROM events
WHERE event='transaction'
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* 16. CART EVENTS BY HOUR */
SELECT
HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
COUNT(*) AS cart_events
FROM events
WHERE event='addtocart'
GROUP BY hour_of_day
ORDER BY hour_of_day;

/* 17. VIEW EVENTS BY HOUR */
SELECT
HOUR(FROM_UNIXTIME(timestamp/1000)) AS hour_of_day,
COUNT(*) AS view_events
FROM events
WHERE event='view'
GROUP BY hour_of_day
ORDER BY hour_of_day;
