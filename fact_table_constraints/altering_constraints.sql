--ADDING

--location
ALTER TABLE fact_sales
ADD CONSTRAINT fk_LocationID
FOREIGN KEY (LocationID)
REFERENCES [ComputerStd].[dbo].[dim_location] (LocationID);

--store
ALTER TABLE fact_sales
ADD CONSTRAINT fk_StoreID
FOREIGN KEY (StoreID)
REFERENCES [ComputerStd].[dbo].[dim_store] (StoreID);

--product
ALTER TABLE fact_sales
ADD CONSTRAINT fk_ProductID
FOREIGN KEY (ProductID)
REFERENCES [ComputerStd].[dbo].[dim_product] (ProductID);

--customer
ALTER TABLE fact_sales
ADD CONSTRAINT fk_CustomerID
FOREIGN KEY (CustomerID)
REFERENCES [ComputerStd].[dbo].[dim_customer] (CustomerID);

--sales person
ALTER TABLE fact_sales
ADD CONSTRAINT fk_SalesPersonID
FOREIGN KEY (SalesPersonID)
REFERENCES [ComputerStd].[dbo].[dim_sales_person] (SalesPersonID);

--date
ALTER TABLE fact_sales
ADD CONSTRAINT fk_DateID
FOREIGN KEY (DateID)
REFERENCES [ComputerStd].[dbo].[dim_date] (DateID);

--payment
ALTER TABLE fact_sales
ADD CONSTRAINT fk_PaymentID
FOREIGN KEY (PaymentID)
REFERENCES [ComputerStd].[dbo].[dim_payment] (PaymentID);

--channel
ALTER TABLE fact_sales
ADD CONSTRAINT fk_ChannelID
FOREIGN KEY (ChannelID)
REFERENCES [ComputerStd].[dbo].[dim_channel] (ChannelID);

--priority
ALTER TABLE fact_sales
ADD CONSTRAINT fk_PriorityID
FOREIGN KEY (PriorityID)
REFERENCES [ComputerStd].[dbo].[dim_priority] (PriorityID);


--DROPPING

--location
ALTER TABLE fact_sales
DROP CONSTRAINT fk_LocationID;


--store
ALTER TABLE fact_sales
DROP CONSTRAINT fk_StoreID


--product
ALTER TABLE fact_sales
DROP CONSTRAINT fk_ProductID;


--customer
ALTER TABLE fact_sales
DROP CONSTRAINT fk_CustomerID;


--sales person
ALTER TABLE fact_sales
DROP CONSTRAINT fk_SalesPersonID;


--date
ALTER TABLE fact_sales
DROP CONSTRAINT fk_DateID;


--payment
ALTER TABLE fact_sales
DROP CONSTRAINT fk_PaymentID


--channel
ALTER TABLE fact_sales
DROP CONSTRAINT fk_ChannelID;

--priority
ALTER TABLE fact_sales
DROP CONSTRAINT fk_PriorityID;
