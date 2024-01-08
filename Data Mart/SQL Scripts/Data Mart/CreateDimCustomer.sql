IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
	CREATE TABLE [dbo].[DimCustomer] 
	(
		[CustomerID] [int] NOT NULL,
		[PersonID] [int] NULL,
		[PersonType] [nvarchar](20) NOT NULL,
		[Title] [nvarchar](8) NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[MiddleName] [nvarchar](50) NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL
		CONSTRAINT [PK_DimCard] PRIMARY KEY CLUSTERED 
	( 
		[CustomerID] ASC
	) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
	
	CREATE NONCLUSTERED INDEX [NonClusteredIndex-CardID] ON [dbo].[DimCustomer]
	(
		[CustomerID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)

END