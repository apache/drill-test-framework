select l_orderkey, l_partkey, l_quantity, l_shipdate, l_shipinstruct from hive.dynamic_partitions.lineitem_text_partitioned_hive_hier_intstring where `year` IN (1993) and `month`='feb';
