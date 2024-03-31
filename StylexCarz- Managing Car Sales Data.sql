-- TASk1
create database if not exists stylexcarz_db;
use stylexcarz_db;
create table salesperson(salespersonid varchar(20) not null,
                         salesperson_name varchar(30) not null,
                         salesperson_city varchar(40) not null,
                         commision_rate varchar(30) not null);
                         alter table customers modify customerid int;
create table customers(customerid varchar(20) not null,
                    c_lastname varchar(30) not null,
                    c_firstname varchar(40)  not null,
                    c_city varchar(50) not null,
                    c_rating_on_a_scale_of_1_to_10 varchar (60) not null);
                    alter table orders modify orderid int;
create table orders(orderid varchar(40) not null,
                    ammount_in_thousends varchar(40) not null,
                    order_date varchar(30) not null,
                    salespersonid varchar(20) not null,
                    custmerid varchar(20) not null);
                    insert into salesperson(salespersonid,salesperson_name,salesperson_city,commision_rate)values
                                            (1001,'william','new_york',12),
                                            (1002,'liam','new_jersey',13),
                                            (1003,'axelrod','san_jose',10),
                                            (1004,'james','san_diego',11),
                                            (1005,'fran','austin',26),
                                            (1007,'oliver','new_york',15),
                                            (1008,'john','atlanta',2),
                                            (1009, 'charles','newjesey',2);
                                            insert into customers(customerid,c_lastname,c_firstname,c_city,c_rating_on_a_scale_of_1_to_10)values
                                                        (2001,'hoffman','anny','new_york',1),
                                                        (2002,'giovanni','jenny','new_jersey',2),
                                                        (2003,'liu','williams','san_jose',3),
                                                        (2004,'gress','harry','san_diego',3),
                                                        (2005,'clemens','john','austin',4),
                                                        (2006,'cisneros','fanny','new_york',4),
                                                        (2007,'pereire','jonathan','atlanta',3);
		insert into orders(orderid,ammount_in_thousends,order_date,salespersonid,custmerid)values
                         (3001,23,2020-02-01,1009,2007),
                         (3002,20,2021-02-23,1007,2007),
                         (3003,89,2021-03-06,1002,2002),
                         (3004,67,2021-04-02,1004,2002),
                         (3005,30,2021-07-30,1001,2007),
                         (3006,35,2021-09-18,1001,2004),
                         (3007,19,2021-10-02,1001,2001),
                         (3008,21,2021-10-09,1003,2003),
                         (3009,45,2021-10-10,1009,2005);
                         alter table orders rename column custmerid to customerid;
                                 select *from orders;                       
					select *from salesperson;
                    select *from customers;
                    -- task4------------------------------------------------------------
	select salespersonid,salesperson_name,salesperson_city,commision_rate*15/100  from salesperson where commision_rate<15;
    -- task 5----------------------------------------------------------------
    create database if not exists order_bkp;
    use order_bkp;
    use stylexcarz_db;
    create table if not exists order_bkp like orders;
    create table if not exists salesperson_bkp like salesperson;
    create table if not exists customers_bkp like customers;
select *from customers;
select customerid,count(*) c_rating_on_a_scale_of_1_to_10 from orders group by customerid;
