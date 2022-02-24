   Aggregator B

 ALTER TABLE [dbo].[employees]
ADD comminsion decimal(20)
drop column commision from [dbo].[employees]
select *from [dbo].[employees]
update  [dbo].[employees] set [Commision]=10 
where [employee_id]>105 and  [employee_id]>109
select  [job_title]from [dbo].[jobs]

Q9 select sum([salary]), [manager_id]from [dbo].[employees]
   group by [manager_id]

Q10 
 select  [job_title] ,(select count([employee_id]), 
 (select [department_name] from[dbo].[departments]) 
 from [dbo].[employees])
 from [dbo].[jobs] where [job_title] like 'Accounting Manager'
 
 
Q11 select e.[first_name],e.[employee_id]as employee,m.[first_name] as manager
    from [dbo].[employees] e inner join [dbo].[employees] m
	on e.manager_id=m.employee_id
	where e.[first_name] like '_a%'


Q12 select (sum([salary])) from [dbo].[employees]

Q13 
   select d.[department_id],e.[salary] from[dbo].[departments] d
    inner join [dbo].[employees] e on e.department_id = d.department_id
	where [salary] in(select MAX([salary]) from [dbo].[employees])

Q14 
select [first_name],[salary],
     case 
	  when  [Commision] is not null
	  then([salary]+([salary]*10/100))
	  else '1'
	  end as commision
	  from [dbo].[employees]