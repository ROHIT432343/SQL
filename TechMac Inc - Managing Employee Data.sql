-- task1
-- create database
create database techmac_db;
-----------------------------------------------
create table techyve_employees(employees_id int primary key,
                              firstname varchar(100) not null,
                              lastname varchar(100) not null,
                              gender varchar(50) not null,
                              age  int chek () ;
create table techcloud(employee_id int primary key,
             firstname varchar(100) not null,
             lastname varchar(100) not null,
             gender varchar(40) not null,
             age varchar(50) not null);
 create table techsoft_employees(employee_id int primary key,
			  firstname varchar(100) not null,
              lastname varchar(100) not null,
              gender varchar(30) not null,
              age varchar(50) not null);
              select*from techsoft_employees;
              describe techsoft_employees;
              describe techcloud;
              describe techyve_employees;
           -------------------------------------------------------
           -- drop column;
           drop table techyve_employees;
           drop table techcloud;
           drop table techsoft_employees;
	insert into techyve_employees(employees_id,firstname,lastname,gender)values
                (0002,"carios","simmons","male"),
                (0003,"kathie","bryant","female"),
                (0004,"joey","hughes","male"),
                (0005,"alice","mathews","female");
			  describe techyve_employees;  
               select*from techyve_employees;                  
          alter table techyve_employees add proficiencylevel varchar(50) not null;
          alter table techyve_employees drop column age;
        insert into techsoft_employees(employee_id,firstname,lastname,gender,age)values
	                                  ('0002','harold','simmons','male','54'),
                                      ('0003','juliana','sanders','female','36'),
                                      ('0004','paul','ward','male','29'),
                                     ('0005','nicole','bryant','female','30');
                                     select*from techsoft_employees;
			insert into techcloud(employee_id,firstname,lastname,gender,age)values
                                     ('0001','teresa','bryant','female','39'),
                                     ('0002','alexis','patterson','male','48'),
                                     ('0003','rose','bell','female','42'),
                                     ('0004','gemma','watkins','female','44'),
                                     ('0005','kingston','martinez','male','29');
                                     select *from techcloud;
                                     create table if not exists emp_backup1 like techcloud;
                                     create table if not exists emp_backup2 like techsoft_employees;
                                     create table if not exists emp_backup3 like techyve_employees;
                                     insert emp_backup3 select *from techyve_employees;
                                     insert emp_backup2 select *from techsoft_employees;
                                     insert emp_backup1 select*from techcloud;