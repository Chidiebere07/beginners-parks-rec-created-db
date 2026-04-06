-- CTEs 
with CTE_example AS 
(select gender, avg(salary) avg_sal, max(salary) maax_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from CTE_EXAMPLE
;

select avg(avg_sal)
from (select gender, avg(salary) avg_sal, max(salary) maax_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
example_subquery;