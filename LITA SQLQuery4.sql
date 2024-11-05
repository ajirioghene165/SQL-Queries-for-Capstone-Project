/*CREATE Capstone SALES(
OrderID INTEGER,
Customer_Id VARCHAR,
Product TEXT,
Region TEXT,
OrderDate DATE,
Quantity DECIMAL,
UnitPrice INTEGER)*/
 
----retrieving the total sales from each product category----
Select   Quantity as Total_Sales, Product  from  Sales Data
--Group by Product;

----Number of Sales of Transactions Per Region----
Select  Product, Quantity as Total_Sales from Sales Data;

Select Region,Count(*) as Total_Transaction from Sales Data
Group by Region

----the highest selling product of total sales (revenue)
--Select Top Product, SUM(Quantity Sales * Unit Price) as Total_Revenue
--from 
--Group by Product 

 Select * from Sales data order by Region
 
 Select max(product) AS highest_product_available from Sales Data


 Select Quantity AS Number_of_Gloves from Sales Data 
 Where Product ='Gloves'

 --Select SUM(Revenue) from Sales Data
 --Group by Product

-- Select Top(5) CUSTOMERS from Sales Data by Purchase_Amount;

select * from Sales Data
order by region

----Monthly Sales Totals for the Current Year----
/*SELECT MONTH(orderdate) AS Month,SUM(quantity*UnitPrice) AS monthly_sales FROM Sales Data
WHERE YEAR(orderdate)=YEAR(GETDATE())
GROUP BY Month(orderdate);*/

----Percentage of Total Sales Contributed by each Region---
Select Region
--,COUNT (*) *100.0
FROM Sales Data
order by region 
 


 

 





 
 
  
