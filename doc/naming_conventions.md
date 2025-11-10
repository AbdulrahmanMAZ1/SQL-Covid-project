# **Naming Conventions**

This document outlines the naming conventions used for schemas, tables, views, columns, and other objects in the data warehouse.
## **Table of contents**

1. [General Principles](#genral-priciples)
2. [Table Naming Conventions](#table-naming-convention)
    - [Bronze Rules](#bronze-rule)
    - [Silver Rules](#silver-rule)
    - [Gold Rules](#gold-rule)
3. [Column Naming Conventions](#colum-naming-conventions)
    - [Surrogate Keys](#surrogate-key)
    - [Techniacal columns](#technical-columns)
4. [Stored Procedure](#stored-procedure)
---
## Genaral Principles
- **Naming Conventions**: Use snake_case, with lowercase letters and underscores (_) to separate words.
- **Language**: Use English for all names.
- **Avoid Reserved Words**: Do not use SQL reserved words as object names.
## Table Naming Conventions
**Bronze Rules**
- All names must start with the source system name, and table names must match their original names without renaming
- <sourcesystem>_<entity>
- <sourcesystem>: Name of the source system (e.g.,hdp, vac)
- <entity>: Exact table name from the source system
- Example: vac_covid_deaths → covid information from the VAC system
