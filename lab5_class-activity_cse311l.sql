/* Sibghat Ullah Rayyan Shaikh 1831773042
Lab5*/

//Activity1:

SELECT Last_Name, Hire_Date 
FROM emps 
WHERE Department_id = (SELECT Department_id 
FROM emps 
WHERE Last_Name = 'Zlotkey') 
AND Last_Name <> 'Zlotkey'

//Activity2:

SELECT Employee_Id, Last_Name, Salary 
FROM emps 
WHERE Salary > (SELECT AVG(Salary) FROM emps) 
ORDER BY Salary ASC

//Activity3:

SELECT Last_Name, Salary
FROM emps
WHERE Manager_id = (SELECT Employee_Id
FROM emps
WHERE Last_Name = 'King');

//Activity4:

SELECT Employee_Id, Last_Name , Salary
FROM emps
WHERE Salary > (SELECT AVG (Salary)
FROM emps)
AND
Department_id IN (SELECT Department_id
FROM emps
WHERE Last_Name LIKE '%u%');







