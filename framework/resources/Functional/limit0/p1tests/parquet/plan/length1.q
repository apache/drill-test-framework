explain plan for select * from ( select length(name,'UTF8'),length(registration,'UTF8') from voter_parquet_v where voter_id=10 ) t limit 0;
