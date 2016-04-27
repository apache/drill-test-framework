explain plan for select * from (
select cast(row_key as integer) student_id, cast(onecf['name'] as varchar(30)) name, cast(twocf['age'] as integer) age, cast(threecf['gpa'] as double) gpa, cast(fourcf['studentnum'] as bigint) student_num, cast(fivecf['create_date'] as timestamp) create_date from student where row_key < 800 and row_key > 750) t limit 0;
