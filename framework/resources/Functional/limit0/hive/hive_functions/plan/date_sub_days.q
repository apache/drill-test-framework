explain plan for select * from ( select date_sub(create_date, 30) from voter_parquet where voter_id=10 ) t limit 0;
