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

SELECT title,name FROM film JOIN language ON film.language_id=language.language_id ;


--TYPES OF JOIN INNER JOIN
--OUTER JOIN=>join all props on both tables and return null on both sides if props doesn't match
--LEFT OUTER join means left table side will not return null but right table will, while RIGHT OUTER JOIN is the opposite of it.

--LEFT OUTER JOIN------------------------------------------
SELECT title,film.film_id, inventory_id FROM film LEFT JOIN inventory ON film.film_id=inventory.film_id WHERE inventory_id IS null ORDER BY film.film_id;

--UNION

--EXTRACTS AND TIMESTAMPS
SELECT customer_id,extract(day from payment_date) FROM payment;
SELECT SUM(amount),extract(month from payment_date) AS month FROM payment GROUP BY month;