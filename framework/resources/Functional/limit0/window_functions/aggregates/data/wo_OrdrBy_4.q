SELECT SUM(col_int) OVER (PARTITION BY col_vchar_52) sum_int, col_vchar_52, col_int FROM `smlTbl_v` WHERE col_vchar_52 = 'DXXXXXXXXXXXXXXXXXXXXXXXXXEXXXXXXXXXXXXXXXXXXXXXXXXF';