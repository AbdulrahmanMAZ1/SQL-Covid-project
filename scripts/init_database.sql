USE MASTER;
GO

-- Drop and Recreate the 'Portfolio Project' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'Portfolio Project')
BEGIN 
	ALTER DATABASE Portfolio Project SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Portfolio Project;
END;
GO

-- Create The 'Portfolio Project' database
CREATE DATABASE Portfolio Project;
GO

USE Portfolio Project
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
