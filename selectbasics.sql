--SQLzoo, SELECT basics 

--Austin Schenk 4/21/2020




--PROBLEM 1: introducing the World table of countries--

--The example uses a WHERE clause to show the population of 'France'. Note --that strings (pieces of text that are data) should be in 'single quotes'; 

SELECT population FROM world
  WHERE name = 'Germany'
--correct 




--PROBLEM 2: Scandinavia--

--Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.

--Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world --returns view with name and pop columns 
  WHERE name IN ('Sweden', 'Norway', 'Denmark') --searches this list of countries 

--correct but isnt Finland part of Scandinavia?



--Problem 3: Just the right size--

--Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000. 

SELECT name, area FROM world
  WHERE area BETWEEN 200000 and 250000 --CURSOR_CLOSE_ON_COMMIT


-- 

-- SELECT basics Quiz --
--# 3 Select the code which shows the countries that end in A or L 
-- Wrong: SELECT name FROM world
  --WHERE name like '%a' OR '1%'

--Correct: SELECT name FROM world
    --WHERE name LIKE '%a' OR name LIKE '%1'



