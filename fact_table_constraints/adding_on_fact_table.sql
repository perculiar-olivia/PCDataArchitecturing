CONSTRAINT fk_LocationID
		   foreign key (LocationID)
		   references [ComputerStd].[dbo].[dim_location] (LocationID),
CONSTRAINT fk_StoreID
		   foreign key (StoreID)
		   references [ComputerStd].[dbo].[dim_store] (StoreID),
CONSTRAINT fk_ProductID
		   foreign key (ProductID)
		   references [ComputerStd].[dbo].[dim_product] (ProductID),
CONSTRAINT fk_CustomerID
		   foreign key (CustomerID)
		   references [ComputerStd].[dbo].[dim_customer] (CustomerID),
CONSTRAINT fk_SalesPersonID
		   foreign key (SalesPersonID)
		   references [ComputerStd].[dbo].[dim_sales_person] (SalesPersonID),
CONSTRAINT fk_DateID
		   foreign key (DateID)
		   references [ComputerStd].[dbo].[dim_date] (DateID),
CONSTRAINT fk_PaymentID
		   foreign key (PaymentID)
		   references [ComputerStd].[dbo].[dim_payment] (PaymentID),
CONSTRAINT fk_ChannelID
		   foreign key (ChannelID)
		   references [ComputerStd].[dbo].[dim_channel] (ChannelID),
CONSTRAINT fk_PriorityID
		   foreign key (PriorityID)
		   references [ComputerStd].[dbo].[dim_priority] (PriorityID),