-- create loyalty_status table
create table loyalty_status(
	loyalty_id SERIAL primary key,
	status_level VARCHAR(100),
	reward_points INTEGER
);

-- create customers table
create table customers(
	customer_id SERIAL primary key,
	loyalty_id SERIAL,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age_ INTEGER,
	birthday DATE,
	email VARCHAR(150),
	foreign key(loyalty_id) references loyalty_status
);

-- create concessions table
create table concessions(
	concession_id SERIAL primary key,
	concession_price NUMERIC(10,2)
);

-- create movies table
create table movies(
	movie_id SERIAL primary key,
	movie_title VARCHAR(150),
	release_date DATE,
	last_showing DATE,
	rating VARCHAR(50),
	director VARCHAR(150)
);

-- create tickets table
create table tickets(
	ticket_id SERIAL primary key,
	movie_id SERIAL,
	age_tier VARCHAR(100),
	ticket_price NUMERIC(3,2),
	foreign key(movie_id) references movies
);

-- create order table
create table order_(
	order_id SERIAL primary key,
	customer_id SERIAL,
	concession_id SERIAL,
	concession_quantity INTEGER,
	ticket_id SERIAL,
	ticket_quantity INTEGER,
	loyalty_id SERIAL,
	discount NUMERIC(2,2),
	order_total NUMERIC(10,2),
	foreign key(customer_id) references customers,
	foreign key(concession_id) references concessions,
	foreign key(ticket_id) references tickets,
	foreign key(loyalty_id) references loyalty_status
);

ALTER TABLE order_
DROP COLUMN discount;

ALTER TABLE order_
ADD discount NUMERIC(4,2);