select l_orderkey, l_partkey, l_quantity, cast(l_shipdate as date) l_shipdate, l_shipinstruct from hive.lineitem_parquet_partitioned_hive_date where dt IN (date '2014-10-22');
