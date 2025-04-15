1. Total sales per country
SELECT Country,SUM(Quantity * UnitPrice) AS TotalSales FROM [online_sales_dataset]
GROUP BY Country
ORDER BY TotalSales DESC;

2. Top 5 sold Products
SELECT Top 5 Description,SUM(Quantity) AS TotalQuantity FROM [online_sales_dataset]
GROUP BY Description
ORDER BY TotalQuantity DESC

3. Average discount per discount method
SELECT PaymentMethod, AVG(Discount) AS AverageDiscount FROM [online_sales_dataset]
GROUP BY PaymentMethod;

4. Monthly Sales Trend
SELECT 
  format(InvoiceDate,'yyyy-MM') AS Month,
  SUM(Quantity * UnitPrice) AS MonthlySales FROM [online_sales_dataset]
GROUP BY format(InvoiceDate,'yyyy-MM')
ORDER BY Month;

5. Orders with negative quantity or price
SELECT * FROM [online_sales_dataset]
WHERE Quantity < 0 OR UnitPrice < 0;

6. Orders with missing customer id
SELECT * FROM [dbo].[online_sales_dataset]
WHERE CustomerID IS NULL;

7. Total shipping cost per shipment provider
SELECT ShipmentProvider,SUM(ShippingCost) AS TotalShippingCost FROM [online_sales_dataset]
GROUP BY ShipmentProvider
ORDER BY TotalShippingCost DESC;

8. Top countries by number of returns
SELECT Country, COUNT(*) AS ReturnCount FROM [online_sales_dataset]
WHERE ReturnStatus = 'Returned'
GROUP BY Country
ORDER BY ReturnCount DESC;

9. Average unit price per product category
SELECT Category, AVG(UnitPrice) AS AvgPrice FROM [online_sales_dataset]
GROUP BY Category;

10. Customers with the highest total spend
SELECT Top(10) CustomerID, SUM(Quantity * UnitPrice) AS TotalSpent FROM [online_sales_dataset]
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY TotalSpent DESC

11. Sales by warehouse location
SELECT WarehouseLocation, SUM(Quantity * UnitPrice) AS TotalSales FROM [online_sales_dataset]
GROUP BY WarehouseLocation
ORDER BY TotalSales DESC;


12. Identify Duplicate Invoices
SELECT InvoiceNo, COUNT(*) AS Count FROM [online_sales_dataset]
GROUP BY InvoiceNo
HAVING COUNT(*) > 1;


