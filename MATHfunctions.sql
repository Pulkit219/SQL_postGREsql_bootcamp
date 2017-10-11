SELECT * FROM payment LIMIT 5;
SELECT AVG (amount) FROM payment;
SELECT ROUND (AVG (amount),2) FROM payment;
SELECT MIN (amount) FROM payment;
SELECT MAX (amount) FROM payment;
SELECT SUM (amount) FROM payment;
SELECT COUNT (DISTINCT amount) FROM payment;

SELECT customer_id FROM payment;
SELECT COUNT (DISTINCT customer_id) FROM payment;
 
SELECT customer_id FROM payment GROUP BY customer_id;