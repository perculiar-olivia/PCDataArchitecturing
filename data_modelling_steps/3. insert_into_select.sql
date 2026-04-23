 --dim customer
 DROP TABLE [ComputerStd].[dbo].[dim_customer]
CREATE TABLE [ComputerStd].[dbo].[dim_customer](
    [CustomerID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_customer] ( Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
SELECT Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_customer]

--dim location
DROP TABLE [ComputerStd].[dbo].[dim_location]
CREATE TABLE [ComputerStd].[dbo].[dim_location](
    [LocationID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
) 
INSERT INTO [ComputerStd].[dbo].[dim_location] ( Continent, Country_or_State, Province_or_City)
SELECT DISTINCT Continent, Country_or_State, Province_or_City
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_location]

--dim payment
DROP TABLE [ComputerStd].[dbo].[dim_payment]
CREATE TABLE [ComputerStd].[dbo].[dim_payment](
[PaymentID]  INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
) 
INSERT INTO [ComputerStd].[dbo].[dim_payment] ( Payment_Method)
SELECT DISTINCT Payment_Method
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_payment]

--dim channel
DROP TABLE [ComputerStd].[dbo].[dim_channel]
CREATE TABLE [ComputerStd].[dbo].[dim_channel](
[ChannelID]  INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_channel] (Channel)
SELECT DISTINCT Channel
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_channel]

--dim date
DROP TABLE [ComputerStd].[dbo].[dim_date]
CREATE TABLE [ComputerStd].[dbo].[dim_date](
[DateID] INT IDENTITY(1,1) PRIMARY KEY,
    [Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 
INSERT INTO [ComputerStd].[dbo].[dim_date] (Purchase_Date, Ship_Date)
SELECT DISTINCT Purchase_Date, Ship_Date
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_date]

--dim priority
DROP TABLE [ComputerStd].[dbo].[dim_priority]
CREATE TABLE [ComputerStd].[dbo].[dim_priority](
[PriorityID] INT IDENTITY(1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_priority] (Priority)
SELECT DISTINCT Priority
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_priority] 

--dim product
DROP TABLE [ComputerStd].[dbo].[dim_product]
CREATE TABLE [ComputerStd].[dbo].[dim_product](
[ProductID] INT IDENTITY(1,1) PRIMARY KEY,
    [PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_product] (PC_Make, PC_Model, RAM, Storage_Capacity, Storage_Type)
SELECT DISTINCT PC_Make, PC_Model, RAM, Storage_Capacity, Storage_Type
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_product]

--dim sales person
DROP TABLE [ComputerStd].[dbo].[dim_sales_person]
CREATE TABLE [ComputerStd].[dbo].[dim_sales_person](
[SalesPersonID] INT IDENTITY(1,1) PRIMARY KEY,
    [Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_sales_person] (Sales_Person_Name, Sales_Person_Department)
SELECT DISTINCT Sales_Person_Name, Sales_Person_Department
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_sales_person] 

--dim store
DROP TABLE [ComputerStd].[dbo].[dim_store]
CREATE TABLE [ComputerStd].[dbo].[dim_store](
[StoreID] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
) 
INSERT INTO [ComputerStd].[dbo].[dim_store] (Shop_Name,Shop_Age)
SELECT DISTINCT Shop_Name,Shop_Age
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_store]