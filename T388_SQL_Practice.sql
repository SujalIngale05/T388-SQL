use t388;
select database();
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
desc Employee;
select * from employee;

insert into employee values
(1001,"Sujal","IT",35000,"Male",22);
delete from employee;
truncate table employee;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

-- 07-09-2026
use t388;
show tables;
select * from employee;
delete from employee where gender ="Male";
delete from employee where age>25;

insert into employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

use t388;
select * from employee;
truncate table employee;

insert into employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

alter table employee
add bonus float after salary;

alter table employee
add location varchar(10);
alter table employee
add title varchar(5) first;
use t388;
select * from employee;
desc employee; -- this is for comment

alter table employee
modify FullName varchar(35);

alter table employee
change column location address varchar(36);
update employee set address="thane";

update employee set address ="dombivali"
where department ="IT";

update employee set title ="Mr."
where gender ="Male";

update employee set title ="Mrs."
where gender ="Female";

update employee set bonus =salary*0.05;

select * from employee;







-- 09-09-2026
create table Kisan_Info
(ID int unique not null,
name varchar(50) unique not null,
age int check (age>=18),
email_id varchar (45) default "dummy@gmail.com"
);
desc Kisan_Info;
show tables;
insert into Kisan_Info
values
(10,"sumit",21,default);
select * from Kisan_Info;
alter table Kisan_Info modify age int check (age>20);

use t388;
select * from employee;
show tables;
select * from employee order by age;
select * from employee order by age asc;
select * from employee order by age desc;

select * from employee order by Department;

select * from employee where gender ="Male" order by FullName;

-- W G H O 
-- WHERE, GROUP BY -[HAVING], ORDER BY 

select * from employee limit 4;
-- GROUP BY CLAUSE
select * from employee group by Department;

select department,count(EmployeeId) from employee group by Department;

select department,sum(salary) from employee group by Department;

select department,max(salary) from employee group by Department;

select department,min(salary) from employee group by Department;

select department,avg(salary) from employee group by Department;

select department,avg(salary),sum(Salary) from employee group by Department;

select department,avg(salary)as AVG_SALARY,sum(Salary)as TOTAL_SALARY from employee group by Department;

select department,count(*) from employee group by Department;

select department,count(gender) from employee group by Department;

-- HAVING CLAUSE (ALWAYS USED ALONG WITH GROUP BY CLAUSE)

select department,avg(age),count(*) from employee group by department having avg(age) <27;
select department,avg(age),count(*) from employee group by department;
select department, count(*) from employee group by department having sum(salary) >150000;


CREATE TABLE Projects 
(ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
 EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME);


INSERT INTO Projects VALUES


(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from projects;

select now();

select *,datediff(enddate, startdate) as duration from projects;

-- WHERE CLAUSE EXMAPLE
select *,datediff(enddate, startdate) as duration from projects
where datediff(enddate,startdate)=45;
select * from projects where datediff(enddate, startdate)=45;

ALTER TABLE PROJECTS ADD DURATION INT;

update projects set duration=datediff(enddate,startdate);

select duration,count(*)from projects group by duration;

select duration,count(*)from projects group by duration having count(*)>=2;

select duration,count(*)from projects group by duration having count(*)>=2 
order by duration;

select duration, count(*) from projects
where duration >=20
group by duration 
having count(*)>=2
order by duration desc; 

select * from employee limit 4,2;

use t388;

select distinct department from employee;
select distinct gender from employee;
select distinct age from employee;

select * from projects;

select * from projects where employeeid is null;
select * from projects where employeeid is not null;

update projects set employeeid =1003
where projectid= 6;
 
 -- Logical Operators [IN,Between,Like]
 -- BETWEEN
 select * from employee where age between 25 and 28;
 select * from employee where employeeid between 1003 and 1006;
 
 -- IN 
 select * from employee where EmployeeId in (1003,1005,1007);
 select * from employee where department in ("HR","IT");
 select * from employee where age in (25,26);
 select * from employee where 
 age in (23,28)
 and department="IT"
 and EmployeeId in (1008,1001);
 
 -- LIKE Operator
 -- % and _(underscore) stands for zero or any no. of characters
 
select * from simple;
select * from simple where Fullname like "a%";
select * from simple where Fullname like "_u%";
select * from simple where Fullname like "___a%";
select * from simple where Fullname like "%a_";
select * from simple where Fullname like "%j%";
select * from simple where Fullname like "__m___";
select * from simple where Fullname like "%an%";
select * from simple where Fullname like "a%t";
select * from simple where Fullname not like "a%t";
select * from simple where Fullname like "_u%t";

select * from employee;
-- AGGREGATE FUNCTIONS

select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(*) as Total_EMP,
avg(salary) as Average,
sum(salary) as Total_Salary from employee;

-- MATH FUNCTION

select abs (-35);
select abs (+35);
select abs (300 - 200);
select abs (300 - 800);
select abs (6*(-5));
select  (6*(-5));

select datediff(startdate, enddate) from projects;
select abs (datediff(startdate, enddate)) from projects;

select mod (12,7);

select ceil (33.6);
select floor (33.6);

select truncate (12222.25655,3);
select truncate (12222.25655,2);
select truncate (12222.25655,0);
select truncate (12222.25655,-1);


-- 23-09-2026

USE T388;

-- EXPONENTIAL
select exp(5);
select exp(2);

-- POWER
select pow(4,5);
select pow(2,3);

--  SQUARE ROOT

select sqrt(16);
select sqrt(144);


-- STRING FUNCTION

-- CONCAT

select concat ("Good"," ","Morning") as remarks;
select concat ("GOOD"," ","NIGHT") as remark;

select *,concat(fullname," ",department) as code from employee;

select*,concat(fullname,"@itvedant") as email from employee;


-- LOWER & UPPER

select *,lower(fullname) as newname, upper (fullname) as CAPITALNAME from employee;
select *,upper (address) as newlocation from employee;
select *,lower (fullname) as newname from employee;
select *, upper (fullname) as capitalname from employee;

select * from employee;
alter table employee add EMAIL varchar(50);

update employee set EMAIL =concat(fullname,"@gmail.com");

-- REPLACE

select replace ("Hello Everyone, Good Morning","Morning","Night");
select replace ("Hello Everyone, Good Morning","Everyone","Maithili") as statement;
select fullname,replace (fullname,"Jones","Patil") as changed from employee;
select fullname,replace (fullname,"Mary","Steve") as changed from employee;
select fullname,replace (fullname,"Hina","Rohit") as changed from employee;

-- REVERSE
select fullname,replace (fullname,"Hina","Rohit") as changed, reverse(fullname) from employee;

-- LENGTH

select salary, length (salary) from employee;
select fullname, length(fullname) from employee;

-- SUBSTRING

select substring("Maharashtra",1,6);
select substring("Sujal",1,3);


-- TRIM,LTRIM & RTRIM




-- SUB_QUERIES

select * from employee;

select age from employee where employeeid =1002;
select age from employee where fullname="Mary Smith";

select * from employee
where age=(select age from employee where fullname="Mary Smith");

select salary from employee where FullName="john doe";

select * from employee
where salary=(select salary from employee where FullName="john doe");

select department from employee where fullname ="john doe";

select * from employee
where Department=(select department from employee where fullname ="john doe");
-- first highest salary
select max(salary) from employee;
-- second highest salary
select max(salary) from employee where salary <(select max(salary) from employee);
-- third highest salary
select max(salary) from employee
where salary<(select max(salary) from employee where salary <(select max(salary) from employee)); 

select min(salary) from employee;
select min(salary) from employee where salary >(select min(salary) from employee);


-- 24-09-2026
use t388;
-- Multiple Row Subquery

select * from employee;
-- USING IN SUBQUERY

select age from employee where employeeid in (1002,1003);
select * from employee where age = (select age from employee where employeeid in (1002,1003));
select * from employee where age in (select age from employee where employeeid in (1002,1003));

-- USING ANY IN SUBQUERY

select distinct salary from employee;

select * from employee where
salary >any(select salary from employee where employeeid between 1001 and 1003);

select * from employee where 
salary >any(select salary from employee where EmployeeId between 1006 and 1010);

select * from employee where
salary <any(select salary from employee where employeeid between 1001 and 1003);

-- USING ALL IN SUBQUERY

select * from employee where
salary >all(select salary from employee where employeeid between 1001 and 1003);

select * from employee where
salary <all(select salary from employee where employeeid between 1001 and 1003);



-- JOINS









 



















 
 
 
 
 
 
 
 




















