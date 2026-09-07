# DB -> TABLE -> Schema -> Modify / Change
# Data X


CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students(
	id 		INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name 	VARCHAR(30),
    age 	INT UNSIGNED,
    grade 	VARCHAR(10)
);

## 값 넣는 방법1. 컬럼 지정 없이 모든 값 넣기
INSERT INTO students VALUES (1, "David", 15, "2학년");

## 값 넣는 방법2. 컬럼 지정하고 해당 값 넣기
INSERT INTO students (name, age, grade)
	 VALUES ("Dave", 16, "3학년");

## 여러 값 넣기            
INSERT INTO students (name, age, grade)
	 VALUES ("Jane", 14, "1학년"),
			("Juliet", 15, "2학년"),
            ("Romeo", 16, "3학년");
    
SELECT *  FROM students;

## id가 3인 경우에 2힉년과 15살로 바꾸겠다
 UPDATE students
	SET grade = "2학년", age = 15
  WHERE id = 3;
  
  
# MySQL 프로그램 설치 시 구글 포털 사이트에서 MySQL 커뮤니티 서버에서 일반기능과 얼리 버전이 있었는 데, 얼리 버전의 경우 아래의 내용이 실행이 됨
 UPDATE students
	SET grade = "3학년", age = 16;

## 위의 에러가 안 뜨게 해주는 것. 위험함    
SET SQL_SAFE_UPDATES = 0; -- 0은 끄는 것, 1은 켜는 것


 UPDATE students
	SET grade = "1학년", age = 14
  WHERE grade = "2학년" AND age = 15;
  

# DB -> Table -> Schema -> MODIFY / CHANGE -> INSERT -> UPDATE -> SELECT

SELECT * FROM students; # * = all
SELECT * FROM students WHERE age >= 15; # WHERE = 조건절
SELECT * FROM students WHERE age <> 15;
# 조건절 : 비교연산자 & 논리연산자
# 비교연산자 : = >= <= > <
# 부정연산자 : != <>
# 1 == "1" // 1 === "1"

SELECT * FROM students WHERE NOT age = 16;
# NOT -> 연산자 X, 예약어 > 논리 부정 키워드
# 단순 부정연산을 위한 목적보다, NULL의 연산 처리를 위한 목적
# IS NOT NULL
## 문법이 아님. 통으로 쓰여진 문법이 아님. NULL을 잡는 게 NOT이 많이 쓰여서 관례상 이리 쓰이는 것임 

SELECT * FROM students WHERE age IS NOT NULL;
SELECT * FROM students WHERE age <> NULL;


SELECT  * FROM students 
		 WHERE age > 15 OR grade = "2학년";
## 좌항을 만족 시키거나 우항을 만족시키거나.
         
SELECT  * FROM students 
		 WHERE (age > 15 AND grade = "3학년") OR grade = "1학년";
# AND : 좌항 AND 우항 -> 좌항도 True / 우항도 True
## 우선순위를 정해둘 것이면 ()를 통해서 할 수 있음

SELECT * FROM students
		WHERE name LIKE "D%"; # % => 0개 혹은 그 이상의 존재 정의
        
SELECT * FROM students
		WHERE name LIKE "%D%";