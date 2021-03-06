-- Verification for DRILL-3653
select
        count(c_integer),
        count(c_integer) over (partition by c_boolean order by c_date desc)
from
        j1
group by
        c_boolean,
        c_integer,
        c_date
order by
        row_number()   over (order by c_date)
;

