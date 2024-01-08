IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactSales')
	CREATE TABLE [dbo].[FactSales] 
	(
		[DateKey] [int] NOT NULL,
		[CustomerID] [int] NOT NULL,
		[ProductNumber] [nvarchar](25) NOT NULL,
		[SalesOrderID] [int] NOT NULL,
		[SalesOrderDetailID] [int] NOT NULL,
		[OrderQty] [smallint] NOT NULL,
		[UnitPrice] [money] NOT NULL,
		[UnitPriceDiscountPercentage] [float] NOT NULL,
		[LineTotal] [numeric](38, 6) NOT NULL,
		[UnitMeasureCode] [nchar](3) NOT NULL,
	CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC,
		[CustomerID] ASC,
		[ProductNumber] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]