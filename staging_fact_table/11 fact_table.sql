--inserting SalesID into the column
DROP TABLE [ComputerStd].[dbo].[fact_sales]
CREATE TABLE [ComputerStd].[dbo].[fact_sales](
[SalesID] INT IDENTITY(1,1) PRIMARY KEY,
[LocationID] INT NOT NULL, 
[StoreID] INT NOT NULL,
[ProductID] INT NOT NULL,
[CustomerID] INT NOT NULL,
[SalesPersonID] INT NOT NULL,
[DateID] INT NOT NULL,
[PaymentID] INT NOT NULL,
[ChannelID] INT NOT NULL,
[PriorityID] INT NOT NULL, 
[Cost_Price] decimal (10,2) NOT NULL,
[Sale_Price] decimal (10,2) NOT NULL,
[Discount_Amount] decimal (10,2) NOT NULL,
[Finance_Amount] decimal (10,2) NOT NULL,
[Credit_Score] decimal (10,2) NOT NULL,
[Cost_of_Repairs] decimal (10,2) NOT NULL,
[Total_Sales_per_Employee] decimal (10,2) NOT NULL,
[PC_Market_Price] decimal (10,2) NOT NULL,
)
--inserting values into fact table
INSERT INTO [ComputerStd].[dbo].[fact_sales](
[LocationID] , 
[StoreID] ,
[ProductID] ,
[CustomerID],
[SalesPersonID] ,
[DateID] ,
[PaymentID],
[ChannelID] ,
[PriorityID], 
Cost_Price,
Sale_Price,
Discount_Amount,
Finance_Amount,
Credit_Score,
Cost_of_Repairs,
Total_Sales_per_Employee, 
PC_Market_Price)
SELECT DISTINCT 
l.LocationID , 
s.StoreID ,
p.ProductID ,
c.CustomerID,
e.SalesPersonID ,
d.DateID ,
t.PaymentID,
o.ChannelID ,
h.PriorityID, 
Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee, PC_Market_Price
FROM [ComputerStd].[dbo].[raw_pc_data] AS std

INNER JOIN dim_location l
ON std.Continent = l.Continent
AND std.Country_or_State = l.Country_or_State
AND std.Province_or_City = l.Province_or_City

INNER JOIN dim_store s
ON std.Shop_Name = s.Shop_Name
AND std.Shop_Age = s.Shop_Age

INNER JOIN dim_product p
ON std.PC_Make = p.PC_Make
AND std.PC_Model = p.PC_Model
AND std.RAM = p.RAM
AND std.Storage_Capacity = p.Storage_Capacity
AND std.Storage_Type = p.Storage_Type

INNER JOIN dim_customer c
ON std.Customer_Name = c.Customer_Name
AND std.Customer_Surname = c.Customer_Surname
AND std.Customer_Contact_Number = c.Customer_Contact_Number
AND std.Customer_Email_Address = c.Customer_Email_Address

INNER JOIN dim_sales_person e
ON std.Sales_Person_Name = e.Sales_Person_Name
AND std.Sales_Person_Department = e.Sales_Person_Department

INNER JOIN dim_date d
ON std.Purchase_Date = d.Purchase_Date
AND std.Ship_Date = d.Ship_Date

INNER JOIN dim_payment t
ON std.Payment_Method = t.Payment_Method

INNER JOIN dim_channel o
ON std.Channel = o.Channel

INNER JOIN dim_priority h
ON std.Priority = h.Priority

--SELECT * FROM fact_sales


