IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProductSubcategories') 
	CREATE TABLE [dbo].[ProductSubcategories](
		[ProductSubcategoryID] [int] NOT NULL,
		[ProductCategoryID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
	)
ELSE
	TRUNCATE TABLE ProductSubcategories