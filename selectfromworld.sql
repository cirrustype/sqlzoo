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





