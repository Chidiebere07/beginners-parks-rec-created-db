-- WHERE CLAUSE

 SELECT *
 FROM employee_salary
 WHERE first_name = 'Leslie';
 
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;
 
 SELECT *
 FROM employee_demographics
 WHERE gender!= 'female';

 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01';  
 
 -- AND OR NOT --- LOGICAL OPERATORS
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 AND gender='male';
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 or gender='male';
 
 SELECT *
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
 or not gender='male';
 
 SELECT *
 FROM employee_demographics
 where (first_name ='leslie' and age = 44) or age> 55;
 
 -- LIKE STATEMENT
 -- % AND _
 select*
 FROM employee_demographics
 where first_name like '%a%';
 
  select*
 FROM employee_demographics
 where first_name like 'a___';
 
  select*
 FROM employee_demographics
 where birth_date like '19__%';