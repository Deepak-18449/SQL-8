use world;

SELECT * from city;

-- Count countries per continent, only show continents with more than 30 countries
SELECT continent, COUNT(*) 
FROM country 
GROUP BY continent
HAVING COUNT(*) > 30;

-- Count countries per continent, only show continents with more than 30
SELECT continent, COUNT(*) 
FROM country 
GROUP BY continent
HAVING COUNT(*) > 30;

-- Count how many countries became independent in 1991
SELECT COUNT(*) 
FROM country 
WHERE indepyear = 1991;

-- Group countries by independence year and count them
SELECT indepyear, COUNT(name) 
FROM country 
GROUP BY indepyear
having count(name)>10;
