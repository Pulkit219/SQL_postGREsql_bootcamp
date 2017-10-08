SELECT * FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;

SELECT * FROM payment LIMIT 5;
SELECT first_name, last_name FROM customer ORDER BY first_name, last_name DESC;
SELECT first_name, last_name FROM customer ORDER BY first_name DESC;

