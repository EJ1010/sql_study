USE sakila;

	 SELECT rating, 
			COUNT(*) AS rating_count,
            AVG(rental_rate) avg_rental_rate
	   FROM film
   GROUP BY rating
   ORDER BY avg_rental_rate DESC; # default ASC. 내림차순 하고 싶으면 DESC
   
   
	 SELECT rating, 
			COUNT(*) AS rating_count,
            AVG(rental_rate) avg_rental_rate
	   FROM film
	  WHERE release_year = 2006 OR release_year = 2007
   GROUP BY rating
   ORDER BY avg_rental_rate DESC;
   # GROUP화를 하고자 하는 대상 존재 : 해당 그룹화 대상의 조건이 직접 X, WHERE
   
   
	 SELECT rating, 
			COUNT(*) AS rating_count,
            AVG(rental_rate) avg_rental_rate
	   FROM film
	  WHERE release_year = 2006 OR release_year = 2007
   GROUP BY rating
     HAVING avg_rental_rate >= 200
   ORDER BY avg_rental_rate DESC;
   # GROUP화 되어있는 대상의 조건을 설정 : HAVING
   # 표기 순서 : S -> F -> W -> G -> H -> O
   