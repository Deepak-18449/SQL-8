-- Create a new database
CREATE DATABASE moviesdb;

-- Switch to the database
USE moviesdb;

-- Create a table with columns
CREATE TABLE deepika (
    filmname VARCHAR(30),
    amount INT,
    director VARCHAR(30)
);

-- Show table structure
DESCRIBE deepika;

INSERT INTO deepika (filmname, amount, director)
VALUES 
('Kalki', 1000000, 'Karan Johar');

-- Select all rows from the table
SELECT * FROM deepika;




show databases;

use world;

describe country; -- table kon konse column hai and uske datatype

-- data access
select * from country;

select name as country_name, population, 
       population+1000-500+1000-500 as newpopulation 
from country;

-- select => column ko access krna
-- you can write a query(logic) in any case format
-- you can give a column name using as keyword



