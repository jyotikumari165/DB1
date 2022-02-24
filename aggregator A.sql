string b

Q8 select UPPER([first_name]) as[name]  from [dbo].[employees]

Q9 select SUBSTRING([street_address],charindex(' ',[street_address]),
   charindex(' ',[street_address],6))
   from [dbo].[locations]

Q10 select lower([first_name])first_name, substring([first_name], 0,2)+[last_name]+'@systemcos.com'
     as email_address
    from[dbo].[employees]

Q11 select e.[first_name],j.[job_title],[city] from [dbo].[employees] e
    inner join [dbo].[departments] d on e.[department_id] = d.department_id
	inner join [dbo].[locations] l on d.location_id = l.location_id
	inner join [dbo].[jobs] j on e.job_id = j.job_id
	where [city]='Toronto'
	

Q12 select e.[first_name],d.[department_name],[city] from [dbo].[employees] e
    inner join [dbo].[departments] d on e.[department_id] = d.department_id
	inner join [dbo].[locations] l on d.location_id = l.location_id
	where [city]='Toronto'
	
Q13 select [first_name]from [dbo].[employees]
    WHERE salary IN  ( SELECT MIN(salary)  
    FROM employees) 

Q14 select [first_name]from [dbo].[employees]
    WHERE salary IN  ( SELECT MAX(salary)  
    FROM employees) 