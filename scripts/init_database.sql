USE MASTER;
GO

-- Drop and Recreate the 'covid_db' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'covid_db')
BEGIN 
	ALTER DATABASE covid_db SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE covid_db;
END;
GO

-- Create The 'covid_db' database
CREATE DATABASE covid_db;
GO

USE covid_db
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
