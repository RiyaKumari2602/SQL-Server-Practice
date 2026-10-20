create database CA1;
use CA1; 

create table Books(
Bookid int primary key,
Bookname varchar(100) not null,
Author varchar(100) not null,
Category varchar(100),
price int check(price>0),
AvailableCopies int );

insert into Books(bookid,bookname,author,category,price,AvailableCopies)
values(501,'dbms fundamentals','r.sharma','database',650,8),
(502,'python programming','a.kumar','programming',850,12),
(503,'data analystics','s.singh','data science',950,6),
(504,'sql essentials','p.verma','database',550,10),
(505,'machine learning','n.gupta','data science',1200,4),
(506,'java basics','k.mehta','programming',750,9);

select bookname from books 
where price>700
order by price asc;

update books
set price = price+15
where category='data science';
select * from books;

delete from books 
where AvailableCopies>5;
select * from books;

alter table books
add pulisher varchar(100);

update books
set pulisher =
case
  when bookid=501 then 'a.verma'
  when bookid=502 then 'b.verma'
  when bookid=503 then 'c.verma'
  when bookid=504 then 'd.verma'
  when bookid=505 then 'e.verma'
  else 'f.verma'
  end;

  select * from books;

  select category ,Sum(AvailableCopies) AS total_copies
  from books
  group by category;

  select bookname ,count(Category) as book_category
  from books
  group by bookname;
  


  select category from books
  where availablecopies > 15;

  update books
  set availablecopies=6
  where bookid=505;
  select * from books;


