--creating location dimensional table
SELECT DISTINCT 
      [Continent],
      [Country_or_State],
      [Province_or_City]
INTO dim_location
FROM raw_pc_data

SELECT * FROM dim_location

--creating store dimensional table
SELECT DISTINCT 
    [Shop_Name],
    [Shop_Age]
  INTO dim_store
  FROM raw_pc_data

  SELECT * FROM dim_store

  --creating product dimensional table
  SELECT DISTINCT 
    [PC_Make],
    [PC_Model],
    [RAM],
    [Storage_Capacity],
    [Storage_Type]
  INTO dim_product
  FROM raw_pc_data

  SELECT * FROM dim_product

  --creating customer dimensional table
  SELECT DISTINCT 
    [Customer_Name],
    [Customer_Surname],
    [Customer_Contact_Number],
    [Customer_Email_Address]
  INTO dim_customer
  FROM raw_pc_data

  SELECT * FROM dim_customer

  --creating sales person dimensional table
  SELECT DISTINCT 
     [Sales_Person_Name],
     [Sales_Person_Department]
  INTO dim_sales_person
  FROM raw_pc_data

  SELECT * FROM dim_sales_person

  --creating date dimensional table
  SELECT DISTINCT
     [Purchase_Date],
     [Ship_Date]
  INTO dim_date
  FROM raw_pc_data

  SELECT * FROM dim_date

  --creating payment dimensional table
  SELECT DISTINCT
     [Payment_Method]
  INTO dim_payment
  FROM raw_pc_data

  SELECT * FROM dim_payment

  --creating channel dimensional table
  SELECT DISTINCT
     [Channel]
  INTO dim_channel
  FROM raw_pc_data

  SELECT * FROM dim_channel

  --creating priority dimensional table
  SELECT DISTINCT
     [Priority]
  INTO dim_priority
  FROM raw_pc_data

  SELECT * FROM dim_priority

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
  INTO fact_sales
  FROM raw_pc_data

  SELECT * FROM fact_sales
  