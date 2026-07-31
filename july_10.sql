-- Inbuilt functions
-- Scalar functions => apply on every row and return output for every row

-- String functions

-- String, number, dates
USE world;

-- Using CONCAT to join strings
SELECT name, continent,
       CONCAT(continent, ' have ', name, ' country') AS sentence
FROM country;

-- Using CONCAT_WS (Concatenate With Separator)
SELECT name, continent,
       CONCAT_WS(' ', continent, 'have', name, 'country') AS sentence
FROM country;

-- String functions example

SELECT name,
       UPPER(name),       -- convert to uppercase
       SUBSTR(name, 2)    -- substring starting from 2nd character
FROM country;

SELECT name,
       UPPER(name),       -- convert to uppercase
       SUBSTR(name, 2),    -- substring starting from 2nd character
       SUBSTR(name, 2,4)
FROM country
where name='Colombia';


select name,
	SUBSTR(name,-4)
FROM country
where name='Colombia';


-- String functions: length vs char_length

-- Check length of country names
SELECT name,
       LENGTH(name),      -- counts bytes
       CHAR_LENGTH(name)     -- counts characters
FROM country;

-- Example with multibyte character (Japanese Katakana 'カ')
SELECT LENGTH('カ')      AS byte_length,
       CHAR_LENGTH('カ') AS char_length;
       
-- Replace every 'a' in the country name with '@'
SELECT name,
       REPLACE(name, 'a', '@') AS replaced_name
FROM country;

-- String function: TRIM
-- Removes spaces from both sides of a string
SELECT TRIM('   he   llo   ') AS trimmed_string;

-- Date and time functions
-- Format: YYYY-MM-DD   <==>   DD/MM/YYYY (we can convert)

-- Get current date, time, timestamp, and current moment
SELECT CURRENT_DATE(),
       CURRENT_TIME(),
       CURRENT_TIMESTAMP(),
       NOW();

-- String function: LPAD
-- Pads the country name to length 6 with '-' on the left side

SELECT name,
       LPAD(name, 6, '-') AS padded_name
FROM country;

SELECT NOW(), adddate(now(),2);

-- Date arithmetic functions
-- Using ADDDATE to add or subtract intervals

SELECT NOW(),
       ADDDATE(NOW(), 1),
       ADDDATE(NOW(), -1),
       ADDDATE(NOW(), INTERVAL 1 YEAR),
       ADDDATE(NOW(), INTERVAL 1 WEEK);
       
-- Date and time extraction functions

SELECT NOW(),
       YEAR(NOW()),
       MONTH(NOW()),
       EXTRACT(MONTH FROM NOW()),
       EXTRACT(MINUTE FROM NOW()),
       WEEKDAY(NOW());
       
SELECT 
    NOW(), 
    DATE_FORMAT(NOW(), 'year is %Y month is %M , weekday is %W');


