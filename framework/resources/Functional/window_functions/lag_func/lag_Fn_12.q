SELECT col2 , LAG(col2 ) OVER ( PARTITION BY col2 ORDER BY col0 nulls FIRST ) LAG_col2 FROM `fewRowsAllData.parquet`;