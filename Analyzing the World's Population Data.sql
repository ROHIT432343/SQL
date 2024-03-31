use world;
/* DISPLAY ALL ROW FROM THE COUNTRY TABLE AND CALCULATE
 THE NUMBER OF ROWS IN THE TABLE
 DISPLAY THE COUNTRY NAME AND THE POPULATION OF THE COUNTRIES WITH THE CODE ('USA','GBR','ARE')*/
 select name ,population,code from country where code in ('usa','gbr','are');

 -- TASK 2------------------------------------------------------------------------------------
 /* DISPLAY THE CONTINENT NAMES AND THE SUM OF POPULATION OF ALL COUNTRIES
 IN THE COUNTINENTS IN DECSENDING ORDER.*/
 select continent,sum(population) from country group by continent order by sum(population)desc;
 
 -- TASK 3-------------------------------------------------------------------------------------
 /* DISPLAY OF NAME OF THOSE COUNTRIES OF THE EUROPEAN CONTINENT THE LANGUAGE SPOKEN IN FRENCH*/
 select * from countrylanguage;
 select *from country;
 select name, continent from country,countrylanguage where continent='europe' and  
 language in(select language from countrylanguage where language='french') ; 
 -- TASK 4------------------------------------------------------------------------------
 /*DISPLAY THE NAME OF THE COUNTRIES WITH THE HIGHEST POPULATION FROM EACH CONTINANT IN THE DATABASE*/
 select population,continent from country;
select max(population),continent from country  group by continent; 
 
 
 
 
 
 
