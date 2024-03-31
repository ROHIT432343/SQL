-- task 1-------------------------------------------------------------------------------------
-- display the employee id, first name,last name,and department name ,of all employee using subquery
use hr;
select *from employees;
select * from departments;
select  first_name,last_name,department_name ,employee_id from employees,departments
 where employee_id in(select department_id from departments); 
-- task 2--------------------------------------------------------------------------------
-- display the  first_name,last_name,and salaries of the  employees whose salaries are grater then the average 
-- salary of all employees, grouped by the department ids. 
select first_name,last_name,salary ,department_id from employees where
 salary>(select avg(salary) as avg from employees);
-- task3-------------------------------------------------------------------------------------
-- display the first name,last name of those employees of the sales department who have a 
-- salary less then the average salary
-- of all employees of the sales department.
select *from departments;
select first_name,last_name from employees where department_id='80' and salary<(select avg(salary)from
 employees where department_id='80');
-- task 4---------------------------------------------------------------------------------------
-- display the first names ,last name and salaries of the employees who have a salary higher than the salaries of all it programmers 
-- display the detail of the employees in the ascending order of salary.using sub query.
select *from employees;
select first_name,last_name,salary from employees where salary>all
(select salary from employees where job_id='it_prog');
-- task 5----------------------------------------------------------------------------------------
-- display the records of the employees with the minimum salary in the employees table grouped by the job id
-- column and arrenged in ascending order of salaries.
select * from employees;
select * from employees where salary in(select min(salary)from employees group by job_id order by salary asc);
-- task 6-------------------------------------------------------------------------------------------
-- display the first name ,last name and department id of the employees whose salary is greter then 60%of 
-- of the sum of all employees of their respective departments.
select first_name,last_name,department_id from employees where salary>60% exists (select sum(salary) as
 total_slry,department_id from employees group by department_id);
-- task 7----------------------------------------------------------------------------------------
-- display the first name and last name of all those employees who have their managers based out of uk using sub
-- query hint; data for the above task is present in three difrent table:
select first_name,last_name from employees where exists(select manager_id from departments where location_id
 in(select location_id from locations where country_id='uk'));
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 








-- display the first name,last name,and salaries of the top 5 highest paid employees and export the output as a csv file 
-- use data export technique.
-- sample output
-- stven,king,24000.00
-- neena,kochhar,17000.00
-- lex,de haan,17000.00
-- karan,partners,13500.00
-- michael,hartstein,13000.*/
-- 