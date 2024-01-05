IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
	CREATE TABLE [dbo].[DimCustomer] 
	(
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[CustomerID] [int] NOT NULL,
		[DateOfBirth] [datetime] NULL,
		[Gender] [nchar](6) NOT NULL,
		[Language] [nvarchar](50) NULL,
		[CountryName] [nvarchar](255) NULL,
		[CountryCode] [nvarchar](20) NULL,
		[CountryEuroZone] [bit] NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NOT NULL,
		[VipCustomer] [bit] NOT NULL
		CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY]
	CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerID] ON [dbo].[DimCustomer]
	(
		[CustomerID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END
	ELSE TRUNCATE TABLE DimCustomer