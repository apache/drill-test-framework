explain plan for select * from (
select * from (select cast(s.onecf.name as varchar(35)) name from student s where cast(s.twocf.age as integer) < 20 UNION ALL select cast(v.onecf.name as varchar(35)) name from voter v where cast(v.twocf.age as integer) < 20) student) t limit 0;
