-- task 1 -----------------------------------------------
-- list the ids ,first namne and last name of the employess working in the it department.
select employees.employee_id,employees.manager_id,departments.department_id,employees.first_name,employees.last_name,
 departments.department_name from employees inner join departments
 on employees.department_id=departments.department_id where department_name='it';
 -- task 2--------------------------------------------------
 -- extract the minimum and maximium salaries for each department .
 select max(salary),min(salary),department_name from employees inner join departments
 using (department_id) group by department_name;
 -- task 3---------------------------------------------------
 -- identify the top 10 city that have the highest number of employees.
 select max(employee_id),city from employees inner join departments on departments.department_id=employees.employee_id
inner join locations on locations.location_id = departments.location_id group by city limit 10;
-- task 4--------------------------------------------------------
-- list the employees id ,first name and last name of all those employess who last working day in the orgnization was 1999-12-31.
use hr;
select employees.employee_id,employees.first_name,
employees.last_name,job_history.end_date from employees,departments inner join job_history
 on departments.department_id=job_history.department_id where end_date='1999-12-31';
 -- task 5---------------------------------------------------------
 -- extrect the employeeid , first name,department name and total experience of all those employees who have complete at least 25 year in the orgnization.
 select employees.employee_id,employees.first_name,employees.last_name,departments.department_name,year(curdate())-year(employees.hire_date) as experince 
 from employees join departments on employees.department_id=departments.department_id where year(curdate())-year(employees.hire_date) >25;
