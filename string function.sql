-- string functoins

select length('skyfall');

select first_name, length('first_name') as length
from employee_demographics
order by length;

select upper('sky');
select lower('sky');

select first_name, upper(first_name)
from employee_demographics;

select trim('   sky   ');


select first_name, 
upper(first_name),
right( first_name, 3),
left(first_name, 2),
substring( birth_date,6,2) as month
from employee_demographics;

-- replace

select first_name, replace(first_name, 'a','z')
from employee_demographics;


-- locate
select locate('x', 'Alexander');

-- concat
select first_name, last_name, 
concat(first_name,'   ', last_name) as full_name
from employee_demographics;