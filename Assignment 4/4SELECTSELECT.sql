SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name = 'Russia')
/* Lists countires whose poluations are larger than Russia */

SELECT name FROM world WHERE continent = 'Europe' and GDP/population > (SELECT GDP/population FROM world WHERE name = 'United Kingdom')
/* Prints the names of countires whose gdp per capita is greater than the United Kingdom */

SELECT name, continent FROM world WHERE continent in (SELECT DISTINCT continent FROM world WHERE name IN ('Argentina','Australia')) ORDER BY name
/* Prints the names of countries and continents of countiries that are in contitnets that also have Argentina or Australia */

SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland')
/* Prints the name and population of countires that have a population that greater than Canada but less than Poland */

SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany') * 100, 0), '%') as percentage FROM world WHERE continent = 'Europe'
/* Prints the name of each country in Europe and thier population as a percentage of Germany */

SELECT name FROM world WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND Continent = 'Europe')
/* Prints the names of countires whose gdp is greater than every country in Europe */

SELECT continent, name, area FROM world x WHERE area >= ALL(SELECT area FROM world y WHERE y.continent = x.continent AND area > 0)
/* Prints the name continent and area of the largest countires in each contintet */

SELECT continent, name FROM world x WHERE name <= ALL (SELECT name FROM world y WHERE y.continent = x.continent)
/* Prints the continent and name of countires in alphabetical order */

SELECT name, continent, population FROM world x WHERE 25000000 >= ALL(SELECT population FROM world y WHERE y.continent = x.continent)
/* Prints the name continent and population of continents whose countries all have a population less than 25,000,000 */

SELECT name, continent FROM world x WHERE x.population/3 >= ALL (SELECT population FROM world y WHERE y.continent = x.continent AND y.name <> x.name AND y.population > 0)
/* Prints the name and continent of countries that hav more than 3 times the population of their neighbors */