create database Coca_Cola;
use Coca_Cola;

create table Employee_info 
(
	E_ID int primary key NOT NULL,
    E_Name varchar(20),
    E_Department char(10),
    Age int CHECK(age>21),
	Aadhar_Card varchar(15) unique NOT NULL,
	PAN_Number Varchar(15) 
);

insert into Employee_info(E_ID,E_Name,E_Department,Age,Aadhar_Card,PAN_Number )
values
		(101,'Aman','MGR',25,'185622458965','85lk6324' ),
        (102,'Bhabhuk','AMC',35,'285622458965','25BS8543');

alter table Employee_info add E_Salary decimal(10,2);

update employee_info 
set E_Salary= 151536.85 
where E_id= 101;

update employee_info 
set E_Salary= 15164.85 
where E_id= 102;

insert into Employee_info(E_ID,E_Name,E_Department,E_Salary,Age,Aadhar_Card,PAN_Number)
values
	(103,'Vimal','Spoke',45015.45,45,'385622458965','35CS8543'),
	(104,'Hemal','Hub',35063.45,55,'485622458965','45DS8543'),
	(105,'Shivam','AMC',85065.45,29,'585622458965','55ES8543'),
    (106,'Saurav','HR',36520.45,28,'685622458965','65FS8543'),
    (107,'Rishav','Hub',25410.45,36,'785622458965','75GS8543'),
    (108,'Keshav','Spoke',96587.45,65,'885622458965','85HS8543'),
	(109,'Sharma','HR',74589.45,48,'985622458965','95IS8543'),
	(110,'Jatin','Spoke',78521.45,53,'085622458965','05JS8543'),
    (111,'Harsh','Dealer',98523.45,32,'15622458965','10AA8543'),
    (112,'Utsav','Wholesale',125630.45,43,'25622458965','20AB8543');

Select* from Employee_info;

create table Employee_add 
(
	E_ID int,
	E_Address varchar(20),
    Phone_Number varchar(15),
    Other_Number varchar(15),
    Email varchar(30),
	FOREIGN KEY (E_ID) REFERENCES Employee_info(E_ID)
);

insert into Employee_add(E_ID,E_Address,Phone_Number,Other_Number,Email)
values
	(101,'Mumbai','1541030147','9632014530','Aman@gmail.com'),
	(102,'Pune','254130147','8632014530','Bhabhuk@gmail.com'),
	(103,'Patna','3541030147','7632014530','vishal@gmail.com'),
	(104,'Bihar','4541030147','6632014530','hemal@gmail.com'),
	(105,'Delhi','5541030147','5632014530','shivam@gmail.com'),
	(106,'Goa','6541030147','4632014530','saurabh@gmail.com'),
	(107,'Haryana','7541030147','3632014530','rishav@gmail.com'),
	(108,'Punjab','8541030147','2632014530','keshav@gmail.com'),
	(109,'Goa','9541030147','1632014530','sharma@gmail.com'),
	(110,'Mumbai','0541030147','0632014530','jatin@gmail.com'),
	(111,'Pune','5541030147','6632014530','harsh@gmail.com'),
	(112,'Patna','541830147','9639014530','utsav@gmail.com');
    
Select* from Employee_add;

create table performance
(
		E_ID int,
        Performance char(2),
		next_target int ,
        previous_target int,
        achived int,
        FOREIGN KEY (E_ID) REFERENCES Employee_info(E_ID)
);
	
insert into performance(E_ID,Performance,next_target,previous_target,achived)
values 
	(101,'A+',854,630,530),
	(102,'B',965,930,430),
	(103,'A',632,630,330),
	(104,'C+',986,630,430),
	(105,'B',1860,1030,590),
	(106,'D',986,830,230),
	(107,'B+',963,1030,930),
	(108,'C+',365,230,230),
	(109,'C',965,600,500),
	(110,'A+',963,650,360),
	(111,'F',632,206,53),
	(112,'F',9860,8630,5530);
    
select *from performance;

create table last_status
(
		E_ID int,
        activity_status char(3),
		O_ID int UNIQUE,
        Items varchar(10),
        Payment_methord varchar(10),
        Amount int,
        FOREIGN KEY (E_ID) REFERENCES Employee_info(E_ID)
);

insert into last_status(E_ID,activity_status,O_ID,Items,Payment_methord,Amount)
values 
	(101,'YES',6532,'RGB','CASH',589),
	(102,'YES',6502,'PET','UPI',16589),
	(103,'NO',1532,'RGB','CHEQUE',26589),
	(104,'YES',7532,'Water','CASH',36589),
	(105,'YES',9532,'SPARKLING','CC',5589),
	(106,'YES',3532,'RGB','CASH',6810),
	(107,'YES',6732,'SPARKLING','CC',1089),
	(108,'YES',6932,'RGB','DC',96589),
	(109,'YES',6572,'PET','CC',8900),
	(110,'NO',6531,'RGB','CASH',6500),
	(111,'YES',6539,'RGB','UPI',659),
	(112,'NO',655,'WATER','DC',891);

select *from last_status;

select* from employee_info;
select* from employee_add;
select* from performance;
select *from last_status;

drop table employee_info;
drop table employee_add;
drop table performance;
drop table last_status;

desc employee_add;
desc employee_info;
desc performance;
desc last_status;

truncate table employee_add;
truncate table employee_info;
truncate table performance;
truncate table last_status;

select*from employee_info where E_Name='Utsav';

select*from employee_info where age>40;

SELECT COUNT(*) FROM employee_info;

SELECT * FROM employee_info
ORDER BY E_Name;

SELECT * FROM employee_info
WHERE E_Name LIKE 'Aman%' AND Age > 20; 

SELECT * FROM employee_info
WHERE Age BETWEEN 21 AND 25;

SELECT * FROM employee_info
WHERE E_Department IN ('Spoke', 'Wholesale');

SELECT * FROM employee_info
WHERE Age NOT IN (20, 21);

select * from employee_info
where Age > 21 or E_Department = 'MGR';

select * from employee_info
where Age > 21 and E_Department = 'MGR';

SELECT * FROM performance
WHERE achived IS NOT NULL;

SELECT * FROM performance
where achived IS NULL;

SELECT COUNT(*) AS numberofemployee
FROM Employee_info;

SELECT AVG(E_salary) AS Averagesalary
FROM Employee_info;

SELECT MAX(E_salary) AS Max_salary
FROM Employee_info;

SELECT COUNT(*) AS NumberOfdepartment
FROM Employee_info
GROUP BY E_department;

SELECT Employee_info.E_ID, Employee_info.E_Name, Employee_add.E_Address AS Address
FROM Employee_info  
INNER JOIN Employee_add ON Employee_info.E_ID = Employee_add.E_ID;

SELECT Employee_info.E_ID,Employee_info.E_Name,Employee_add.Email
FROM Employee_add
LEFT JOIN Employee_info ON Employee_info.E_ID = Employee_add.E_ID;

SELECT Employee_info.E_ID,Employee_info.E_Name,Employee_add.Email
FROM Employee_add
Right JOIN Employee_info ON Employee_info.E_ID = Employee_add.E_ID;

SELECT * FROM Employee_info
WHERE age > 50
UNION
SELECT * FROM Employee_info
WHERE E_Salary < 45000 ;

SELECT EI.E_ID, EI.E_Name, P.Performance
FROM Employee_info EI
LEFT JOIN performance P ON EI.E_ID = P.E_ID
UNION
SELECT P.E_ID, NULL AS E_Name, P.Performance
FROM performance P
LEFT JOIN Employee_info EI ON EI.E_ID = P.E_ID;

SELECT *
FROM Employee_info
NATURAL JOIN performance;