set `planner.slice_target`=1;
select * from `/drill/testdata/schema_change_empty_batch/maprdb/binary/part` t order by t.data.p_partkey limit 5;
reset `planner.slice_target`;