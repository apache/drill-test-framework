select flatten(sub1.events)  from (select t1.events from `data.json` t1 inner join `data.json` t2 on t1.uid=t2.uid) sub1;
