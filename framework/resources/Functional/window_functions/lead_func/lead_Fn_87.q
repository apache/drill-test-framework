select col3 , lead(col3) over(partition by col7 order by col3) lead_col3 from `allTypsUniq.parquet` where col3 in (127.99 , 0.0 , 1.0 , -1.0 , 33.9 , -1.1 , 1234.9 , -65534.0 , 9898.68);