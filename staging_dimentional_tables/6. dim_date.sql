--Inserting data into dim date
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