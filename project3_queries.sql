
-- Project 3: SQL Data Analysis

-- 1. Display selected columns
SELECT OrderID, Product, Quantity, TotalPrice
FROM orders;

-- 2. Filter orders
SELECT OrderID, Product, TotalPrice
FROM orders
WHERE TotalPrice > 1000;

-- 3. Highest-priced orders
SELECT OrderID, Product, TotalPrice
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- 4. Count orders by product
SELECT Product, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY Product;

-- 5. Total sales by product
SELECT Product, SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY Product;

-- 6. Average order value
SELECT Product, ROUND(AVG(TotalPrice), 2) AS AverageOrderValue
FROM orders
GROUP BY Product;

-- 7. Payment method analysis
SELECT PaymentMethod, COUNT(*) AS NumberOfOrders,
       SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY PaymentMethod;

-- 8. Order status analysis
SELECT OrderStatus, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY OrderStatus;

-- 9. Referral source analysis
SELECT ReferralSource, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY ReferralSource;

-- 10. Products above a sales threshold
SELECT Product, SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY Product
HAVING SUM(TotalPrice) > 180000;

-- 11. Monthly order analysis
SELECT strftime('%Y-%m', Date) AS OrderMonth,
       COUNT(*) AS NumberOfOrders,
       SUM(TotalPrice) AS TotalOrderValue
FROM orders
GROUP BY strftime('%Y-%m', Date)
ORDER BY OrderMonth;
