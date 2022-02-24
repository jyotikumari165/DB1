
drop table  [dbo].[Project_Detail]
select*from[dbo].[emp_details];
select*from[dbo].[Project_Detail];


create table ProjectDetail(
ProjectDetailId int identity(1,1) primary key,
EmpDetailId int default null,
ProjectName varchar(20),
EmployeeID int default null,
FOREIGN KEY (EmployeeID) REFERENCES emp_details ([EmployeeID]) 
ON DELETE CASCADE ON UPDATE CASCADE)


SET IDENTITY_INSERT ProjectDetail on;
insert into ProjectDetail(ProjectDetailId,EmpDetailId,ProjectName,[EmployeeID])
values(1,1,'task track',1),
(2,1,'CLP',6),(3,1,'survey Management',2),
(4,2,'HR Management',2),(5,3,'task track',3),
(6,3,'GRS',4),(7,3,'task track',4),
(8,4,'DDS',5),
(9,6,'GL Management',5),
(10,6,'HR Management',6)
SET IDENTITY_INSERT ProjectDetail off;




create database Testjoin;
use Testjoin;
create table emp_details(
EmployeeID int identity(1,1)primary key,
First_Name varchar(50),
Last_Name varchar(20),
Salary decimal(8,2) not null,
Joining_Date date,
Department varchar(20),
Gender varchar(10));
SET IDENTITY_INSERT emp_details ON;
insert into emp_details(EmployeeID,First_Name,Last_Name,Salary,
Joining_Date,Department,Gender) 
values(01,'vikash','ahlawat',600000.00,'2013-02-15','IT','Male'),
(02,'nikita','jain',530000.00,'2014-01-09','HR','Female'),
(03,'ashish','kumar',100000.00,'2014-01-15','IT','Male'),
(04,'nikhil','sharma',480000.00,'2014-01-15','HR','Male'),
(05,'anish','kaliyan',500000.00,'2014-01-15','Payroll','Male'),
(06,'neha','yadav',480000.00,'2013-05-15','IT','Female')
SET IDENTITY_INSERT emp_details off;

q1
select*from [dbo].[emp_details] where not [First_Name] like'a%' or 
[First_Name] like 'p%';

Q2
select *from[dbo].[emp_details] where [Gender] like '__le' 

Q3
select* from[dbo].[emp_details] where [First_Name] like 'a____' 
Q4
select * from [dbo].[emp_details] where [First_Name]='vik%as'

Q5
Select distinct [Department]from[dbo].[emp_details]

Q6
select max([Salary])from[dbo].[emp_details]

Q7
select convert(varchar(20),[Joining_Date],106)from[dbo].[emp_details]

Q8
select convert(varchar(20),[Joining_Date],111)from[dbo].[emp_details]

Q9
select convert(varchar(10),[Joining_Date],108)from[dbo].[emp_details]
//show the [time of joining date]

Q10
select datepart(YEAR,[Joining_Date])from[dbo].[emp_details]

Q11
select [First_Name],getdate()[current date],[Joining_Date],
datediff(mm,[Joining_Date],getdate())from[dbo].[emp_details]

Q12
select*from[dbo].[emp_details] where datepart(yyyy,[Joining_Date])='2013'

Q13

select*from[dbo].[emp_details] where datepart(mm,[Joining_Date])='1'

Q14
select*from[dbo].[emp_details] where [Joining_Date] between '2013-01-01'
and '2013-12-01'

Q15
select [First_Name],
case
when [Gender]= 'male' then 'M'
when [Gender]= 'female' then 'F'
end as gender
from[dbo].[emp_details]

Q16
select[ProjectName], count(*) as NoOfEmp from [dbo].[ProjectDetail]
group by [ProjectName] having count(*)>1



