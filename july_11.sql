--  Numeric Functions
use world;

select * from city;

-- Rounding with negative precision
SELECT 9, ROUND(13.2, -1);

-- Round to nearest hundred
SELECT 252.2, ROUND(252.2, -2);

-- Round to nearest thousand
SELECT 254.2, ROUND(7654.2, -3) , mod(3,7);

-- Compare ROUND vs TRUNCATE
SELECT ROUND(34.857, 1), TRUNCATE(34.857, 1);

-- Floor vs Ceil
select floor(34.8887), ceil(34.0001);

-- Using ABS() to get absolute values
SELECT ABS(10.1111), ABS(-10.123123312);




