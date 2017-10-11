SELECT * FROM payment LIMIT 5;
SELECT AVG (amount) FROM payment;
SELECT ROUND (AVG (amount),2) FROM payment;
SELECT MIN (amount) FROM payment;
SELECT MAX (amount) FROM payment;
SELECT SUM (amount) FROM payment;
SELECT COUNT (DISTINCT amount) FROM payment;

SELECT customer_id FROM payment;
SELECT COUNT (DISTINCT customer_id) FROM payment;
 --SAME AS THIS ===
SELECT customer_id FROM payment GROUP BY customer_id;
--SELECT customer_id, amount FROM payment GROUP BY customer_id; WILL NOT WORK, aggregate func must be user with group by
SELECT customer_id, SUM (amount) FROM payment GROUP BY customer_id;
SELECT customer_id, AVG (amount) FROM payment GROUP BY customer_id;
SELECT customer_id, SUM (amount) FROM payment GROUP BY customer_id ORDER BY  SUM(amount) DESC;

SELECT staff_id FROM payment GROUP BY staff_id;
SELECT staff_id, COUNT(*) FROM payment GROUP BY staff_id;
-- In simpe words GROUP BY means group content with same ID's/names etc.. and then calculate whatever for that group applying aggregate functions
SELECT * FROM film;
SELECT rating FROM film GROUP BY rating;
SELECT rating, COUNT(*) FROM film GROUP BY rating;
SELECT  rating, ROUND(AVG(rental_rate),2) FROM film GROUP BY rating;

--HEADING FOR GROUP BY CHALLENEGE
SELECT * FROM payment;
SELECT staff_id, COUNT(payment_id),SUM(amount) FROM payment GROUP BY staff_id;

--CHALLENGE PART 2
SELECT * FROM film;
SELECT rating,ROUND(AVG(replacement_cost),2) AS replacement_costing FROM film GROUP BY rating;
--CHALLEnege PART 3
SELECT * FROM payment;
SELECT customer_id,SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount)DESC LIMIT 5;


----------------------------------
--HAVING clause
--It means we can apply filter clause with GROUP BY. HAVING is filtering after GROUP is applicable
SELECT customer_id,SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount)>200 ;
SELECT rating, AVG(rental_rate) FROM film WHERE rating IN ('R','G','PG') GROUP BY rating HAVING AVG(rental_rate) <3 ;
-- CHALLENGE 
SELECT * FROM payment;
SELECT customer_id,COUNT(amount) FROM payment GROUP BY customer_id HAVING COUNT(amount)>=40;
--CHALLENGE 2
SELECT  rating, ROUND(AVG(rental_duration),2) FROM film GROUP BY rating HAVING AVG(rental_duration)>5;





