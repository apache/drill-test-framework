explain plan for select * from (
select avg(s_number_employees) as average, stddev_samp(s_number_employees) as stddsamp, stddev_pop(s_number_employees) as stddpop , var_samp(s_number_employees) as varsamp, var_pop(s_number_employees) as varpop from store_v) t limit 0;
