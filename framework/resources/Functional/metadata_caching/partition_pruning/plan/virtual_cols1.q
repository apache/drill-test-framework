refresh table metadata s_1level;
explain plan for select filename, * from s_1level where dir0 = 'ABC' and s_nationkey > 8 and filename like '%1.parquet';