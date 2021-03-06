select

				
		count(*)			as count_star,
 		sum(a.d9)		as sum_d9,
 		--round(avg(a.d9))	as round_avg_d9,
 		cast(avg(a.d9) as bigint)	as round_avg_d9,
 		--trunc(avg(a.d9))	as trunc_avg_d9,
 		cast(avg(a.d9) as bigint)	as trunc_avg_d9,
 		--sum(case when a.d9 = 0 then 100 else round(a.d9/12) end) as case_in_sum_d9,
 		cast(sum(case when a.d9 = 0 then 100 else round(a.d9/12) end) as bigint) as case_in_sum_d9,
 		--coalesce(sum(case when a.d9 = 0 then 100 else round(a.d9/12) end), 0) as case_in_sum_d9
 		cast(coalesce(sum(case when a.d9 = 0 then 100 else round(a.d9/12) end), 0) as bigint) as case_in_sum_d9
 
from
 		alltypes_with_nulls a
		left outer join alltypes_with_nulls b on (a.c_integer = b.c_integer)
		left outer join alltypes_with_nulls c on (b.c_integer = c.c_integer)
group by
  		a.c_varchar
 		,b.c_varchar
 		,c.c_varchar
 		,a.c_integer

 order by
  		a.c_varchar
 		,b.c_varchar
 		,c.c_varchar
 		,a.c_integer
;
