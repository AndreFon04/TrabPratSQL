IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SalesOrderDetails') 
	CREATE TABLE [dbo].[SalesOrderDetails](
		[SalesOrderID] [int] NOT NULL,
		[SalesOrderDetailID] [int] NOT NULL,
		[ProductNumber] [nvarchar](25) NOT NULL,
		[OrderQty] [smallint] NOT NULL,
		[UnitPrice] [money] NOT NULL,
		[UnitPriceDiscountPercentage] [float] NOT NULL,
		[LineTotal] [numeric](38, 6) NOT NULL,
	)
ELSE
	TRUNCATE TABLE SalesOrderDetails