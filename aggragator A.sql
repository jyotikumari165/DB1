Q1 
select max([salary])MAX_salary,min([salary])min_salary
,avg([salary])avg_salary from[dbo].[employees] where commision is null

Q2
select d.[department_id],sum(e.[salary]) from[dbo].[departments] d
inner join [dbo].[employees] e on d.department_id=e.department_id
group by [salary] not complete

Q3
select [department_id],(select count([employee_id])as number_of_emp from
[dbo].[employees]) 
from[dbo].[employees]

Q4
select [department_id],(select sum([salary])as total_salary from
[dbo].[employees]) 
from[dbo].[employees]

Q5
select [first_name] from [dbo].[employees] where commision is null

Q6
select [first_name],[department_id],isnull(cast([Commision] 
   as varchar),'no commision')appropriatly
from[dbo].[employees]

Q7
select[first_name],[salary],isnull(cast(([Commision]*2) 
   as varchar(15)),'no commision') from[dbo].[employees]

Q8
select d.[department_id],e.[first_name]from[dbo].[employees] e
inner join [dbo].[departments] d on e.department_id = d.department_id
group by [department_name]
having count([first_name])>1