select tinyint_var, avg(length(str_empty)), count(*) from widestrings group by tinyint_var;
