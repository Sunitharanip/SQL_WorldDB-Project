This Assignment explains how to query the "World" database using SQL statements. 
The "World" database contains tables such as Country, CountryLanguage, and City, which store information about countries, languages spoken in those countries, and cities respectively.

Prerequisites
Before running the SQL queries, ensure that you have access to the "World" database and a SQL client such as MySQL Workbench.

# SQL Statements and Their Function
SQL (Structured Query Language) is a standard programming language used for managing and manipulating relational databases.



1. **SELECT Statement:**
   - Function: Retrieves data from one or more tables.
2. **INSERT INTO Statement:**
   - Function: Inserts new records into a table.
3. **UPDATE Statement:**
   - Function: Modifies existing records in a table.
4. **DELETE Statement:**
   - Function: Deletes records from a table.
5. **CREATE TABLE Statement:**
   - Function: Creates a new table in the database.
6. **ALTER TABLE Statement:**
   - Function: Modifies an existing table structure.
7. **DROP TABLE Statement:**
   - Function: Deletes a table from the database.
8. **SELECT DISTINCT Statement:**
   - Function: Retrieves unique values from a column.
9. **GROUP BY Statement:**
    - Function: Groups rows that have the same values into summary rows.

----Queries

1. Retrieve all countries from the Country table.
   
SELECT * FROM Country;

2. Retrieve the name and population of all countries with a population greater than 100 million:

SELECT Name, Population
FROM Country
WHERE Population > 100000000;

3. Retrieve the total population of the world:

SELECT SUM(Population) AS TotalPopulation
FROM Country;

4. Retrieve the languages spoken in each country along with the percentage of the population speaking that language:

SELECT c.Name AS CountryName, cl.Language AS Language, (cl.Percentage * c.Population / 100) AS Population
FROM Country c
JOIN CountryLanguage cl ON c.Code = cl.CountryCode
ORDER BY CountryName, Population DESC;

5.Retrieve the number of cities in each country:

SELECT c.Name AS CountryName, COUNT(*) AS NumberOfCities
FROM Country c
JOIN City ci ON c.Code = ci.CountryCode
GROUP BY CountryName;
![image](https://github.com/Sunitharanip/SQL_WorldDB-Project/assets/156103999/0e4a739a-a514-4dea-ba5a-cc4000d85376)

Conclusion
These SQL queries provide a starting point for extracting useful information from the "World" database. Feel free to modify and expand upon these queries to suit your specific requirements.

ER Diagram of World DataBase
![CityTableER_Diagtam](https://github.com/Sunitharanip/SQL_WorldDB-Project/assets/156103999/fb09b961-2100-4327-b95c-5609be5f0221)






