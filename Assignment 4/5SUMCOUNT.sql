SELECT SUM(population) FROM world
/*Prints the total population of the world */

SELECT DISTINCT continent FROM world
/* Prints all unique continents */

SELECT SUM(gdp) FROM world WHERE continent = 'Africa'
/* Prints the total gdp of contries in Africa */

SELECT COUNT(name) FROM world WHERE area >= 1000000
/* Prints the number of countries that have an area of at least 1,000,000 */

SELECT SUM(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania')
/* Prints the total populations of Estonia, Latvia and Lithuania */

SELECT continent, COUNT(name) FROM world GROUP BY continent
/* Prints the continent and the number of countires in said continent */

SELECT continent, COUNT(name) FROM world WHERE population >= 10000000 GROUP BY continent
/* Prints the name of a continent the number of countires in said continent that have a population of at least 10 million */

SELECT continent FROM world GROUP BY continent HAVING SUM(population) >=100000000
/* Prints the names of Continents that have a total population of at least 100 million */