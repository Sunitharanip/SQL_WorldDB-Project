use world;

#Task1--Using count, get the number of cities in the USA​

Select CountryCode, count(Name) as no_of_Cities
from city
WHERE CountryCode = "USA";

#Task2--Find out what the population and average life expectancy for people in Argentina (ARG) is.

SELECT Name AS Country,Population,LifeExpectancy AS avg_lifeExpectancy
FROM country
WHERE Name = "Argentina";

#TASK3--Using ORDER BY, LIMIT, what country has the highest life expectancy.

SELECT Name AS country,LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#TASK4--Select 25 cities around the world that start with the letter 'F' in a single SQL query.​
SELECT Name as city_name
FROM city
WHERE Name LIKE "F%"
LIMIT 25;

#TASK5--Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​

SELECT ID,Name as city_name,Population
FROM city
LIMIT 10;

#TASK6--Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​

SELECT Name AS city_name,Population
FROM city
WHERE Population > 2000000
ORDER BY Population DESC;

#TASK7--Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​

SELECT Name as city_name
FROM city
WHERE Name LIKE "Be%";

#TASK8--Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.​

SELECT Name As city_name,Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000
ORDER BY Population DESC;

#TASK9--Create a SQL statement to find a city with the lowest population in the city table.​

SELECT Name AS city_name,Population
FROM city
ORDER BY Population
LIMIT 1;

#--option2--

SELECT Name As city_name,Population 
FROM city
WHERE Population = (SELECT  MIN(Population)FROM city);

#------JOINS-----

#TASK 1--Create a SQL statement to find the capital of Spain (ESP).​
SELECT country.Name AS country_name,city.Name As capitalCity_name,country.Code
FROM city
INNER JOIN country
ON city.ID = country.Capital
WHERE Code = "ESP";

#TASK 2--Create a SQL statement to list all the languages spoken in the Caribbean region.​

SELECT Region,Language
FROM country
INNER JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode
WHERE Region = "Caribbean"
ORDER BY Language;

#TASK 3--Create a SQL statement to find all cities from the Europe continent.​

SELECT Continent,city.Name AS city_name
FROM country
INNER JOIN city
ON country.Code = city.CountryCode
WHERE Continent ="Europe"
ORDER BY city.Name;
