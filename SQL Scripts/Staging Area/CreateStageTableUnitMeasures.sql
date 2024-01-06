IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'UnitMeasures') 
	CREATE TABLE [dbo].[UnitMeasures](
		[UnitMeasureCode] [nchar](3) NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
	)
ELSE
	TRUNCATE TABLE UnitMeasures