/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
	This script is designed to create a new database called DataWarehouse.
	Before doing so, it checks whether the database already exists.
	If it does, the existing database is dropped and recreated.
	After creation, the script also sets up three schemas within the database: bronze, silver, and gold.
	
WARNING:
	Executing this script will delete the entire DataWarehouse database if it already exists.
	All existing data will be permanently lost.
	Use this script with caution, and make sure you have valid backups before proceeding.
*/

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
