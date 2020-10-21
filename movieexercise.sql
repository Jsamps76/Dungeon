-- add data to customer table
INSERT INTO customer(
		customer_id,
		first_name,
		last_name,
		billing_address
)

VALUES(
		1234,
		Joe,
		Sampley,
		345 Movie Place, Chicago, IL 60656
)	

INSERT INTO concessions(
		food,
		soft_drink,
		alcoholic_drink,
		subtotal,
		total
)

VALUES(
		Popcorn,
		Coke,
		Beer,
		20,00,
		28,00
)

INSERT INTO tickets(
		movie
		movie_time
		ticket_type,
		subtotal,
		total,
		
	
)

VALUES(
		Star Wars,
		19:00,
		Student,
		10.00,
		13.00
)

INSERT INTO movies(
		theater_1,
		theater_2,
		theater_3,
		thearer_4,
	
VALUES(
		Star Wars,
		Godzilla,
		Indiana Jones,
		The Godfather
)	
-- Alter statement
ALTER TABLE customer
ALTER COLUMN customer_id
DROP NOT NULL;	

	
SELECT *
FROM movies;
