SELECT
  COUNT(ALL decimal_with_null_38_4)
FROM dfs.drillTestDir.`CTAS_CSV_PARQUET_DECIMAL38`
GROUP BY decimal_with_null_38_4;
