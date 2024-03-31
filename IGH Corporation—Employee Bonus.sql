-- task 1-------------------------------------
-- find the count of all the emloyees in the orgnization.
use hr;
select *from employees;
select count(employee_id) as total_employee from employees;
-- task 2------------------------------------------
-- find the department id wise count of employees in the orgnization . 
select* from departments;
select count(department_id) from departments;
-- task 3----------------------------------------
-- find the first name, last name and salaries of those employees whose salary is greater then $6000.
select *from employees;
select first_name,last_name,salary from employees where salary>6000;
-- task 4--------------------------------
-- determine the count of employees who are earning a salaries greater the $20000.
select *from employees;
select count(employee_id) from employees where salary>20000;
-- task5---------------------------------
-- list the detail of those employees who get a commission , to decide the percentage of bouns they should recive .
select *from employees where commission_pct>0;
-- task 6--------------------------------
/**the hr department went to send an invite to all the employees who get a commission .
the invite will adresss the employees with their full name .how will you extract the full names of these employees**/
select concat( first_name,'_',last_name) as full_name from employees where commission_pct>'0';
-- task 7--------------------------
/** fetch the following detail of employees .who get a commission .employees id employee name ,email id ,phone numbner.**/
select *from employees;
select employee_id,concat(first_name,'_',last_name) as employee_name,email,phone_number from employees where commission_pct>'0';
-- task 8------------------------------
-- identify the top three department ids that have the highest total salary of employees .
select *from employees;
select  department_id,salary from employees;
-- task 9-------------------------------
-- list the detail of employees from the it department .
select * from departments where department_name='it';
-- task 10-----------------------------------
-- find the count of all the employees in the it department and their average salary .
select *from employees;
select count(job_id) as it_department from employees where job_id='it_prog';
-- task---------------------------------------
-- identify the department id and the number of employees for the department in which employees salary range from $7000-10000 . 
select*from employees;
select department_id,employee_id,salary from employees where salary>7000 and salary<1000;