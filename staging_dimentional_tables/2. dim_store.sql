--Inserting data into dim store
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