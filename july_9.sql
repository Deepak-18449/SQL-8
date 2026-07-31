-- Like Operator
use world;
show tables;

select * from city;
select name ,district,population 
from city 
where countrycode='ind' or population >=200000; 

-- Exact match
SELECT * 
FROM city 
WHERE name = 'B';

-- Pattern match using LIKE
SELECT * 
FROM city 
WHERE name LIKE '%a%'; 

-- Wildcard
SELECT * 
FROM city 
WHERE name LIKE 'T_%';

-- Q1
select name, population
from city
where name  like 'e%';
-- Q2
select name, population
from city
where name  like '%b_';
-- Q3
select name, population
from city
where name  like '_a%r_';
-- Q4
select name, population
from city
where name  like '%aa%';
-- Q5
select name, population
from city
where name  like '_%e_e%_';
