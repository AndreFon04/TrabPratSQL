IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers') 
	CREATE TABLE [dbo].[Customers]
	(
		[CustomerID] [int],
		[PersonID] [int]	
	)
ELSE
	TRUNCATE TABLE Customers