set `store.hive.optimize_scan_with_native_readers` = true;
select int_col, ts_col from (select * from hive.`DRILL_6331_managed_table`);
reset `store.hive.optimize_scan_with_native_readers`;
