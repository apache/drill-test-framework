explain plan for select * from (
select cast(s.twocf.age as integer) * cast(s.threecf.gpa as float) from student s where s.row_key = '800') t limit 0;
