SELECT yr, subject, winner FROM nobel WHERE yr = 1950
/* Prints the year, subject and winner from 1950 */

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature'
/* Prints the winner from 1962 for literature */

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein'
/* Prints the year and subject for which Albert Einstein won */

SELECT winner FROM nobel WHERE subject = 'Peace' AND yr >= 2000
/* Prints the name of Peace winners since the year 2000 */

SELECT * FROM nobel WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989
/* Prints all details of Literature winners from 1980 to 1989 */

SELECT * FROM nobel WHERE winner IN('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')
/* Prints all details of Theodore Roosevelt, Woodrow Wilson, Jimmy Carter and Barack Obama */

SELECT winner FROM nobel WHERE winner LIKE 'John%'
/* Prints all winners whose name is John */

SELECT * FROM nobel WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)
/* Prints the details of physics winners from 1980 and chemistry winners from 1984 */

SELECT * FROM nobel WHERE yr = 1980 AND NOT subject = 'Chemistry' AND NOT subject = 'Medicine'
/* Prints the winners from 1980 excluding Chemistry and Medicine */

SELECT * FROM nobel WHERE (subject = 'Medicine' AND yr < 1910) OR (subject ='Literature' AND yr >= 2004)
/* Prints all details of medacine winners berofrwe 1910 and all literature winners after 2004 */

SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG'
/* Prints all the details of PETER GRÜNBERG */

SELECT * FROM nobel WHERE winner LIKE 'EUGENE O''NEILL'
/* Prints the details of EUGENE O''NEILL */

SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC,winner
/* Prints the winner, year and subject where the winner's name starts with Sir and is orderd by the most recent wirst then by name */

SELECT winner, subject FROM nobel WHERE yr = 1984 ORDER BY subject IN ('Chemistry','Physics'), subject, winner
/* Prints the winner and subject from 1984 ordered by winner's name but Chemistry and Physics are last */



