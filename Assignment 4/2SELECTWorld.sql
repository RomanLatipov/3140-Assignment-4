SELECT name, continent, population FROM world
/* Prints the name, contitnent and population from world */

SELECT name FROM world WHERE population >= 200000000
/* Prints the names of countires whose population is at least 200 million */

SELECT name, gdp/population FROM world WHERE population >= 200000000
/* Prints the per capita gdp of countires whose population is at least 200 million */

 SELECT name, population/1000000 FROM world WHERE continent = 'South America'
/* Prints the name and population is millions of countires in South America */

SELECT name, population FROM world WHERE name IN('France','Germany','Italy')
/* Prints the name and population France, Germany and Italy */

SELECT name FROM world WHERE name LIKE '%United%'
/* Prints the name of countires that have the word 'United' */

SELECT name, population, area FROM world WHERE area >= 3000000 OR population >= 250000000
/* Prints countires that either have a population greater than 250 million or have an area of 3 million sq km */

SELECT name, population, area FROM world WHERE area >= 3000000 XOR population >= 250000000
/* Prints countires that either have a population greater than 250 million or have an area of 3 million sq km but not both */

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America'
/* Prints the name of countries in South America with thier population and gdp rounded to 2 decimal places */

SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp >= 1000000000000
/* Prints the per-capita gdp of trillion dollar countites to the nearest 1000 */

SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)
/* Prints the name and capital of countires whose name and capital are the same length */

SELECT name, capital FROM world WHERE LEFT(name,1) = LEFT(capital,1) AND name NOT LIKE capital
/* Prints the name and capital of countires whose cpaital and name start with the same letter but are not the same word */

