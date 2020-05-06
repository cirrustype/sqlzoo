--SQL zoo, SELECT FROM world 

--Austin Schenk, 4/23/2020


--Introduction 

--Problem 1:

SELECT name, continent, population FROM world;
--returns, for all countries in the world table; name, continent, and population. 


--Problem 2: Large Countries
--using WHERE to filter records
--Show the name for the countries that have a     population of at least 200 million. 200 million is 200000000, there are eight zeros. 

SELECT name FROM world
  WHERE population > 200000000 
--Correct


--Problem 3: Per capita GDP 
SELECT name, gdp/population FROM world
  WHERE population > 200000000 
--correct 

--Problem 4: South America in millions 
--Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions. 

SELECT name, population/1000000 FROM world
  WHERE continent = 'South America' --CORRECT 


--Problem 5: France, Germany, Italy
--Show the name and population for France, Germany, Italy 

SELECT name, population FROM world
  WHERE name IN ('France', 'Germany', 'Italy')
-- Correct


--Problem 6: United 
--Show the countries which have a name that includes the word 'United' 

SELECT name FROM world
  WHERE name LIKE 'United%' OR name LIKE '%United'
--Correct

--Problem 7: Two ways to be big
--A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

--Show the countries that are bug by area or big by population. Show name, population, and area. 

SELECT name, population, area FROM world 
  WHERE population > 250000000 OR area > 3000000
--Correct


--Problem 8: One or the other (but not both)
--Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

    --Australia has a big area but a small population, it should be included.
    --Indonesia has a big population but a small area, it should be included.
    --China has a big population and big area, it should be excluded.
    --United Kingdom has a small population and a small area, it should be --excluded.

SELECT name, population, area FROM world
  WHERE population > 250000000 XOR area > 3000000
--correct 


--Problem 9: Rounding
-- SHow the name and population in millions and the GDP in billians for the countries of the continent 'South America.' Use the ROUND function to show the values to two decimal places. 

--For South America show the population in millions and the GDP in billions to 2 decimal places. 

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
  WHERE continent = 'South America'
--Correct


--Problem 10:Trillion dollar economies
SELECT name, round(gdp/population, -3) FROM world
  WHERE gdp > 1000000000000
--Correct


--Problem 11: Name and capital have the same length 

--Show the name and capital where the name and the capital have the same number of characters.

    --You can use the LENGTH function to find the number of characters in a string

SELECT name, capital FROM world
  WHERE LENGTH(name) = LENGTH(Capital)


--Problem 12: Matching name and capital 
--The capital of Sweden is Stockholm. Both words start with the letter 'S'.
--Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.

    --You can use the function LEFT to isolate the first character.
    --You can use <> as the NOT EQUALS operator.

SELECT name, capital FROM word
  WHERE LEFT(name, 1) = LEFT(capital, 1)



--Problem 13: All the vowels. 
--Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u)
-- in the name. They don't count because they have more than one word in the name.

--Find the country that has all the vowels and no spaces in its name.

    --You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
    --The query shown misses countries like Bahamas and Belarus because they contain at least one 'a'

select name from world 
  where name not like '% %'
    and name like '%a%'
    and name like '%e%'
    and name like '%i%'
    and name like '%o%'
    and name like '%u%'

--Next? SELECT card game 



