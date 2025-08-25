SELECT *
FROM superstore;

-- Query 1: Total sales per category
SELECT `Category`, SUM(`Sales`) AS Total_Sales
FROM superstore
GROUP BY `Category`
ORDER BY Total_Sales DESC;

-- Query 2: Monthly sales trend
SELECT date_format(`Order Date`, '%Y-%m') AS Month,
	   SUM(`Sales`) AS Total_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- Query 3: Top 10 bestselling Poducts 
SELECT `Product Name`, Sum(`Sales`) AS Total_Sales
FROM superstore
GROUP BY `Product Name` 
ORDER BY Total_Sales desc
LIMIT 10;


-- Query 4: Profit per category
SELECT `category`, sum(`profit`) AS Total_Profit
FROM superstore
GROUP BY `category`
ORDER BY Total_Profit DESC;


-- Query 5: Products with negative profit
SELECT `Product Name`, SUM(`Sales`) AS Total_Sales, SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

-- Query 6: Profit margin analysis
SELECT `Category`, 
       SUM(`Profit`) / SUM(`Sales`) * 100 AS Profit_Margin_Percent
FROM superstore
GROUP BY `Category`
ORDER BY Profit_Margin_Percent DESC;


-- Query 7: Sales by customer segment
SELECT `Segment`, SUM(`Sales`) AS Total_Sales, SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `Segment`;


-- Query 8: Top 10 customers by profit
Select `Customer Name`, SUM(`Profit`) AS Total_Profit 
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC 
LIMIT 10;


-- Query 9: Average discount per category
SELECT `Category`, AVG(`Discount`) AS Avg_Discount 
FROM superstore
GROUP BY `Category`;


-- Query 10: Profit impact of discount
SELECT 
  CASE 
    WHEN `Discount` = 0 THEN 'No Discount'
    WHEN `Discount` BETWEEN 0.01 AND 0.20 THEN 'Low Discount'
    WHEN `Discount` BETWEEN 0.21 AND 0.50 THEN 'Medium Discount'
    ELSE 'High Discount'
  END AS Discount_Band,
  SUM(`Sales`) AS Total_Sales,
  SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY Discount_Band
ORDER BY Total_Profit DESC;


-- Query 11: Average shipping time
SELECT AVG(DATEDIFF(`Ship Date`, `Order Date`)) AS Avg_Shipping_Days
FROM superstore;

-- Query 12: Region-wise sales and profit
SELECT `Region`, SUM(`Sales`) AS Total_Sales, SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `Region`
ORDER BY Total_Profit DESC;


-- Query 13: State with longest average shipping time
SELECT `State`, AVG(DATEDIFF(`Ship Date`, `Order Date`)) AS Avg_Shipping_Days
FROM superstore
GROUP BY `State`
ORDER BY Avg_Shipping_Days DESC
LIMIT 5;

-- ADVANCED QUERIED

-- 1. Year-over-Year Growth
SELECT YEAR(`Order Date`) AS Year, 
       SUM(`Sales`) AS Total_Sales, 
       SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY Year
ORDER BY Year;


-- 2. Category & Region Cross-Analysis
SELECT `Region`, `Category`, 
       SUM(`Sales`) AS Total_Sales, 
       SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `Region`, `Category`
ORDER BY `Region`, Total_Profit DESC;


-- 3. Sub-Category Performance
SELECT `Sub-Category`, 
       SUM(`Sales`) AS Total_Sales, 
       SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;


-- 4. Repeat Customers (Customer Loyalty)
SELECT `Customer ID`, COUNT(DISTINCT `ORDER ID`) AS Total_Orders,
        SUM(`Sales`) AS Total_Sales 
FROM superstore 
GROUP BY `Customer ID`
HAVING Total_Orders > 1
ORDER BY Total_Orders DESC
LIMIT 10;


-- 5. Shipping Mode Profitability
SELECT `Ship Mode`, 
       SUM(`Sales`) AS Total_Sales, 
       SUM(`Profit`) AS Total_Profit, 
       AVG(DATEDIFF(`Ship Date`, `Order Date`)) AS Avg_Shipping_Days
FROM superstore
GROUP BY `Ship Mode`;


-- 6. Most Profitable States
SELECT `State`, SUM(`Profit`) AS Total_Profit
FROM superstore
GROUP BY `State`
ORDER BY Total_Profit DESC
LIMIT 10;

-- 7. Customer Lifetime Value (basic version)
SELECT `Customer Name`, 
       SUM(`Sales`) AS Total_Sales, 
       SUM(`Profit`) AS Total_Profit,
       COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- 8. Order Size Analysis
SELECT `Order ID`, SUM(`Sales`) AS Order_Value, COUNT(*) AS Total_Items
FROM superstore
GROUP BY `Order ID`
ORDER BY Order_Value DESC
LIMIT 10;

















































