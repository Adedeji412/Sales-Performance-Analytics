-- CREATE DATABASE sales_database; --
USE sales_database;

CREATE TABLE regions (
	region_id INT PRIMARY KEY,
    region_name VARCHAR(50)
);

CREATE TABLE sales_reps (
	rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100),
    region_id INT
);

CREATE TABLE accounts (
	account_id INT PRIMARY KEY,
    account_name VARCHAR(100),
    website VARCHAR(255),
    lat DECIMAL(10,6),
    `long` DECIMAL(10,6),
    primary_poc VARCHAR(100),
    rep_id INT
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    account_id INT,
    occured_at DATE,
    standard_qty INT,
    gloss_qty INT,
    poster_qty INT,
    total INT,
    standard_amt_usd DECIMAL(12,2),
    gloss_amt_usd DECIMAL(12,2),
    poster_amt_usd DECIMAL(12,2),
    total_amt_usd DECIMAL(12,2)
);

CREATE TABLE web_event (
	web_event_id INT PRIMARY KEY,
    account_id INT,
    occured_at DATE,
    `channel` VARCHAR (50)
);


-- Which products bring in the most revenue? --
SELECT 
SUM(standard_amt_usd) AS total_standard_revenue,
SUM(gloss_amt_usd) AS total_gloss_revenue,
SUM(poster_amt_usd) AS total_poster_revenue
FROM orders;

-- Which Region performs Best?

SELECT 
r.region_name, 
SUM(o.total_amt_usd) AS total_revenue
FROM regions r 
JOIN sales_reps sr ON r.region_id = sr.region_id
JOIN accounts a ON sr.rep_id = a.rep_id
JOIN orders o ON a.account_id = o.account_id
GROUP BY r.region_name
ORDER BY total_revenue DESC;

-- Top 10 Salespeople

SELECT 
sr.rep_name, 
SUM(o.total_amt_usd)  AS total_sales
FROM sales_reps sr
JOIN accounts a ON a.rep_id = sr.rep_id
JOIN orders o ON o.account_id = a.account_id
GROUP BY sr.rep_name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales Trend

SELECT 
DATE_FORMAT(occured_at, '%Y-%m') AS order_month, 
SUM(total_amt_usd)  AS monthly_revenue
FROM orders
GROUP BY order_month
ORDER BY order_month ASC;

-- Customer Segmentation (Top 10 Accounts by Volume)

SELECT 
account_name, 
SUM(total_amt_usd)  AS total_spent 
FROM accounts a 
JOIN orders o ON o.account_id = a.account_id
GROUP BY account_name
ORDER BY total_spent DESC
LIMIT 10;



