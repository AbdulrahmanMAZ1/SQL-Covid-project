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
- **Naming Conventions**: Use snake_case, with lowercase letters and underscores (`_`) to separate words.
- **Language**: Use English for all names.
- **Avoid Reserved Words**: Do not use SQL reserved words as object names.
## Table Naming Conventions

### **Bronze Rules**
- All names must start with the source system name, and table names must match their original names without renaming.
- **`<sourcesystem>_<entity>`**
- `<sourcesystem>`: Name of the source system (e.g.,`hdp`,`vac`).
- `<entity>`: Exact table name from the source system.
- Example: `vac_covid_deaths` → covid information from the VAC system.

### Silver Rules
- All names must start with the source system name, and table names must match their original names without renaming.
- **`<sourcesystem>_<entity>`**
- `<sourcesystem>`: Name of the source system (e.g.,`hdp`,`vac`).
- `<entity>`: Exact table name from the source system.
- Example: `vac_covid_deaths` → covid information from the VAC system.

### Gold Rules
- All names must use meaningful, business-aligned names for tables, starting with the category prefix.
- **`<category>_<entity>`**
- `<category>`: Describes the role of the table, such as `dim` (dimension) or `fact` (fact table).
- `<entity>`: : Descriptive name of the table, aligned with the business domain.

## Column Naming Conventions

### **Surrogate Keys** 
- All primary keys in dimension tables must use the suffix `_key`.
- **`<table_name>_key`**
  - `<table_name>`: Refers to the name of the table or entity the key belongs to.
  - `_key`: A suffix indicating that this column is a surrogate key.

### **Technical Columns**
- All technical columns must start with the prefix `dwh_`, followed by a descriptive name indicating the column's purpose.
- **`dwh_<column_name>`**
  - `dwh`: Prefix exclusively for system-generated metadata.
  - `<column_name>`: Descriptive name indicating the column's purpose.
  - Example: `dwh_load_date` → System-generated column used to store the date when the record was loaded.


