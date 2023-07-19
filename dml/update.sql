select*from test_tb;

#updata(데이터수정)
update test_tb set birthday = '1111-11-11' WHERE test_id = 8;      #null값 삭제할때 조건주는것 WHERE, 찾을 매개체를 "key값, 또는 index" = 중복 절대로 되면 안됨.
update test_tb set name = 'ㅎㅎㅎ', birthday = '2222-02-22' where test_id = 8;

