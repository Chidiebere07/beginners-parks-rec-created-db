-- limit and aliasing

select  *
from employee_demographics
limit 3;

select  *
from employee_demographics
order by age desc
limit 3;

-- aliasing

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40;