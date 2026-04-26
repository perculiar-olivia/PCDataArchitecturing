CREATE PROCEDURE sp_creat_dim_sales_person
AS
BEGIN
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
END;