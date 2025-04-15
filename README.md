# 🛒 Online Sales Dataset Analysis

This project explores and analyzes an online retail dataset using SQL. The dataset includes detailed information on transactions such as invoice data, product details, customer information, shipping, and more.

---

## 📂 Dataset Overview

**Filename:** `online_sales_dataset.csv`

**Columns:**
- `InvoiceNo`: Unique identifier for the transaction
- `StockCode`: Internal product code
- `Description`: Product description
- `Quantity`: Number of items sold
- `InvoiceDate`: Date and time of the invoice
- `UnitPrice`: Price per unit of the product
- `CustomerID`: Unique ID of the customer (nullable)
- `Country`: Customer’s country
- `Discount`: Discount applied to the order
- `PaymentMethod`: Method used for payment (e.g., Bank Transfer, PayPal)
- `ShippingCost`: Cost of shipping
- `Category`: Product category (e.g., Electronics, Apparel)
- `SalesChannel`: Online or In-store
- `ReturnStatus`: Returned or Not Returned
- `ShipmentProvider`: Carrier (e.g., FedEx, UPS)
- `WarehouseLocation`: Warehouse used for dispatch
- `OrderPriority`: Priority level (Low, Medium, High)

---

## 🔍 SQL Queries

### General Insights

- **Total Sales per Country**
```sql
SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
FROM online_sales
GROUP BY Country
ORDER BY TotalSales DESC;
