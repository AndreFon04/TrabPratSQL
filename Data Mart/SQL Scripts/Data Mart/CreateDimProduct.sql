IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
	CREATE TABLE [dbo].[DimProduct] 
	(
		[ProductNumber] [nvarchar](25) NOT NULL,
		[Name] [nvarchar](50) NULL,
		[FinishedGoodsFlag] [bit] NULL,
		[Color] [nvarchar](15) NULL,
		[SafetyStockLevel] [smallint] NULL,
		[ReorderPoint] [smallint] NULL,
		[StandardCost] [money] NULL,
		[ListPrice] [money] NULL,
		[Size] [nvarchar](5) NULL,
		[SizeUnitMeasureCode] [nchar](3) NULL,
		[Weight] [decimal](8, 2) NULL,
		[WeightUnitMeasureCode] [nchar](3) NULL,
		[DaysToManufacture] [int] NULL,
		[ProductLine] [nvarchar](10) NULL,
		[Class] [nvarchar](10) NULL,
		[Style] [nvarchar](10) NULL,
		[ProductSubcategoryID] [int] NULL,
		[SellStartDate] [date] NULL,
		[SellEndDate] [date] NULL,
		[CategoryName] [nvarchar](50) NOT NULL,
		[SubCategoryName] [nvarchar](50) NOT NULL,
		CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
	(
		ProductNumber ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
		CREATE NONCLUSTERED INDEX [NonClusteredIndex-ItemID] ON [dbo].[DimProduct]
	(
		[ProductNumber] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END