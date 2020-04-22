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








