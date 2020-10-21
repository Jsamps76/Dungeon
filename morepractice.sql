-- ADD data to our customer table
INSERT INTO customer(
	first_name,
	last_name,
	address,
	billing_info
)

VALUES(
	'Joe',
	'Sampley',
	'2716 West Sunnyside',	
	'Same as above'
);

SELECT *
FROM customer;

--Insert for Brand Table
INSERT INTO brand(
	brand_name,
	contact_number,
	address
)
VALUES(
	'Business Office',
	'773-123-4567',
	'123 Lake Street, Chicago IL 06056'
)

-- Insert for Orders
INSERT INTO order_(
	order_date,
	subtotal,
	total,
	customer_id,
	item_id
)

VALUES(
	'10/20/2020',
	'50,00'
	'60.00'
	1,
	3
)

INSERT INTO product(
	amount,
	product_name,
	quantity,
	seller_id
)

VALUES(
	50.00,
	'Coding Tips',
	25,
	1)
	
--Alter statement
ALTER TABLE product
ALTER COLUMN order_id
DROP NOT NULL;
	
SELECT *
FROM product
