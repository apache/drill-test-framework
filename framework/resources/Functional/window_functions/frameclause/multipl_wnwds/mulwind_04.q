SELECT 
      SUM(c2) OVER w as w_sum, 
      MIN(c1) OVER (PARTITION BY c8 ORDER BY c1 DESC NULLS LAST RANGE BETWEEN CURRENT ROW AND CURRENT ROW) as w_min_c1, 
      MAX(c9) OVER (PARTITION BY c8 ORDER BY c1,c9 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as w_max_c9, 
      AVG(c3) OVER (PARTITION BY c8 ORDER BY c3 DESC NULLS FIRST RANGE BETWEEN CURRENT ROW AND CURRENT ROW) as w_avg_c3, 
      COUNT(c2) OVER w as w_count,
      FIRST_VALUE(c2) OVER (PARTITION BY c8 ORDER BY c2 ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as w_fval_c2,
      LAST_VALUE(c2) OVER w as w_lval_c2
FROM ( 
        SELECT * FROM `t_alltype.parquet` ORDER BY c1,c2 DESC NULLS LAST
     ) TAL
     WINDOW w AS (PARTITION BY c8 ORDER BY c2 DESC NULLS FIRST RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING);
