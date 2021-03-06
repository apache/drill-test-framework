explain plan for select * from (
-- Arithmetic operation with two window functions
select 
	c_date,
	c_time,
	c_integer,
	count(*) over (partition by c_date ORDER BY c_time) + sum(c_integer) OVER (partition by c_bigint order by c_time) 
from 
	j6_v 
where 
	c_integer is not null) t limit 0;
