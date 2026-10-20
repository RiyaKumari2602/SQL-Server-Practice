use UniversityEventsDB;
select * from department2;
select * from employee2;
select GETDATE() AS CurrentDateTime,
CURRENT_DATE as CurrentDate;

create table orders(
orderid int,
orderDateTime datetime);

insert into orders(orderid,orderdatetime)
values(101,'2025-05-01 10:15:10'),
(102,'2025-05-02 14:15:15'),
(103,'2025-05-03 18:22:13');

select orderid,orderdatetime,
YEAR(orderdatetime) as [year],
MONTH(orderdatetime)as [months],
DAY(orderdatetime) as [Day]
from orders;

create table employee3(
empid int,
empname varchar(100),
department varchar(100),
salary decimal(10,2),
bonus decimal(10,2),
joiningdate date);

insert into employee3(empid,empname,department,salary,bonus,joiningdate)
values(101,'aman sharma','sales',45000.00,5000.00,'2022-01-15'),
(102,'neha kapoor','hr',52000.50,6000.00,'2021-03-10'),
(103,'rahul verma','it',38000.75,null,'2022-07-01'),
(104,'priya mehta','finance',61000.00,7000.00,'2020-11-20'),
(105,'karan singh','it',29500.25,3000.00,'2023-02-18'),
(106,'simran kaur','sales',47000.00,null,'2021-06-25'),
(107,'arjun reddy','hr',50000.00,5500.00,'2022-09-05');

select count(*) from employee3;

select sum(salary) as total_salary 
from employee3;

select min(salary) as min_salary
from employee3;

select max(salary) as max_salary
from employee3;

select avg(salary) as avg_salary from employee3;

select count(*),avg(salary)
from employee3
group by (department) 
having avg(salary)>40000;


