BASICs
use Testdb;
Q1 select * from[dbo].[employees],[dbo].[departments]

Q2 select [hire_date],[first_name] from [dbo].[employees];

Q3 select  [first_name],cast([job_id]as varchar)as Employee, first_name Title
   from [dbo].[employees]


Q4 select [hire_date],[first_name],[department_id] 
   from [dbo].[employees] where [job_id]=17 or  [job_id]=18


Q5 select ([first_name]+' , '+[last_name]+', '+[email]+
   ' , '+cast([phone_number]as varchar)+' , '+cast([hire_date] as varchar)+' , '
    +cast([job_id]as varchar))
    from [dbo].[employees]

Q6 select [first_name],[salary] from [dbo].[employees] where
   [salary]> 2000

Q7  select [first_name] as [Name],[hire_date]as [Start_Date]
    from [dbo].[employees] 


Q8 select [first_name],[hire_date] from [dbo].[employees] 
    order by [hire_date]

Q9 select [first_name],[salary] from [dbo].[employees] 
   order by[salary] desc

Q10 select [first_name],[department_id] from [dbo].[employees] not complete

Q11 select e.[last_name],j.[job_title] from[dbo].[employees] e 
    inner join [dbo].[jobs] j on e.[job_id]= j.[job_id] 
	where isnull([manager_id],1)=1
  
Q12 select e.[last_name],j.[job_title],e.[salary] from [dbo].[employees] e
    inner join [dbo].[jobs] j
	on e.[job_id]=j.[job_id]
    where [job_title]='Sales Representative' or [job_title]='Stock Clerk' 
	 
	  