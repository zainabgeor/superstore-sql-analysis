-- View first few rows
SELECT * FROM superstore_sales LIMIT 10;

-- View table structure
PRAGMA table_info(superstore_sales);

-- Total Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Technology Sales by Region
SELECT Region, SUM(Sales) AS tech_sales
FROM superstore_sales
WHERE Category = 'Technology'
GROUP BY Region
ORDER BY tech_saleS DESC;

