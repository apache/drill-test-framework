select store.store_name as c0, sum(store.store_sqft) as m0, sum(store.grocery_sqft) as m1 from store as store where store.store_name in ('Store 17', 'Store 3', 'Store 8', 'Store 9') group by store.store_name;
