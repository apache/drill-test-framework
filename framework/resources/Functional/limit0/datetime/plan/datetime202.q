explain plan for select * from ( select cast(c_timestamp as timestamp) + cast(c_interval_month as interval month) from `interval_data.parquet` ) t limit 0;
