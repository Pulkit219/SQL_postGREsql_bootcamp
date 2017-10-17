--INNER JOIN


SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id;

SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id ORDER BY customer.customer_id;

SELECT customer.customer_id,first_name,last_name,email,amount,payment_date FROM customer INNER JOIN payment 
ON payment.customer_id =customer.customer_id WHERE first_name ILIKE 'A%';

SELECT * FROM staff;
SELECT * FROM payment;