
-- Query for last name Wahlberg
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Query on how many payments were made between 3.99 and 5.99

SELECT MIN(3.99)
FROM payment
WHERE amount < 5.99 and amount > 3.99
ORDER BY amount ASC;

-- Query what film does the store have the most of?
SELECT film_id
FROM inventory 
GROUP BY inventory_id



--Query how many customers have the last name William
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

--Query what store employee sold the most rentals
SELECT staff_id, as average_per_employee
FROM payment
GROUP BY staff_id;

SELECT staff_id
FROM payment
GROUP BY staff_id;

--Query How many different district names are there?
SELECT district
FROM address
GROUP BY district

-- Query What film has the most actors in it?

SELECT last_name, first_name
FROM actor
GROUP BY actor_id


-- Query from store_id 1, how many customers have a last name ending with 'es'?

SELECT first_name, last_name, customer.store_id = 1
FROM customer
WHERE first_name LIKE '%es';



-- Query How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430?
SELECT customer_id, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430





--Query within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(*)
FROM film
GROUP BY rating
ORDER BY rating












