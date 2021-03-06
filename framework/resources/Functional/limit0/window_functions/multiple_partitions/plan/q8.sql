explain plan for select * from (
select 
	c_integer,
	c_date,
	c_time,
	dense_rank() over(partition by c_date order by c_time nulls first),
	dense_rank() over(order by c_integer desc)
from
	j6_v
order by
	1,2,3 nulls first) t limit 0;
