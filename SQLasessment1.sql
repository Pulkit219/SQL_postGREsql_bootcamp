
---------------------ASSESSMENT 1
SELECT * FROM payment;
SELECT customer_id,staff_id,SUM(amount) FROM payment GROUP BY (customer_id,staff_id) HAVING SUM(amount)>=110 AND staff_id=2;

SELECT * FROm film;
SELECT COUNT(title) FROM film WHERE title ILIKE 'J%';

SELECT * FROM customer;
SELECT first_name, customer_id,address_id FROM customer WHERE first_name ILIKE 'E%' AND address_id < 500; 