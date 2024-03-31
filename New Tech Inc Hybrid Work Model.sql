-- TASK1-------------------------------  
-- the company wents to promote a hybrid work culture and reduce the opration cost and 
-- occupancy of its offices across defferent cities.identify
--  the top five cities that have the maximum number of employee.

SELECT *FROM LOCATIONS;
select *from departments;
SELECT* FROM EMPLOYEES;
select  locations.city ,count(employee_id) from employees inner join departments on
 employees.department_id=departments.department_id inner join locations on
 locations.location_id=departments.location_id group by city order by 'decrese'  limit 5;
 select*from countries;
 select * from job;
 use hr;
 -- task 2--------------------------------------------------------------
 -- list the first name ,last name ,countries,cities,departments,and
 -- salaries,of the employees from the top 5 cities identify in task;
 select  locations.city, employees.first_name , employees.last_name,countries.country_name,
 departments.department_name,employees.salary from  employees
 inner join departments on employees.department_id=departments.department_id inner join locations on locations.location_id=departments.location_id
 inner join countries on countries.country_id=locations.country_id order by 'decrese'limit 5;
 
 -- task 3-------------------------------------------------------------
 -- list the cities in which the number of employees is less then 10
 select *from locations;
 select *from employees;
 select *from departments;
 select locations.city, count(employee_id) from employees natural join
 departments  natural join locations
group by city having count(employee_id)<10 ;
 
 -- task 4---------------------------------------------
-- find the avg experience (in year) of the employees of each city identify in task 3
select*from job_history;
select year(job_history.end_date)-year(job_history.start_date) as experience, locations.city,job_history.employee_id
 from job_history inner join  departments on job_history.department_id=departments.department_id inner join locations on 
  locations.location_id=departments.location_id;
 
-- task 5
-- the company to wents to communicate the work from home policy to those employees who are from the cities 
-- identified in task1 and have also completed 10 years in the orgnization
-- find the blow -mantioned details of such employees
-- first name,last name,email,phone number
select  year(job_history.end_date)-year(job_history.start_date) as exprinence,employees.first_name,employees.last_name,
employees.email,employees.phone_number from employees inner join  job_history on employees.employee_id=job_history.employee_id;
-- task 6 
-- list the id of managers of the employees identified in task 5
select  year(job_history.end_date)-year(job_history.start_date) as exprinence,employees.first_name,employees.last_name,
employees.email,employees.phone_number ,manager_id from employees inner join 
 job_history on employees.employee_id=job_history.employee_id;