set store.hive.maprdb_json.optimize_scan_with_native_reader = true;
select * from hive.`json_MapR_DB_table` where column_1 like 'value_1_17';
reset store.hive.maprdb_json.optimize_scan_with_native_reader;