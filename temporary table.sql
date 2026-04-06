-- temporary table

CREATE TEMPORARY TABLE TEMP_TABLE
(first_name varchar (50),
last_name varchar (50),
favourite_movie varchar (100)
);

select*
from temp_table;

insert into temp_table
values('Alex', 'frebreg', 'lord of the Rings: The Two Towers');

select*
from temp_table;