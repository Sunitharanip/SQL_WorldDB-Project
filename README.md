This Assignment explains how to query the "World" database using SQL statements. 
The "World" database contains tables such as Country, CountryLanguage, and City, which store information about countries, languages spoken in those countries, and cities respectively.

Prerequisites
Before running the SQL queries, ensure that you have access to the "World" database and a SQL client such as MySQL Workbench.

Queries
1. Retrieve all countries from the Country table:
sql
Copy code
SELECT * FROM Country;

2. Retrieve the name and population of all countries with a population greater than 100 million:
sql
Copy code
SELECT Name, Population
FROM Country
WHERE Population > 100000000;

3. Retrieve the total population of the world:
sql
Copy code
SELECT SUM(Population) AS TotalPopulation
FROM Country;

4. Retrieve the languages spoken in each country along with the percentage of the population speaking that language:
sql
Copy code
SELECT c.Name AS CountryName, cl.Language AS Language, (cl.Percentage * c.Population / 100) AS Population
FROM Country c
JOIN CountryLanguage cl ON c.Code = cl.CountryCode
ORDER BY CountryName, Population DESC;

.5 Retrieve the number of cities in each country:
sql
Copy code
SELECT c.Name AS CountryName, COUNT(*) AS NumberOfCities
FROM Country c
JOIN City ci ON c.Code = ci.CountryCode
GROUP BY CountryName;

Conclusion
These SQL queries provide a starting point for extracting useful information from the "World" database. Feel free to modify and expand upon these queries to suit your specific requirements.

ER Diagram of World DataBase
![CityTableER_Diagtam](https://github.com/Sunitharanip/SQL_WorldDB-Project/assets/156103999/fb09b961-2100-4327-b95c-5609be5f0221)






