/*
===============================================================================
DDL Script: Create Bronze Layer Tables
===============================================================================
Purpose:
    This script defines the table structures for the 'bronze' schema. 
    It first drops the existing tables (if they already exist) to ensure 
    the schema is recreated from scratch with the correct definitions.

Usage:
    Run this script whenever you need to rebuild the bronze-layer tables 
    to reflect any schema changes or updates in the data model.
===============================================================================
*/

IF OBJECT_ID ('bronze.hdp_covid_vaccination' , 'U') IS NOT NULL
    DROP TABLE bronze.hdp_covid_vaccination;
GO

CREATE TABLE bronze.hdp_covid_vaccination
(
    iso_code NVARCHAR(10) NULL,
    continent NVARCHAR(50) NULL,
    location NVARCHAR(200) NULL,
    date DATE NULL,
    new_tests BIGINT NULL,
    total_tests BIGINT NULL,
    total_tests_per_thousand DECIMAL(12,6) NULL,
    new_tests_per_thousand DECIMAL(12,6) NULL,
    new_tests_smoothed DECIMAL(12,6) NULL,                
    new_tests_smoothed_per_thousand DECIMAL(12,6) NULL,
    positive_rate DECIMAL(8,6) NULL,
    tests_per_case DECIMAL(12,6) NULL,
    tests_units NVARCHAR(100) NULL,
    total_vaccinations BIGINT NULL,
    people_vaccinated BIGINT NULL,
    people_fully_vaccinated BIGINT NULL,
    new_vaccinations BIGINT NULL,
    new_vaccinations_smoothed DECIMAL(12,6) NULL,        
    total_vaccinations_per_hundred DECIMAL(10,4) NULL,
    people_vaccinated_per_hundred DECIMAL(10,4) NULL,
    people_fully_vaccinated_per_hundred DECIMAL(10,4) NULL,
    new_vaccinations_smoothed_per_million DECIMAL(12,6) NULL,
    stringency_index DECIMAL(10,4) NULL,
    population_density DECIMAL(12,6) NULL,
    median_age DECIMAL(6,2) NULL,                        
    aged_65_older DECIMAL(6,3) NULL,
    aged_70_older DECIMAL(6,3) NULL,
    gdp_per_capita DECIMAL(14,2) NULL,
    extreme_poverty DECIMAL(6,3) NULL,
    cardiovasc_death_rate DECIMAL(8,3) NULL,
    diabetes_prevalence DECIMAL(6,3) NULL,
    female_smokers DECIMAL(6,3) NULL,
    male_smokers DECIMAL(6,3) NULL,
    handwashing_facilities DECIMAL(6,3) NULL,
    hospital_beds_per_thousand DECIMAL(6,3) NULL,
    life_expectancy DECIMAL(5,2) NULL,
    human_development_index DECIMAL(4,3) NULL
);
GO

IF OBJECT_ID ('bronze.vac_covid_deaths' , 'U') IS NOT NULL
    DROP TABLE bronze.vac_covid_deaths;
GO
  
CREATE TABLE bronze.vac_covid_deaths
(
  iso_code NVARCHAR(10) NULL,
  continent NVARCHAR(50) NULL,
  location NVARCHAR(200) NULL,
  date DATE NULL,
  total_cases BIGINT NULL,
  new_cases INT NULL,
  new_cases_smoothed DECIMAL(12,6) NULL,
  total_deaths BIGINT NULL,
  new_deaths INT NULL,
  new_deaths_smoothed DECIMAL(12,6) NULL,
  total_cases_per_million DECIMAL(12,6) NULL,
  new_cases_per_million DECIMAL(12,6) NULL,
  new_cases_smoothed_per_million DECIMAL(12,6) NULL,
  total_deaths_per_million DECIMAL(12,6) NULL,
  new_deaths_per_million DECIMAL(12,6) NULL,
  new_deaths_smoothed_per_million DECIMAL(12,6) NULL,
  reproduction_rate DECIMAL(6,3) NULL,
  icu_patients INT NULL,
  icu_patients_per_million DECIMAL(12,6) NULL,
  hosp_patients BIGINT NULL,
  hosp_patients_per_million DECIMAL(12,6) NULL,
  weekly_icu_admissions DECIMAL(12,6) NULL,
  weekly_icu_admissions_per_million DECIMAL(12,6) NULL,
  weekly_hosp_admissions DECIMAL(12,6) NULL,
  weekly_hosp_admissions_per_million DECIMAL(12,6) NULL,
  new_tests BIGINT NULL,
  total_tests BIGINT NULL,
  total_tests_per_thousand DECIMAL(12,6) NULL,
  new_tests_per_thousand DECIMAL(12,6) NULL,
  new_tests_smoothed DECIMAL(12,6) NULL,
  new_tests_smoothed_per_thousand DECIMAL(12,6) NULL,
  positive_rate DECIMAL(8,6) NULL,
  tests_per_case DECIMAL(12,6) NULL,
  tests_units NVARCHAR(100) NULL,
  total_vaccinations BIGINT NULL,
  people_vaccinated BIGINT NULL,
  people_fully_vaccinated BIGINT NULL,
  new_vaccinations BIGINT NULL,
  new_vaccinations_smoothed DECIMAL(12,6) NULL,
  total_vaccinations_per_hundred DECIMAL(10,4) NULL,
  people_vaccinated_per_hundred DECIMAL(10,4) NULL,
  people_fully_vaccinated_per_hundred DECIMAL(10,4) NULL,
  new_vaccinations_smoothed_per_million DECIMAL(12,6) NULL,
  stringency_index DECIMAL(10,4) NULL,
  population BIGINT NULL,
  population_density DECIMAL(12,6) NULL,
  median_age DECIMAL(6,2) NULL,
  aged_65_older DECIMAL(6,3) NULL,
  aged_70_older DECIMAL(6,3) NULL,
  gdp_per_capita DECIMAL(14,2) NULL,
  extreme_poverty DECIMAL(6,3) NULL,
  cardiovasc_death_rate DECIMAL(8,3) NULL,
  diabetes_prevalence DECIMAL(6,3) NULL,
  female_smokers DECIMAL(6,3) NULL,
  male_smokers DECIMAL(6,3) NULL,
  handwashing_facilities DECIMAL(6,3) NULL,
  hospital_beds_per_thousand DECIMAL(6,3) NULL,
  life_expectancy DECIMAL(5,2) NULL,
  human_development_index DECIMAL(4,3) NULL
);
GO
