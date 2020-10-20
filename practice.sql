-- Hellow World SQL Query
SELECT *
FROM actor;

-- Query for first name and last name in actor table
SELECT first_name, last_name
FROM actor;

-- Query for first name that is Nick
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for first name that equals Nick using the Like clause
SELECT last_name, first_name
FROM actor
WHERE first_name Like 'Nick';

SELECT last_name, first_name
From actor
WHERE last_name like 'Wahlberg';
-- Query for first name that starts with J using LIKE and WHERE with a wildcard
SELECT last_name, first_name
FROM actor
WHERE first_name LIKE 'J%';

-- SQL Aggregations => SUM(), ABG(), COUNT(), MIN(), MAX()
-- Query to display the sum of the amounts paid that are greater than 5.99
SELECT SUM(amount) As "Total"
FROM payment
Where amount > 5.99

-- Query to displat the average amounts paid that are greater than 5.99
SELECT AVG(amount) AS average
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts paid that are greater than 5.99
SELECT COUNT (*)
FROM payment
Where amount > 5.99;

-- Query to display the max amount paid that is greater than 5.99
SELECT MIN(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display customer_ids with the summed amount for each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY total DESC;

SELECT customer_id, COUNT(*) as num_payments
FROM payment
WHERE amount > 2.99
GROUP BY customer_id
HAVING COUNT(*)> 10
ORDER BY num_payments DESC
LIMIT 10;

SELECT *
FROM inventory

SELECT MIN(3.99)
FROM payment
WHERE amount < 5.99 and amount > 3.99

SELECT * 
FROM inventory;

