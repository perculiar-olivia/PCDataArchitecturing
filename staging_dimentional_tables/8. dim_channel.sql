--Inserting data into dim channel
DROP TABLE [ComputerStd].[dbo].[dim_channel]
CREATE TABLE [ComputerStd].[dbo].[dim_channel](
[ChannelID]  INT IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](50) NOT NULL
)
INSERT INTO [ComputerStd].[dbo].[dim_channel] (Channel)
SELECT DISTINCT Channel
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_channel]