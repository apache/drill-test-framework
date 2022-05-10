create or replace view dfs.subqueries.optional_type_v as
select
        cast(c_varchar as varchar(100))		as c_varchar,
        cast(c_integer as integer)		as c_integer,
        cast(c_bigint as bigint)		as c_bigint,
        cast(c_float as float)			as c_float,
        cast(c_double as double)		as c_double,
        cast(c_date as date)			as c_date,
        cast(c_time as time)			as c_time,
        cast(c_timestamp as timestamp)		as c_timestamp,
        cast(c_boolean as boolean)		as c_boolean
from
    dfs.subqueries.j1
;

create or replace view dfs.subqueries.required_type_v as
select
        cast(c_varchar as varchar(100))		as c_varchar,
        cast(c_integer as integer)		as c_integer,
        cast(c_bigint as bigint)		as c_bigint,
        cast(c_float as float)			as c_float,
        cast(c_double as double)		as c_double,
        cast(c_date as date)			as c_date,
        cast(c_time as time)			as c_time,
        cast(c_timestamp as timestamp)		as c_timestamp,
        cast(c_boolean as boolean)		as c_boolean
from
    dfs.subqueries.j3
;
