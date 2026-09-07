# 주석 : 문법 관련 내용, 마케팅 관점
-- 단문(한줄) 주석
/*
	복문 주석
*/

# MySQL 프로그램 : RDBMS를 지원하기 위해서 만들어진 프로그램
# DB : Database의 약자. 여러 Data들이 모여있는 그룹 혹은 집합 = 저장소
# Data : 관찰·측정·조사를 통해서 수집된 값, 사실, 기록
## 행과 열 안에 하나의 데이터를 넣어놓자고 약속한 것
# Schema : 약속 = 데이터별 특정 요소들을 어떤 제약조건하에 기록·저장할 것이다
# Table : 공통 주제에 속해있는 데이터들을 별도로 관리하기 위해서 만들어놓은 저장단위
# DBMS > RDBMS(MySQL) > DB > Table > Schema > Data (데이터베이스를 관리할 수 있는 시스템 중에 대표적으로 RDBMS가 있고 그 DB안에 복수의 Table이 존재하는데, 스키마를 기준으로 각각의 데이터가 저장되어 있는 형태)
## DB안에 복수의 Table이 존재하는데, 스키마를 기준으로 각각의 데이터가 약속이 되어있음.
# AI Agent & MCP : MySQL > AI // RCTCO : 어떻게 쿼리문을 짜고, 이렇게 해줘 라는 Prompt. RCTCO를 작성할 때 원리를 알고있느 것과 무지한 상태로 요청하는 것은 차이가 있을 것임
# MongoDB 프로그램 : NoSQL을 지원하기 위해 만들어진 프로그램 (NoSQL = Not Only SQL)

# SQL 문법 종류 4가지 분야
# DDL : Data Definition Language : CREATE, DROP, ALTER
# DML : Data Manipulation Language : SELECT, INSERT, UPDATE, DELETE
# DCL : Data Control Language : GRANT, REVOKE
# TCL : Transaction Control Language : COMMIT, ROLLBACK, SAVEPOINT

# Table : 실제 Data가 저장되어 있는 공간
# 행과 열로 구성
# 1개의 행 = 레코드(Recode) = Row = 튜플(Tuple)
# 1개의 열 = 속성(Attribute) = Column > Field Name(필드명)