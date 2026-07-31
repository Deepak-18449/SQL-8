use world;

select distinct(continent) from country;
-- Group by
select continent from country group by continent;

select continent, count(name) from country group by continent;

-- Count total names and distinct names
SELECT COUNT(name), COUNT(DISTINCT(name)) 
FROM country;

-- Count how many times each name appears
SELECT name, COUNT(name) 
FROM country 
GROUP BY name;

-- Count how many city names are in Zuid-Holland
SELECT COUNT(name) 
FROM city 
WHERE district = 'Zuid-Holland';

-- Count how many city names per district
SELECT district, COUNT(name),sum(population)
FROM city 
GROUP BY district;

-- Find all the countrycode total country
select countryCode,count(name) 
from city 
group by countryCode;

Select * from country;
-- 1 Count how many countries have lifeExpectancy between 70.1 and 83.5
SELECT lifeExpectancy, COUNT(name) 
FROM country
WHERE lifeExpectancy BETWEEN 70.1 AND 83.5
GROUP BY lifeExpectancy;

-- 2 find the total population after 1990
select sum(population) ,indepyear
from country
where IndepYear >= 1990;

-- 3 Count countries that are independent
SELECT COUNT(name) 
FROM country
WHERE IndepYear IS NULL;

-- 4 Total number of countries and total surface area per region
SELECT region,
       COUNT(name) ,
       SUM(surfaceArea) 
FROM country
GROUP BY region;

-- 5 Total countries per continent
SELECT continent,
	COUNT(name)
FROM country
GROUP BY continent;

-- 6 Total countries per region and continent
SELECT continent,
       region,
       COUNT(name) 
FROM country
GROUP BY continent, region;



