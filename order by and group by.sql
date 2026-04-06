-- GROUP BY

SELECT*
FROM employee_demographics;

SELECT GENDER
FROM employee_demographics
GROUP BY gender;

SELECT GENDER, avg(AGE)
FROM employee_demographics
GROUP BY gender;

SELECT OCCUPATION, SALARY
FROM employee_SALARY
GROUP BY OCCUPATION, SALARY;

SELECT GENDER, MAX(AGE), min(AGE), count(age)
FROM employee_demographics
GROUP BY gender;

--- order by
SELECT*
FROM employee_demographics
order by age, gender;
