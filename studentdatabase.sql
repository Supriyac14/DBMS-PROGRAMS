create database studentdatabase;
SELECT *FROM studentdatabase.student;
use studentdatabase;
create table student(studID int, studName varchar(40));
desc student;
alter table student add column Deptno int;
desc student;
create table examsec(Dno int, Dname varchar(30), sem int, noofstudent int, primary key(Dno));
desc examsec;
insert into examsec(Dno, Dname,sem, noofstudent) values(101, 'CSE', 6, 180);
insert into examsec(Dno, Dname,sem, noofstudent) values(102, 'CSE', 6, 170);
commit;
select * from examsec;
alter table student modify column studID varchar(30);
desc student;
alter table student add constraint ex_fk foreign key(Deptno) references examsec(Dno) on delete cascade;
insert into student(StudID, studName, Deptno) values ('BMCS121', 'Supriya', '101');
insert into student(StudID, studName, Deptno) values ('BMCS122', 'Preethi', '101');
insert into student(StudID, studName, Deptno) values ('BMCS123', 'Purnima', '101');
commit;
select *from student;
select *from examsec;
update examsec set Dno=104 WHERE Dname='CSE';
select *from student;
select *from examsec;


