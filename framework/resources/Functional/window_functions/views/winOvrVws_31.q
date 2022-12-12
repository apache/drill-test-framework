CREATE OR REPLACE VIEW vwOnParq_31 (col_int, col_bigint, col_char_2, col_vchar_52, col_tmstmp, col_dt, col_booln, col_dbl, col_tm) AS SELECT col_int, col_bigint, col_char_2, col_vchar_52, col_tmstmp, col_dt, col_booln, col_dbl, col_tm from `forViewCrn.parquet`;
SELECT col_dt, cume_dist() over(ORDER BY col_dt) from vwOnParq_31;
DROP VIEW vwOnParq_31;
