explain plan for select * from ( select stddev_pop(voter_id),stddev_pop(age),stddev_pop(contributions),stddev_pop(voterzone) from voter_csv_v where age > 30 ) t limit 0;
