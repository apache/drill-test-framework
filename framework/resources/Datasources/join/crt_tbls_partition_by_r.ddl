DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_intcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_intcl PARTITION BY( col_int ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_chrcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_chrcl PARTITION BY( col_chr ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_vrchrcl1;
CREATE TABLE dfs.`Join`.r_tblprtnby_vrchrcl1 PARTITION BY( col_vrchr1 ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_vrchrcl2;
CREATE TABLE dfs.`Join`.r_tblprtnby_vrchrcl2 PARTITION BY( col_vrchr2 ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_dtcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_dtcl PARTITION BY( col_dt ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_timcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_timcl PARTITION BY( col_tim ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_tmstmpcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_tmstmpcl PARTITION BY( col_tmstmp ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_fltcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_fltcl PARTITION BY( col_flt ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_intrvlyrcl;
CREATE TABLE dfs.`Join`.r_tblprtnby_intrvlyrcl PARTITION BY( col_intrvl_yr ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_intrvldycl;
CREATE TABLE dfs.`Join`.r_tblprtnby_intrvldycl PARTITION BY( col_intrvl_day ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
DROP TABLE IF EXISTS dfs.`Join`.r_tblprtnby_blncl;
CREATE TABLE dfs.`Join`.r_tblprtnby_blncl PARTITION BY( col_bln ) AS SELECT * FROM dfs.`/drill/testdata/join/typeall_r`;
