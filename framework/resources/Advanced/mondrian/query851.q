select store.store_state as c0, store.store_country as c1 from store as store group by store.store_state, store.store_country order by store.store_state ASC NULLS LAST;
