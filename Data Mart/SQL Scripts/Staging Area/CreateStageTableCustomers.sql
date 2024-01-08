IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers') 
	CREATE TABLE [dbo].[Customers]
	(
		[CustomerID] [int] NOT NULL,
		[PersonID] [int] NULL	
	)
ELSE
	TRUNCATE TABLE Customers