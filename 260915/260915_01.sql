# SET = 집합 쿼리 구문
# UNION : 두 개 이상의 SELECT 문의 결과를 집합으로 출력해주는 구문 (중복행 제거)
# UNION ALL : UNION과 기능은 동일하나, 중복된 행을 포함

# INTERSECT : 집합으로 보자면, 교집합
# EXCEPT : 집합으로 보자면, 차집합

# UNION | UNION ALL | INTERSECP | EXCEPT
# 집합 쿼리 구문을 사용하려면, 반드시 각 SELECT 구문의 열이 같은 순서로 되어있어야 함
# + 데이터의 유형도 동일해야 함 (스키마 타입이 동일해야 함)

	 SELECT film_id FROM film
	 UNION  ALL
	 SELECT film_id FROM inventory;
     
     
# TRANSACTION 구문
# START TRANSACCTION // COMMIT // ROLLBACK 구문

SELECT  *  FROM customer LIMIT 1O;

SET SQL_SAFE_UPDATE = 0; 
START TRANSACTION;

ROLLBACK;


START TRANSACTION;
UPDATE customer
SET first_name = "DAVID"
	WHERE  customer_id =1;

	 SELECT * FROM customer LIMIT 10;
     
COMMIT;
    
    
    
UPDATE customer
SET first_name = "DAVE";
;
UPDATE 