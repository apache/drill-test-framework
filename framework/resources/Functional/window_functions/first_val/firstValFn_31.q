select * from (select col7 , FIRST_VALUE(col7) OVER(PARTITION BY col7 ORDER BY col7) FIRST_VALUE_col7 FROM `allTypsUniq.parquet` ) sub_query where FIRST_VALUE_col7 IN (true);
