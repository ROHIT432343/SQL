-- task 1---------------------------------------
-- Extract the data of customers who are inactive .
use sakila;
select *from customer where active='0';
-- task 2-------------------------------------------
-- Identify the first name ,last name and email id of inactive customer. use the customer table
select first_name,last_name, email from customer where active='0';
-- task 3-----------------------------------------
-- identify the stor id having the highest number of inactive customer.
select active, count(*) store_id from customer where active=0 group by store_id;

-- task 4--------------------------------------
-- identify the name of movies that are rated as PG-13.
select title as film_name ,rating from film where rating='pg-13';
-- task 5--------------------------------------------
-- identify the top 3 movies with PG-13 rating that have the longest running time.
select title as film_name,rating,length from film where rating='pg-13';
-- task6-------------------------------------------
-- find the most popular PG-13 movies based on rental duration.
select title as film_name ,rental_duration, rating from film where rating='pg-13';
-- task7------------------------------------------------------------
-- find the average rantal cost of the movies.
select*from film;
select  avg rental_rate from film;
-- task 8----------------------------------------
-- Find the total replacment cost of all movies.
select  replacement_cost sum  from film group by replacement_cost;
