# 📊 Sales Performance Analytics

**A Full-Stack Data Analysis Pipeline (Excel -> MySQL -> Power BI)**

## 🎯 Objective
The goal of this project is to transform raw, unstructured sales data into a dynamic, commercial-grade dashboard that drives executive decision-making. This project demonstrates a complete data pipeline, focusing on data integrity, relational database modeling, and actionable business intelligence. 

## 🛠️ Tools & Technologies Used
* **Data Cleaning:** Microsoft Excel (Phase 1)
* **Database Management:** MySQL & MySQL Workbench (Phase 2 & 3)
* **Query Language:** SQL (Data manipulation and insight extraction)
* **Data Visualization:** Microsoft Power BI (Phase 4, 5 & 6)

## ❓ The Business Problem
To optimize marketing spend and improve sales team efficiency, the business needed clear visibility into historical performance. I was tasked with answering the following core questions:
1. Which products and regions drive the most revenue?
2. Who are the top-performing sales representatives?
3. What is the overarching monthly sales trend?
4. How can we segment our top customers by volume?

## ⚙️ Methodology & Pipeline
1. **Data Cleaning (Excel):** Standardized formatting, handled missing values, and prepared CSV files for database ingestion.
2. **Database Architecture (MySQL):** Created a relational database (`sales_portfolio_project`) with normalized tables (`accounts`, `orders`, `regions`, `sales_reps`, `web_events`). 
3. **Data Analysis (SQL):** Wrote advanced SQL queries involving `JOIN`s, aggregate functions, and time-series formatting to extract key metrics.
4. **Data Modeling (Power BI):** Established a direct connection to the MySQL database and built a robust One-to-Many data model connecting foreign keys to primary keys.
5. **Dashboard Design:** Developed an interactive, F-pattern layout dashboard focusing on top-level KPIs, regional breakdowns, and a sales leaderboard.

## 💡 Key Business Insights
* **Regional Dominance:** The Northeast region is the primary revenue driver, but the West region presents a significant untapped opportunity for market expansion.
* **Seasonality:** Analysis revealed a dramatic revenue surge in late 2016, indicating critical end-of-year seasonality that requires supply chain preparation.
* **Sales Leadership:** A clear top performer emerged (Earlie Schleusner), creating an opportunity to extract best practices and scale them across the rest of the sales team.

## 📁 Repository Structure
* `/sql_queries` - Contains the `.sql` files used to analyze the database.
* `/dataset` - Contains the cleaned CSV files used for initial modeling.
* `Sales_Performance_Dashboard.pdf` - A high-resolution export of the final Power BI dashboard.
* `Screenshot 2026-07-18 212351.png` - Visual proof of the live dashboard environment.

## 🚀 How to Run Locally
1. Clone this repository.
2. Import the CSV files into a local MySQL instance using the provided schema.
3. Open Power BI and establish a MySQL database connection using your local credentials.
4. Refresh the data model.
