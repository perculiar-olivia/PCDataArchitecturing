--creating location dimensional table
SELECT DISTINCT
      [Continent],
      [Country_or_State],
      [Province_or_City]
--INTO dim_location
FROM [ComputerStd].[dbo].[raw_pc_data]

SELECT * FROM [ComputerStd].[dbo].[dim_location]

--creating store dimensional table
SELECT DISTINCT 
    [Shop_Name],
    [Shop_Age]
  --INTO dim_store
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_store]

  --creating product dimensional table
  SELECT DISTINCT 
    [PC_Make],
    [PC_Model],
    [RAM],
    [Storage_Capacity],
    [Storage_Type]
  --INTO dim_product
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_product]

  --creating customer dimensional table
  SELECT DISTINCT 
    [Customer_Name],
    [Customer_Surname],
    [Customer_Contact_Number],
    [Customer_Email_Address]
  --INTO dim_customer
 FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_customer]

  --creating sales person dimensional table
  SELECT DISTINCT 
     [Sales_Person_Name],
     [Sales_Person_Department]
  --INTO dim_sales_person
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_sales_person]

  --creating date dimensional table
  SELECT DISTINCT
     [Purchase_Date],
     [Ship_Date]
  --INTO dim_date
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_date]

  --creating payment dimensional table
  SELECT DISTINCT
     [Payment_Method]
  --INTO dim_payment
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_payment]

  --creating channel dimensional table
  SELECT DISTINCT
     [Channel]
  --INTO dim_channel
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_channel]

  --creating priority dimensional table
  SELECT DISTINCT
     [Priority]
  --INTO dim_priority
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[dim_priority]

  --creating sales fact table
  SELECT DISTINCT
    [Cost_Price],
    [Sale_Price],
    [Discount_Amount],
    [Finance_Amount],
    [Credit_Score],
    [Cost_of_Repairs],
    [Total_Sales_per_Employee],
    [PC_Market_Price]
  --INTO fact_sales
  FROM [ComputerStd].[dbo].[raw_pc_data]

  SELECT * FROM [ComputerStd].[dbo].[fact_sales]