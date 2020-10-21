-- Create Customer Table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
);

SELECT * FROM customer;

-- Create Brand Table
CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(100),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);	

--Create Order Table
CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE,
	subtotal NUMERIC(8,2),
	total NUMERIC(10,2),
	customer_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
	);
	
--Create Product Table
CREATE TABLE product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	product_name VARCHAR(100),
	quantity INTEGER,
	order_id INTEGER NOT NULL,
	seller_if INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id)
)

--Alter statement to add foreign key
ALTER TABLE order_
ADD FOREIGN KEY (item_id) REFERENCES product(item_id);