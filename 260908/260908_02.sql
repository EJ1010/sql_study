DROP DATABASE student_db;
## 위 내용 실행하지 않기.

DELETE FROM students;
## 해당 테이블 안에 있는 값을 제거하겠다.

DELETE FROM students WHERE name = "David";
## 이것도 실행 안 됨. 이것도 안정장치가 되어있기 때문에
# Error Code: 1175.
# You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.


TRUNCATE TABLE students;
# 기존 테이블의 구조는 유지하면서 값만 제거
## 실행하지 말기

DESC students;


