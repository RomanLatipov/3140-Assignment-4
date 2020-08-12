SELECT name FROM world WHERE name LIKE 'Y%'
/* Finds all the countries that start with 'Y' */

SELECT name FROM world WHERE name LIKE '%y'
/* Finds all countires that end with 'y' */

SELECT name FROM world WHERE name LIKE '%x%'
/* Finds all countires that contain 'x' */

SELECT name FROM world WHERE name LIKE '%land'
/* Finds all countires that end with 'land' */

SELECT name FROM world WHERE name LIKE 'C%ia'
/* Fins all countires that start with 'C' and 'ia' */

SELECT name FROM world WHERE name LIKE '%oo%'
/* Finds all countries that have 'oo' */

SELECT name FROM world WHERE name LIKE '%a%a%a%'
/* Finds all countires that have 3 or more 'a' */

SELECT name FROM world WHERE name LIKE '_t%' ORDER BY name
/* Finds all countires that have a t as thier second character and prints in alphabetical order */

SELECT name FROM world WHERE name LIKE '%o__o%'
/* Finds all countires that have two 'o's eperated by 2 chracters */

SELECT name FROM world WHERE name LIKE '____'
/* Finds all countires that have 4 characters */

SELECT name FROM world WHERE name Like capital
/* Finds all countires whose capital is the same as the name of the countiry */

SELECT name FROM world WHERE capital LIKE '%City'
/* Finds all countires whose cpaital contains the word 'Cty' */

SELECT capital, name FROM world WHERE capital LIKE CONCAT('%', name, '%')
/* Finds all countires whose capital contains the name of the country */

SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'
/* Prints the names of countires that contain the letters 'a e i o u' but not spaces */


