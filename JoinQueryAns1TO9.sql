set identity_insert [dbo].[ProjectDetail] on;
insert into [dbo].[ProjectDetail]([ProjectDetailId],[EmpDetailId],
[ProjectName],[EmployeeID]) values (12,3,'null',4)
set identity_insert [dbo].[ProjectDetail] off;



Q1
select e.[First_Name],p.[ProjectName] from[dbo].[ProjectDetail] p
inner join[dbo].[emp_details] e on p.EmployeeID=e.EmployeeID
order by [First_Name]

Q2
select e.[First_Name],p.[ProjectName] from [dbo].[emp_details] e
left outer join [dbo].[ProjectDetail] p on e.[EmployeeID]=p.[EmployeeID]
order by [First_Name]

Q3
select e.[First_Name],isnull(p.[ProjectName],'-No Project')
from [dbo].[emp_details] e
left outer join [dbo].[ProjectDetail] p on e.[EmployeeID]=p.[EmployeeID]
order by [First_Name]

Q4
select e.[First_Name],p.[ProjectName]from [dbo].[emp_details] e
right outer join [dbo].[ProjectDetail] p on e.[EmployeeID]=p.[EmployeeID]
order by[First_Name]

Q5
select e.[First_Name],p.[ProjectName]from [dbo].[emp_details] e
full outer join [dbo].[ProjectDetail] p on e.[EmployeeID]=p.[EmployeeID]
order by[First_Name]
Q6
select e.[First_Name], isnull(p.[ProjectName],'-No assign project') 
from [dbo].[ProjectDetail] p
right outer join [dbo].[emp_details] e
on e.[EmployeeID]=p.[EmpDetailId]
where [First_Name] is null


Q7
select p.[ProjectName] from [dbo].[ProjectDetail] p
right outer join [dbo].[emp_details] e
on e.[EmployeeID]=p.[EmpDetailId]
where [First_Name] is null


Q8
select e.[First_Name],p.[ProjectName] from [dbo].[emp_details] e
left outer join [dbo].[ProjectDetail] p on e.[EmployeeID]=p.[EmployeeID]

Q9
select e.[First_Name],p.[ProjectName] from[dbo].[ProjectDetail] p
inner join[dbo].[emp_details] e on p.EmployeeID=e.EmployeeID
