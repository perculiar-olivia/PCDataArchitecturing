--Inserting data into dim product
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