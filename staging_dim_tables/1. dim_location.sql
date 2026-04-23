--Inserting data into dim location
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