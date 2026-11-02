-- Blinkit Sales Analytics | analysis queries
USE blinkit_analytics;

-- 1. Overall KPI summary
SELECT COUNT(*) AS total_records, ROUND(SUM(Sales),2) AS total_sales,
 ROUND(AVG(Sales),2) AS average_sales, ROUND(AVG(Rating),2) AS average_rating
FROM blinkit_sales;

-- 2. Sales by item category
SELECT Item_Type, ROUND(SUM(Sales),2) AS total_sales
FROM blinkit_sales GROUP BY Item_Type ORDER BY total_sales DESC;

-- 3. Sales by outlet type
SELECT Outlet_Type, COUNT(*) AS item_records, ROUND(SUM(Sales),2) AS total_sales,
 ROUND(AVG(Sales),2) AS avg_sales, ROUND(AVG(Rating),2) AS avg_rating
FROM blinkit_sales GROUP BY Outlet_Type ORDER BY total_sales DESC;

-- 4. Sales by location tier
SELECT Outlet_Location_Type, ROUND(SUM(Sales),2) AS total_sales
FROM blinkit_sales GROUP BY Outlet_Location_Type ORDER BY total_sales DESC;

-- 5. Fat content contribution
SELECT Item_Fat_Content, ROUND(SUM(Sales),2) AS total_sales,
 ROUND(100*SUM(Sales)/(SELECT SUM(Sales) FROM blinkit_sales),2) AS sales_percentage
FROM blinkit_sales GROUP BY Item_Fat_Content;

-- 6. Sales by outlet establishment year
SELECT Outlet_Establishment_Year, ROUND(SUM(Sales),2) AS total_sales
FROM blinkit_sales GROUP BY Outlet_Establishment_Year ORDER BY Outlet_Establishment_Year;

-- 7. Outlet size performance
SELECT Outlet_Size, COUNT(*) AS records, ROUND(SUM(Sales),2) AS total_sales,
 ROUND(AVG(Rating),2) AS avg_rating
FROM blinkit_sales GROUP BY Outlet_Size ORDER BY total_sales DESC;

-- 8. High rating items (rating >= 4)
SELECT Item_Type, COUNT(*) AS count_items, ROUND(AVG(Sales),2) AS avg_sales
FROM blinkit_sales WHERE Rating >= 4 GROUP BY Item_Type ORDER BY avg_sales DESC;

-- 9. Data quality: null counts
SELECT SUM(Item_Weight IS NULL) AS missing_weights, SUM(Item_Type IS NULL) AS missing_categories,
 SUM(Sales IS NULL) AS missing_sales FROM blinkit_sales;

-- 10. Visibility and sales correlation exploration (grouped visibility bands)
SELECT CASE WHEN Item_Visibility < 0.05 THEN 'Low' WHEN Item_Visibility < 0.10 THEN 'Medium' ELSE 'High' END AS visibility_band,
 COUNT(*) AS records, ROUND(AVG(Sales),2) AS average_sales
FROM blinkit_sales GROUP BY visibility_band ORDER BY average_sales DESC;
