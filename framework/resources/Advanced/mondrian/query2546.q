select store.store_type as c0 from store as store where UPPER(store.store_type) = UPPER('8') group by store.store_type order by store.store_type ASC NULLS LAST;
