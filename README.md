# RetailRocket User Funnel Analytics Dashboard

## Project Overview
This project analyzes the e-commerce customer journey using the RetailRocket dataset. The goal is to understand how users move through the funnel:

**View Product → Add to Cart → Purchase**

The dashboard identifies conversion opportunities, cart abandonment behavior, peak activity periods, and top-performing products.

## Business Problem

E-commerce businesses lose a large number of users between product views and final purchases.

This project answers:
- How many visitors reach each funnel stage?
- What percentage of visitors add products to cart?
- What percentage of cart users complete a purchase?
- How many users abandon their carts?
- Which products are purchased most frequently?
- When are users most active?

## Dataset

RetailRocket Recommender System Dataset

Files Used:
- events.csv

Key Columns:
- visitorid
- event
- itemid
- timestamp
- transactionid

## Tools Used
- MySQL
- Power BI
- DAX
- Power Query
- GitHub

## SQL Analysis Performed
- Total Visitors
- View Users
- Cart Users
- Transaction Users
- View-to-Cart Conversion Rate
- Cart-to-Purchase Conversion Rate
- Overall Conversion Rate
- Cart Abandonment Analysis
- Monthly Visitor Trend
- Activity by Hour
- Top Purchased Products
- Top Active Visitors

## Power BI Dashboard Features

### KPI Cards
- Total Visitors
- Cart Users
- Transaction Users
- View to Cart %
- Cart Abandonment %
- Overall Conversion %

### Visualizations
- User Conversion Funnel
- Monthly Visitor Trend
- Activity by Hour
- Top Purchased Product IDs
- Interactive Slicers
- Business Insights Panel

## Key Insights
- 2.69% of visitors add products to cart.
- Only 0.83% of visitors complete a purchase.
- Nearly 68.9% of cart users abandon before purchase.
- User activity peaks during evening hours.
- Checkout optimization can significantly improve conversions.

## Dashboard Preview
![RetailRocket Dashboard](dashboard.png)

## Repository Structure

RetailRocket-Funnel-Analytics/
├── RetailRocket_Funnel_Analysis.sql
├── RetailRocket_Dashboard.pbix
├── dashboard.png
└── README.md

## Project Outcome
This project demonstrates:
- Funnel Analytics
- Conversion Rate Analysis
- SQL Aggregations
- Business Intelligence Reporting
- Interactive Dashboard Development
- Data Storytelling

## Author
Suresh Vakil Pawar
