CREATE PROCEDURE sp_create_dim_priority
AS
BEGIN
--dim priority
DROP TABLE [ComputerStd].[dbo].[dim_priority]
CREATE TABLE [ComputerStd].[dbo].[dim_priority](
[PriorityID] INT IDENTITY(1,1) PRIMARY KEY,
	[Priority] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_priority] (Priority)
SELECT DISTINCT Priority
FROM [ComputerStd].[dbo].[raw_pc_data]
END;