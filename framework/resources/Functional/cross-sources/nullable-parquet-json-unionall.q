select
    p.int_col, p.bigint_col, p.date_col, p.time_col, p.timestamp_col, p.interval_col, p.varchar_col, p.float_col, p.double_col, p.bool_col
from dfs.`cross-sources`.`fewtypes_null.parquet` p
union all  
select o.int_col, o.bigint_col, cast(o.date_col as date), cast(o.time_col as time), cast(o.timestamp_col as timestamp), o.interval_col, o.varchar_col, cast(o.float_col as float), o.double_col, o.bool_col
from dfs.`cross-sources`.`fewtypes_null.json` o;

