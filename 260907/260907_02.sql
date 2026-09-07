# DB : 데이터를 관리할 수 있는 가장 큰 카테고리
# 소문자로 해도 되던데, 왜 굳이 대문자?
# 현업 대문자
# 영어 베이스 기반 : 예약어 | 명령어 // 업데이터 : X
# ctrl + enter : 현재 작성한 쿼리문 실행
# 서로 다른 테이블간 어떤 연결 및 관계를 맺도록 할 것인가!!!


CREATE DATABASE dbname;

SHOW DATABASES;

USE dbname;

# 현업 스타일 (반복해서 값을 넣는 것을 싫어하고, 행이 많아지는 것을 싫어함)
CREATE TABLE mytable (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

# 현재 생성된 테이블이 어떤 규칙으로 정의되어 있는가?
DESC mytable;

# 현재 생성된 테이블 안에서 값을 조회할 때
SELECT * FROM mytable;

# 데이터베이스 삭제
DROP DATABASE DBNAME;

