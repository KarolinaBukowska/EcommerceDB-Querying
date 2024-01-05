# Ecommerce DB Querying

## Purpose 🎯  

This repository serves as a comprehensive showcase of my proficiency in applying SQL within the context of a QA Engineer's responsibilities. Specifically tailored to the needs of an ecommerce web application, I've developed a mock database for the purpose of executing SQL queries aimed at data validation. The goal is to demonstrate not only technical competence but also the practical application of SQL within an ecommerce system.

### SQL Skills Demonstrated in This Repository 🛠️

**Basic SQL SELECT:**
Utilized fundamental SELECT statements to retrieve specific data from the database.
**SQL CASE to Filter Records:**
Applied SQL CASE statements to dynamically filter and categorize records based on specified conditions.

**INNER JOIN:**
Demonstrated the use of INNER JOIN to combine data from different tables, enhancing query capabilities.

**Insert and Delete Queries:**
Implemented SQL INSERT queries to add new data and DELETE queries for efficient data removal.

**Constraints:**
Utilized constraints such as PRIMARY KEY and FOREIGN KEY to maintain data integrity and enforce relationships between tables.

## Files Overview 📁

### Creating Tables

* Creation of the Database
* Creation of the tables and establishing relation between them through FOREIGN KEY

### Populating Tables

* Populating database with the appropriate data
* Altering a table by adding additional column

### SQL Queries

The queries in this file are concerned with the following questions:

**GDPR Compliance**
* Verifying the deletion of customer data
* Verifying the deletion of related data in other tables

**Verification of the Order Fullfilment**
* Retrieving data for orders, where the shipping date surpasses required date

**Verification of the Stock Status**
* Retrieving the data for the products, which are out of stock or discontinued

**Verification of the Payment Status**
* Retrieving the data for orders with pending transactions
* Retrieving the related data from other Tables, including customer details

**Delivery Timeline**
* Identifying orders with significant delays between order and shipping dates 
