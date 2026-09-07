# bit, bytes
# bit = 컴퓨터가 취급할 수 있는 최소한의 연산처리 단위 = 0 , 1
# byte = bit 8개 = 1 byte = 2^8 = 256


CREATE DATABASE IF NOT EXISTS customer_db;
SHOW DATABASES;
USE customer_db;

DROP TABLE customer;
# NULL = 결측값
# 0, not, none => 값이 결여되어 있는 상태 (언제라도 값이 들어올 수 있다는 전제조건)
CREATE TABLE IF NOT EXISTS customer (
	no		INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name	VARCHAR(20) NOT NULL,
    age		INT,
    phone	VARCHAR(20),
    email	VARCHAR(30) NOT NULL,
    address	VARCHAR(50)
);

# Table 내 컬럼 속성 변경 (속성만 변경)
ALTER TABLE customer MODIFY COLUMN name VARCHAR(30) NOT NULL;

# Table 내 컬럼명 + 속성 변경
ALTER TABLE customer CHANGE COLUMN name user_name VARCHAR(20)  NOT NULL;

## Table 내 여러 개 변경
# 동시에 여러 구문을 같이 실행하고자 할 때
# 구문의 가독성을 위해서 들여쓰기를 적절하게 해주면 좋음
ALTER TABLE customer 
			CHANGE COLUMN age user_age INT, 
            CHANGE COLUMN phone user_phone VARCHAR(30) NOT NULL;

ALTER TABLE customer
			MODIFY email VARCHAR(40) NOT NULL,
            CHANGE address user_address VARCHAR(40);

DESC customer;
