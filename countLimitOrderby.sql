SELECT * FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;

SELECT * FROM payment LIMIT 5;
SELECT first_name, last_name FROM customer ORDER BY first_name, last_name DESC;
SELECT first_name, last_name FROM customer ORDER BY first_name DESC;

SELECT * FROM payment;
SELECT customer_id, amount FROM payment ORDER BY amount DESC LIMIT 10;

SELECT * FROM film;
SELECT title FROM film ORDER BY film_id LIMIT 5;

SELECT * FROM payment;
SELECT customer_id, amount FROM payment WHERE amount BETWEEN 5 AND 7;
SELECT customer_id, amount FROM payment WHERE amount NOT BETWEEN 5 AND 7;

SELECT amount,payment_date FROM payment WHERE payment_date NOT BETWEEN '2007-02-07' AND '2007-02-15';

SELECT * FROM customer;
SELECT first_name, last_name FROM customer WHERE first_name LIKE '%her%';
SELECT first_name, last_name FROM customer WHERE first_name LIKE '_her%';
SELECT first_name, last_name FROM customer WHERE first_name ILIKE '_hEr%';
