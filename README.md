# Sales Performance Analytics

**An end-to-end data analysis pipeline built with Excel, MySQL, and Power BI.**

## Project Overview
The goal of this project was to transform raw, unstructured sales data into a clear, interactive dashboard that actually drives business decisions. Rather than just reporting numbers, this project demonstrates a complete data pipeline—from initial data cleaning and relational database modeling to final visual insights.

## Tech Stack
* **Data Preparation:** Microsoft Excel 
* **Database Management:** MySQL & MySQL Workbench 
* **Querying & Analysis:** SQL 
* **Visualization:** Microsoft Power BI 

## The Challenge
To help optimize marketing spend and track sales efficiency, I framed the analysis around four core business questions:
1. Which products and regions are driving the most revenue?
2. Who are the top-performing sales representatives?
3. What does the overarching monthly sales trend look like?
4. How can we segment our top customers by transaction volume?

## The Process
1. **Data Prep (Excel):** Cleaned and standardized the raw data, handled missing values, and prepped the CSV files for database ingestion.
2. **Database Setup (MySQL):** Engineered a relational database (`sales_portfolio_project`) with normalized tables for accounts, orders, regions, sales reps, and web events. 
3. **Exploratory Analysis (SQL):** Wrote advanced queries utilizing `JOIN`s, aggregate functions, and time-series formatting to uncover initial trends and key metrics.
4. **Data Modeling (Power BI):** Connected Power BI directly to the MySQL database to build a robust One-to-Many data model.
5. **Dashboarding:** Designed an interactive, easy-to-read dashboard focused on top-level KPIs, regional breakdowns, and a sales team leaderboard.

## Key Findings
* **Regional Dominance:** The Northeast region is our biggest revenue driver, though the West region shows strong potential for untapped market expansion.
* **Seasonality:** The data revealed a massive revenue spike in late 2016. This points to strong end-of-year seasonality that requires advance supply chain planning.
* **Top Performers:** Earlie Schleusner led the sales team by a wide margin, presenting a great opportunity to extract their best practices and scale them across the rest of the team.

## Repository Structure
* `/sql_queries` - The `.sql` scripts used to analyze the database.
* `/dataset` - The cleaned CSV files used for initial modeling.
* `Sales_Performance_Dashboard.pdf` - A high-resolution export of the final dashboard.
* `Screenshot 2026-07-18 212351.png` - Visual proof of the live dashboard environment.

## How to Run Locally
1. Clone this repository to your local machine.
2. Import the CSV files into a local MySQL instance using the provided schema.
3. Open Power BI and establish a MySQL database connection using your local credentials.
4. Refresh the data model to view the live dashboard.
