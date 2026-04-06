-- window function

select gender, sum(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
    group by gender
;


select gender, dem.first_name,dem.last_name, salary, sum(salary) over (partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    

select dem.employee_id, gender, dem.first_name,dem.last_name, salary, 
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc)rank_num,
dense_rank() over(partition by gender order by salary desc)dense_rank_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;