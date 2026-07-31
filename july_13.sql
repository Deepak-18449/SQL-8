-- multiple rows functions  
USE world;  
SELECT DISTINCT(continent)  
FROM country;

-- Get all country names
SELECT name FROM country;

-- Get unique country names
SELECT DISTINCT(name) FROM country;

-- Count continents and distinct continents
SELECT COUNT(continent), COUNT(DISTINCT(continent)) 
FROM country;

-- Count country names and distinct country names
SELECT COUNT(name), COUNT(DISTINCT(name)) 
FROM country;

-- Aggregate Functions 
SELECT COUNT(continent), 
       MAX(continent),
       SUM(population),
       AVG(population),
       MIN(continent) 
FROM country;

-- population => non-aggregated column
-- count(population) => aggregated function
SELECT population, COUNT(population) 
FROM country;

SELECT AVG(population) - AVG(REPLACE(population, 1, 4)) 
FROM country;

SELECT AVG(REPLACE(population, 1, 4)) 
FROM country;

-- data sort krna (ORDER BY clause)
SELECT name, continent, region, population 
FROM country
ORDER BY population,name;

-- region ascending order sort
-- in each region we sort the data based on population in descending order
SELECT name, continent, region, population 
FROM country
ORDER BY region, population DESC;
