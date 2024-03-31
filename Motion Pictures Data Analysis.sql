-- task 1
use sakila;
select  first_name,last_name,actor_id,last_update from actor;
-- task 2a
select concat(first_name,'_',last_name) from actor;
-- task 2b
select count(first_name),first_name from actor group by first_name;
-- TASK 2C
SELECT count(last_name) ,last_name from actor group by last_name;
-- task 3
select rating,count(title) as film_name from film where rating in('g','r') group by rating;
 -- task 4
 select rating,avg(rental_rate) from film where rating in('pg-13','g') group by rating;
 -- task 5
 select  title, replacement_cost from film where replacement_cost>'9';
 -- task 5d
 select title ,replacement_cost from film where replacement_cost>15 and replacement_cost<20;
 select replacement_cost from film order by 'decrese' ;
 select replacement_cost from film order by 'increse'  ; 
 -- task 6
 select *from actor;
 select*from film;
 select *FROM film_actor;
 
 select count(actor.actor_id), film.title as film_name  from actor inner join
 film_actor on actor.actor_id=film_actor.actor_id inner join film on film.film_id=film_actor.film_id group by title;
 -- task 7
 select  title from film where title like 'A%' or title like 'q%';
 -- task 8
  select  film.title as film_name,actor.first_name, actor.last_name  from actor inner join
 film_actor on actor.actor_id=film_actor.actor_id inner join film on 
 film.film_id=film_actor.film_id where title='AGENTRUMAN';
 
 -- task 9
 select * from film;
select *from film_category;
select *from category; 
select title from film where film_id in (select film_id from film_category 
where category_id in (select category_id from category where name='family'));
 -- task 10
 select *from inventory;
 select * from rental;
 select title, rental_id from film,inventory inner join rental on inventory.film_id=inventory.film_id;
 -- task 11------------------------------------------
 select count(category_id),avg(replacement_cost)-avg(rental_rate) as 'difference' from  film inner join 
 film_category on film_category. film_id= film.film_id  
 group by 'avg(replacment_cost)-avg(rental_rate)' ;
 
 

 -- task 12
 select *from film;
 select category.name,count(film_id)from film_category inner join 
 category on category.category_id=film_category.category_id group by name;
 
 