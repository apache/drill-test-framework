select distinct count(distinct c_row) from data group by c_int order by count(distinct c_row);
