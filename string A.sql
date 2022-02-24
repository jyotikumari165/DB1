
Q1

Q2


Q3 SELECT  RIGHT('00' + CAST([employee_id] AS VARCHAR(2)), 2) 
   FROM [dbo].[employees]




Q4 select[employee_id],right( from[dbo].[employees]

Q5 select  ([last_name]), len([last_name])[length] from [dbo].[employees]
    where [first_name] like 'A%' or [first_name] like 'J%'or
	[first_name] like 'M%'

Q6 select[last_name],lpad([salary],15,'$') from [dbo].[employees]

Q7 select Reverse(lower([first_name])) as r_name 
   from [dbo].[employees]  when([first_name]=r_name)
   then 'Palindrome'
   else 'Not Palindrome'
   End result;

   