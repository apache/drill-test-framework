explain plan for select * from ( select substring(name,4) from student_parquet_v where student_id=10 ) t limit 0;
