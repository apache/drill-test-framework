select store.store_type as c0 from store as store, sales_fact_1997 as sales_fact_1997 where sales_fact_1997.store_id = store.store_id group by store.store_type order by store.store_type ASC NULLS LAST;
