-- Join filter is on the right (non-preserving) side of the left outer join
select
                count(*)
from
        j1 LEFT OUTER JOIN j4
        ON ( j1.c_date = j4.c_date
        and j1.c_time = j4.c_time
        and j1.c_timestamp = j4.c_timestamp
        and j1.c_varchar = j4.c_varchar
        and j1.c_float = j4.c_float
        and j1.c_double = j4.c_double
        and j1.d9 = j4.d9
        and j1.d18 = j4.d18
        and j1.d28 = j4.d28
        and j1.d38 = j4.d38
        and j4.c_integer IS NULL
        and j4.c_integer IS NULL 
)
;
