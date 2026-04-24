CREATE PROCEDURE sp_create_dim_customer 
AS
BEGIN
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
END;

