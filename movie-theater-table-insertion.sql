insert into movies(
	movie_id,
	movie_title,
	release_date,
	last_showing,
	rating,
	director
) values (
	1111,
	'The Holy Mountain',
	to_date('29-11-1973', 'dd-mm-yyyy'),
	to_date('01-01-2024', 'dd-mm-yyyy'),
	'R',
	'Alejandro Jodorowsky'
);

insert into tickets (
	ticket_id,
	movie_id,
	age_tier,
	ticket_price
) values (
	44444,
	1111,
	'senior',
	4.99
);

insert into concessions (
	concession_id,
	concession_price
) values (
	56789,
	10.64
);

insert into loyalty_status (
	loyalty_id,
	status_level,
	reward_points
) values (
	12345,
	'elite',
	500
);

insert into customers(
	customer_id,
	loyalty_id,
	first_name,
	last_name,
	age_,
	birthday,
	email
) values (
	11111,
	12345,
	'Albert',
	'Wilkinson',
	49,
	to_date('01-01-1947', 'dd-mm-yyyy'),
	'hiimalbert@hotmail.com'
);

insert into order_ (
	order_id,
	customer_id,
	concession_id,
	concession_quantity,
	ticket_id,
	ticket_quantity,
	loyalty_id,
	discount,
	order_total
) values (
	98765,
	11111,
	56789,
	2,
	44444,
	1,
	12345,
	40.00,
	15.00
);

select * from customers;
select * from loyalty_status;
select * from order_;
select * from concessions;
select * from tickets;
select * from movies;
	