#Task1: Using count, get the number of cities in the USA
use world;
SELECT count(CountryCode)
FROM city
where CountryCode="USA";


#Task2: Find out what the population and average life expectancy for people in Argentina (ARG) is
Select Population, LifeExpectancy
from country
where Code="ARG";


#Task3: Using ORDER BY, LIMIT, what country has the highest life expectancy?
Select * from country
order by LifeExpectancy desc
limit 1;
#Nested option:
Select * from country
where LifeExpectancy=(select max(LifeExpectancy) from country);


#Task4: Select 25 cities around the world that start with the letter 'F' in a single SQL query
Select * from city where Name like "F%" limit 25;


#Task5: Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
select ID, Name, Population from City limit 10;


#Task6: Create a SQL statement to find only those cities from city table whose population is larger than 2000000
select * from City where Population>2000000;


#Task7: Create a SQL statement to find all city names from city table whose name begins with “Be” prefix
Select * from City where name like "Be%";


#Task8: Create a SQL statement to find only those cities from city table whose population is between 500000-1000000
select * from City where population between 500000 and 1000000;


#Task9: Create a SQL statement to find a city with the lowest population in the city table
select * from city
where population=(select min(population) from city);


#Bonus Task: Create a SQL statement to find the capital of Spain (ESP).
Select city.name from country 
join city
on country.capital = city.ID where country.code="ESP";


#Bonus Task: Create a SQL statement to list all the languages spoken in the Caribbean region (instead of highest life expectancy).
Select countrylanguage.language from country
join countrylanguage
on country.code = countrylanguage.CountryCode where region="Caribbean";


#Bonus Task: Create a SQL statement to find all cities from the Europe continent.
Select city.name from country
join city
on country.capital = city.ID where continent="Europe";