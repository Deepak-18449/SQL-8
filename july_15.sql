-- SQL_Zoo_ch=2 All Q
-- Q1 Ans

SELECT name, continent, population FROM world

-- Q2 Ans

SELECT name FROM world
WHERE population > 200000000

-- Q3 Ans

SELECT name,gdp/population FROM world
WHERE population > 200000000

-- Q4 Ans

SELECT name,population/1000000 from world
WHERE continent = 'South America'

-- Q5 Ans

select name, population
from world
where name  in ('France' , 'Germany' , 'Italy')

-- Q6 Ans

select name
from world
where name  like 'United%'

-- Q7 Ans

Select name,population,area from world
where area > 3000000 or population > 250000000

-- Q8 Ans

Select name,population,area from world
where (area > 3000000 and population < 250000000) or (population > 250000000 and area < 3000000)

-- Q9 Ans

select name,ROUND(population/1000000.0, 2),ROUND(gdp/1000000000.0, 2) from world
where continent = 'South America';

-- Q10 Ans

SELECT name,ROUND(gdp/population,-3) FROM world
WHERE gdp >= 1000000000000

-- Q11 Ans

SELECT name, capital
FROM countries
WHERE LENGTH(name) = LENGTH(capital);

-- Q12 Ans

SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
  AND name <> capital;

-- Q13 Ans

SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';

