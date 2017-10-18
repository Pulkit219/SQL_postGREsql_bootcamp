--INNER JOIN


SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id;

SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id ORDER BY customer.customer_id;

SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id WHERE first_name ILIKE 'A%';

SELECT * FROM staff;
SELECT * FROM payment;

SELECT payment_id,customer_id,amount,first_name,last_name FROM payment JOIN staff ON payment.staff_id=staff.staff_id;
--USING AGGREGATE WITH JOINS
SELECT first_name, SUM(amount),COUNT(first_name) FROM payment JOIN staff ON payment.staff_id=staff.staff_id GROUP BY first_name;
--USING AGGREGATE WITH JOINS
SELECT title,COUNT(title)AS copies  FROM inventory JOIN film on inventory.film_id=film.film_id WHERE store_id=1 GROUP BY title ORDER BY title;


