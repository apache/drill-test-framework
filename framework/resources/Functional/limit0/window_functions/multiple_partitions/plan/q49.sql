explain plan for select * from (
-- two different window clauses with GROUP BY
-- aggregate function, windowed aggregate, row_number()
-- only order by clause in window definition
select
	c_integer,
        sum(c_integer),
        row_number()   over (order by c_date desc),
        lag(c_integer) over (order by c_date desc)
from
        j1_v
group by
        c_integer,
        c_date
order by
        row_number()   over (order by c_date)

) t limit 0;
