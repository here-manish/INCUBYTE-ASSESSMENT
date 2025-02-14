SELECT TOP (1000) [TransactionID]
      ,[CustomerID]
      ,[TransactionDate]
      ,[TransactionAmount]
      ,[PaymentMethod]
      ,[Quantity]
      ,[DiscountPercent]
      ,[City]
      ,[StoreType]
      ,[CustomerAge]
      ,[CustomerGender]
      ,[LoyaltyPoints]
      ,[ProductName]
      ,[Region]
      ,[Returned]
      ,[FeedbackScore]
      ,[ShippingCost]
      ,[DeliveryTimeDays]
      ,[IsPromotional]
  FROM [DATACRAFTSPERSON].[dbo].[SALESANALYSISDB]
  USE DATACRAFTSPERSON;


  -- Set the database context to DATACRAFTSPERSON
USE DATACRAFTSPERSON;
GO

-- Query 1: Total Transactions and Total Sales
SELECT COUNT(TransactionID) AS TotalTransactions, 
       SUM(TransactionAmount) AS TotalSales
FROM dbo.SALESANALYSISISDB;

-- Query 2: Number of Sales and Total Revenue per Product
SELECT ProductName, 
       COUNT(TransactionID) AS NumberOfSales, 
       SUM(TransactionAmount) AS TotalRevenue
FROM dbo.SALESANALYSISISDB
GROUP BY ProductName
ORDER BY TotalRevenue DESC;

-- Query 3: Average Shipping Cost by Region
SELECT Region, 
       AVG(ShippingCost) AS AvgShippingCost
FROM dbo.SALESANALYSISISDB
GROUP BY Region;

-- Query 4: Top 5 Cities by Sales
SELECT City, 
       COUNT(TransactionID) AS NumberOfSales, 
       SUM(TransactionAmount) AS TotalRevenue
FROM dbo.SALESANALYSISISDB
GROUP BY City
ORDER BY TotalRevenue DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

-- Query 5: Average Discount per Payment Method
SELECT PaymentMethod, 
       AVG(DiscountPercent) AS AvgDiscount
FROM dbo.SALESANALYSISISDB
GROUP BY PaymentMethod;

-- Query 6: Customer Loyalty Points by Gender
SELECT CustomerGender, 
       AVG(LoyaltyPoints) AS AvgLoyaltyPoints, 
       COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM dbo.SALESANALYSISISDB
GROUP BY CustomerGender;

-- Query 7: Products with Most Returns
SELECT ProductName, 
       COUNT(TransactionID) AS NumberOfReturns
FROM dbo.SALESANALYSISISDB
WHERE Returned = 'Yes'
GROUP BY ProductName
ORDER BY NumberOfReturns DESC;

