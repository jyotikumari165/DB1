Aggregrators a


use Testdb;
alter table [dbo].[employees] add Commision decimal(20);

select *from[dbo].[departments];
select *from[dbo].[employees];
Q1 select max([salary]) as Max_salary,
   Min ([salary]) as Min_salary ,
   Avg([salary]) as avg_salary from [dbo].[employees]

Q2 select [department_id],sum([salary]) Total_salary 
   from [dbo].[employees]
   GROUP BY [department_id]
Q3 select [department_id],count(*)Total_Emp 
   from [dbo].[employees]
   group by [department_id]

Q4 select count(*)Total_Emp,sum([salary]) Total_salary
   from [dbo].[employees]
   group by [department_id] 

Q5 problen select  [first_name] "result" from [dbo].[employees] 
   having Commision ='NULL'

Q6 select [first_name],[department_id],from 