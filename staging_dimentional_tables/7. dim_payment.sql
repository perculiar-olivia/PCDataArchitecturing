--Inserting data into dim payment
DROP TABLE [ComputerStd].[dbo].[dim_payment]
CREATE TABLE [ComputerStd].[dbo].[dim_payment](
[PaymentID]  INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
) 
INSERT INTO [ComputerStd].[dbo].[dim_payment] ( Payment_Method)
SELECT DISTINCT Payment_Method
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_payment]