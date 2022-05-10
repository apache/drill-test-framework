alter session set `store.parquet.reader.int96_as_timestamp`=true;
create table dfs.subqueries.hive1_parquet_part partition by (create_timestamp1) as select * from dfs.subqueries.hive1_parquet limit 10;
alter session set `store.parquet.reader.int96_as_timestamp`=false;
refresh table metadata dfs.subqueries.`hive1_parquet_part`;
