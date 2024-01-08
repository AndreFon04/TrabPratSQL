IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProductCategories') 
	CREATE TABLE [dbo].[ProductCategories]
	(
		[ProductCategoryID] [int],
		[Name] [nvarchar](50)
	)
ELSE
	TRUNCATE TABLE ProductCategories