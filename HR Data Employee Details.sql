-- task 1 -----------------------------------------------
select employees.employee_id,employees.manager_id,departments.department_id,employees.first_name,employees.last_name,
 departments.department_name from employees inner join departments
 on employees.department_id=departments.department_id where department_name='it';
 -- task 2--------------------------------------------------
 select max(salary),min(salary),department_name from employees inner join departments
 using (department_id) group by department_name;
 -- task 3---------------------------------------------------
 select max(employee_id),city from employees inner join departments on departments.department_id=employees.employee_id
inner join locations on locations.location_id = departments.location_id group by city limit 10;
-- task 4--------------------------------------------------------
use hr;
select employees.employee_id,employees.first_name,
employees.last_name,job_history.end_date from employees,departments inner join job_history
 on departments.department_id=job_history.department_id where end_date='1999-12-31';
 -- task 5---------------------------------------------------------
 select employees.employee_id,employees.first_name,employees.last_name,departments.department_name,year(curdate())-year(employees.hire_date) as experince 
 from employees join departments on employees.department_id=departments.department_id where year(curdate())-year(employees.hire_date) >25;