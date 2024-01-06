IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SalesOrderHeaders') 
	CREATE TABLE [dbo].[SalesOrderHeaders](
		[SalesOrderID] [int] NOT NULL,
		[OrderDate] [date] NOT NULL,
		[DueDate] [date] NOT NULL,
		[ShipDate] [date] NOT NULL,
		[CustomerID] [int] NOT NULL,
		[OrderTotal] [money] NOT NULL,
	)
ELSE
	TRUNCATE TABLE SalesOrderHeaders