
use UniversityEventsDB;

create table Employee_target(
EmpId int,
EmpName varchar(100),
Dept varchar(100),
Salary int);

insert into Employee_target(EmpId,Empname,Dept,Salary)
values(1,'Amit Kumar','CSE',60000),
(2,'Neha sharma','it',55000),
(3,'rahul verma','ece',50000),
(4,'priya mehta','cse',45000);

select * from Employee_target;

create table Employee_source(
EmpId int,
EmpName varchar(100),
Dept varchar(100),
Salary int);

insert into Employee_source(EmpId,Empname,Dept,Salary)
values(2,'neha sharma','it',57000),
(3,'rahul verma','ece',50000),
(4,'priya mehta','cse',47000),
(5,'sandeep singh','it',52000);

select * from Employee_source;


merge employee_target as t
using employee_source as s
on (t.EmpId=s.empid)

when matched then
update set t.salary=s.salary

when not matched by target then
insert (empid,empname,dept,salary)
values(s.empid,s.empname,s.dept,s.salary)

when not matched by source then
delete;

select * from Employee_target;
select * from Employee_source;