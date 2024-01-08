IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Persons') 
	CREATE TABLE [dbo].[Persons]
	(
		[PersonID] [int],
		[PersonType] [nvarchar](20),
		[Title] [nvarchar](8),
		[FirstName] [nvarchar](50),
		[MiddleName] [nvarchar](50),
		[LastName] [nvarchar](50)
	)
ELSE
	TRUNCATE TABLE Persons