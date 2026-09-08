USE sakila;
SHOW TABLES;

SELECT * FROM payment LIMIT 10;

SELECT SUM(amount) FROM payment;

	 SELECT  DATE_FORMAT(payment_date, "%Y-%m") AS payment_month, ## 연-월만 가져올 것임
			 SUM(amount) 
	   FROM  payment
   GROUP BY  payment_month;
	 
     SELECT  * FROM  rental LIMIT 10;
	 
     SELECT  customer_id,
			 COUNT(*) AS rental_count
       FROM  rental
   GROUP BY  customer_id;

       
	 SELECT  customer_id
       FROM  rental;