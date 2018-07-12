SELECT
  decimal_28_4
FROM dfs.drillTestDir.`CTAS_CSV_PARQUET_DECIMAL28`
WHERE
  greater_than (
    CAST('9.999999999999999999999999993' AS DECIMAL(28,27)),
    CAST('9.999999999999999999999999992' AS DECIMAL(28,27))
  )
LIMIT 2;
