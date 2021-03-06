-- Filters in subqueries
-- Semi-join (aggregation with hash join in calcite)

select 
	sq2.x,
	sq2.y 
from
	(
	select 
		c_date,
		c_varchar
	from
		j1
	where 
		c_bigint is not null
		and c_integer in ( -499871720, -499763274, -499564607 , -499395929, -499233550, -499154096, -498966611, -498828740, -498749284 )
		and c_boolean is true
	) as sq1(x, y)
right outer join
	(
	select
		c_timestamp,
		c_varchar
	from 
		j2
	) as sq2(x, y)
on ( sq1.x = cast(sq2.x as date))
where
	sq2.x IN (select distinct c_timestamp from j4)
order by sq2.x nulls first limit 5 offset 5
;
