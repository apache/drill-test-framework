select r_name from (select r_name from cp.`tpch/region.parquet` order by r_regionkey) order by r_name;
