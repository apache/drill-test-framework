SELECT AVG(lead_col0) FROM (SELECT LEAD(col0) OVER(PARTITION BY col7 ORDER BY col0) lead_col0 , col7 FROM `allTypsUniq.parquet`) sub_query;