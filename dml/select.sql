insert into student_tb 
values
	(0,'김ㄱㄱ',20,0), 
    (0,'김ㄴㄴ',21,0), 
    (0,'김ㄷㄷ',20,null), 
    (0,'김ㄹㄹ',21,null), 
	(0,'김ㅁㅁ',22,0);
    
select*from student_tb;
select
	student_id,
    student_name,
    student_age,
    student_score
from
	student_tb
where
	(student_age = 20
    or student_score is not null)
    and student_name = '김ㄷㄷ';
    
 update student_tb
 set
	student_score = 25
where     #vlookup 기준값처럼, 기본키값만 써야함.
	student_age = 22;
    
#나이가 20살인 학생들의 점수를 전부 더하세요.
select
	student_age,
	sum(student_score) as total_score
from
	student_tb
-- where    
--     student_age = 20
group by    #한번에 합치거나, 평균
	student_age
having      # 조건 안에 세부조건. groupby와 쓴다.
	total_score= 40;



