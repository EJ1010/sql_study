USE student_db;
SHOW TABLES;
DESC students;
SELECT * FROM students;

SELECT * FROM students WHERE name LIKE '_a__'; # 총 4개 문자열
SELECT * FROM students WHERE name LIKE '____';
SELECT * FROM students WHERE name NOT LIKE '____';

# % : 0번 | 1번 이상

# WHERE : 조건절 => 비교 & 논리연산자
# <> !=
# NOT : 부정 연산자이긴 하지만, 단순 부정을 하기보다는 NULL을 잡기 위한 용도
## LIKE 에는 NOT이 호환 가능

## safe 모드로 인하여 문법은 맞지만 실행할 수 없음
 UPDATE students
    SET age = 15, grade = "2학년"
  WHERE name = "Jane";

## 위의 쿼리를 실해앟려면
SET SQL_SAFE_UPDATES = 0;
## 하지만 추천하진 않음.
# PK 속성이 적용된 컬럼을 조건으로 사용! ## 하는 것이 가장 좋음