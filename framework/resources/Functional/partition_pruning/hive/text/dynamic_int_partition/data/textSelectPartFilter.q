select l_orderkey, l_partkey, l_quantity, l_shipdate, l_shipinstruct from hive.dynamic_partitions.lineitem_text_partitioned_hive where `year`=1993 and l_orderkey > 29600;
