SELECT (CASE WHEN coalesce(false,false) THEN true ELSE false END) FROM (VALUES(1)) test_tbl;