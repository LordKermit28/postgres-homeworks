CREATE TABLE customer_data
(
    customer_id varchar(5) PRIMARY KEY,
	company_name text,
	contact_name text
);

CREATE TABLE employees_data
(
    employee_id int PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	title varchar(100),
	birth_date date,
	notes text
);


CREATE TABLE order_data
(
    order_id int PRIMARY KEY,
	customer_id varchar(5) REFERENCES customer_data(customer_id),
	employee_id int REFERENCES employees_data(employee_id),
	order_date date,
	ship_city varchar(100)
);
