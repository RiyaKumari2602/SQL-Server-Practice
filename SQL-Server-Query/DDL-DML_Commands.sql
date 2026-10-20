
create database UniversityEventsDB;
use UniversityEventsDB;

create table EventsParticipants(
ParticipantID INT,
participantName varchar(100),
email varchar(100),
phone varchar(15),
eventname varchar(100),
department varchar(50),
city varchar(50),
registrationDate date);

insert into EventsParticipants
(ParticipantID,participantName,email,phone,eventname,department,city,registrationdate)
values(201,'arjun mehta','arjun@gmail.com','98876655787','hackathon','cse','delhi','2026-01-10'),
(202,'simran kaur','simran@gmail.com','9766554567','ai workshop','mca','jalandar','2026-01-12'),
(203,'rahul sharma','rahul@gmail.com','9766565336','cloud bootcamp','it','chandigarh','2026-01-15'),
(204,'priya verma','priyan@gmail.com','76532113455','hackathon','cse','ludhiana','2026-01-18'),
(205,'aman singh','aman@gmail.com','97665365311','coding challenge','mca','amritsar','2026-01-20'),
(206,'neha kapoor','neha@gmail.com','8754554567','ai workshop','cse','delhi','2026-01-22'),
(207,'rohit malhotra','rohit@gmail.com','6546554567','cloud bootcamp','it','jalandar','2026-01-25'),
(208,'anjali raina','anjali@gmail.com','9866554567','coding challenge','bca','delhi','2026-01-28'),
(209,'sandeep gill','sandeep@gmail.com','7766554567','hackathon','mca','patiala','2026-02-01'),
(210,'kavya sharma','kavya@gmail.com','5566554567','ai workshop','bca','ludhiana','2026-02-03');

 insert into EventsParticipants
 values(211,'Mohit Kumar','mohit@gmail.com','9876254333','Cloud Bootcamp','CSE','Delhi','2026-02-05');

 insert into EventsParticipants
 values(212,'Riya Gupta','riya@gmail.com','8776653443','Ai Workshop','MCA','Jalandar','2026-02-06'),
       (213,'Karan Arora','karan@gmail.com','987654322','Hackathon','CSE','Chandigarh','2026-02-07'),
       (214,'Mehak Sethi','mehak@gmail.com','8987756432','Coding Challenge','BCA','Delhi','2026-02-08');
  
  select * from EventsParticipants;

  select participantname,eventname,department from EventsParticipants;

  select * from EventsParticipants where eventname='hackathon';
  select * from EventsParticipants where city='delhi';

  select * from EventsParticipants where department='cse' and city='delhi';
  select * from EventsParticipants where department ='mca' and eventname='ai workshop';

  select * from EventsParticipants where city='delhi' or city='jalandar';
  select * from EventsParticipants where eventname='hackathon' or eventname='cloud bootcamp';
  select * from EventsParticipants where city in ('delhi' ,'jalandar');

  select * from EventsParticipants where participantname like 'a%';
  select * from EventsParticipants where participantname like '%a';
  select * from EventsParticipants where participantname like '%an%';

  update EventsParticipants set city='Gurgaon' where participantName='Arjun Mehta';
  update EventsParticipants set phone='90000012345' where participantName='Rahul Sharma';
  update EventsParticipants set eventname='Ai Workshop',city='Chandigarh' where participantName='Aman Singh';

  Alter table EventsParticipants add RegistrationCategory varchar(100);
  update EventsParticipants set RegistrationCategory=
  CASE
  when eventname='Hackathon'THEN 'Technical Competition'
  when eventname='AI Workshop' THEN 'Technical Workshop'
  when eventname='Cloud Bootcamp' THEN 'Cloud technology'
  when eventname='Coding Challenge' THEN 'Programming Competition'
  ELSE 'others'
  END;


  delete from EventsParticipants where ParticipantID=214;
  delete from EventsParticipants where  eventname='Coding challenge';

  alter table eventsparticipants 
  add AttendanceStatus varchar(20);
  alter table eventsparticipants
  drop column phone;

  exec sp_rename 'dbo.eventsparticipants.city' ,'ParticipantCity' ,'column';

  exec sp_rename 'dbo.eventsparticipants','EventRegistrations','object';
  select * from EventRegistrations;



  create table EventTest(
  ParticipantID INT,
  ParticipantName Varchar(100),
  EventName Varchar(100));

  Insert into EventTest(ParticipantID,ParticipantName,EventName)
  Values(1,'jaylakshmi','Coding'),
        (2,'jenshi','Ai Workshop');

   select * from EventTest;

   Truncate table EventTest;



