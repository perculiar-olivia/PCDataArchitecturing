SELECT DISTINCT [Cost_Price] 
	,[Sale_Price] 
	,[Discount_Amount] 
	,[Finance_Amount]
	,[Credit_Score] 
	,[Cost_of_Repairs] 
	,[Total_Sales_per_Employee] 
	,[PC_Market_Price] 
INTO [ComputerStd].[dbo].[fact_sales]
FROM [ComputerStd].[dbo].[raw_pc_data]

--inserting SalesID into the column
DROP TABLE [ComputerStd].[dbo].[fact_sales]
CREATE TABLE [ComputerStd].[dbo].[fact_sales](
[SalesID] INT IDENTITY(1,1) PRIMARY KEY,
[LocationID] INT,
[StoreID] INT,
[ProductID] INT,
[CustomerID] INT,
[SalesPersonID] INT,
[DateID] INT,
[PaymentID] INT,
[ChannelID] INT,
[PriorityID] INT,
[Cost_Price] [int] NOT NULL,
[Sale_Price] [int] NOT NULL,
[Discount_Amount] [int] NOT NULL,
[Finance_Amount] [nvarchar](50) NOT NULL,
[Credit_Score] [int] NOT NULL,
[Cost_of_Repairs] [nvarchar](50) NOT NULL,
[Total_Sales_per_Employee] [int] NOT NULL,
[PC_Market_Price] [int] NOT NULL,
CONSTRAINT fk_LocationID
		   foreign key (LocationID)
		   references [ComputerStd].[dbo].[dim_location] (LocationID),
CONSTRAINT fk_StoreID
		   foreign key (StoreID)
		   references [ComputerStd].[dbo].[dim_store] (StoreID),
CONSTRAINT fk_ProductID
		   foreign key (ProductID)
		   references [ComputerStd].[dbo].[dim_product] (ProductID),
CONSTRAINT fk_CustomerID
		   foreign key (CustomerID)
		   references [ComputerStd].[dbo].[dim_customer] (CustomerID),
CONSTRAINT fk_SalesPersonID
		   foreign key (SalesPersonID)
		   references [ComputerStd].[dbo].[dim_sales_person] (SalesPersonID),
CONSTRAINT fk_DateID
		   foreign key (DateID)
		   references [ComputerStd].[dbo].[dim_date] (DateID),
CONSTRAINT fk_PaymentID
		   foreign key (PaymentID)
		   references [ComputerStd].[dbo].[dim_payment] (PaymentID),
CONSTRAINT fk_ChannelID
		   foreign key (ChannelID)
		   references [ComputerStd].[dbo].[dim_channel] (ChannelID),
CONSTRAINT fk_PriorityID
		   foreign key (PriorityID)
		   references [ComputerStd].[dbo].[dim_priority] (PriorityID),
)

--inserting values into fact table
INSERT INTO [ComputerStd].[dbo].[fact_sales](Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee, PC_Market_Price)
SELECT DISTINCT Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee, PC_Market_Price
FROM [ComputerStd].[dbo].[raw_pc_data]