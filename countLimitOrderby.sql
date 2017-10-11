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

SELECT * FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment where amount>5;
SELECT * FROM actor;
SELECT COUNT(*) FROM actor WHERE first_name ILIKE 'P%';
SELECT * FROM address;
SELECT COUNT(DISTINCT (district)) FROM address;
SELECT DISTINCT district FROM address;

SELECT * FROM film;
SELECT COUNT(*) FROM film WHERE rating='R' AND replacement_cost BETWEEN 5 AND 10;
SELECT title FROM film WHERE title ILIKE '%Truman%';
