use sakila;

-- Display all available tables in the Sakila database.
show tables;

-- Retrieve all the data from the tables actor, film and customer.
select * from actor ; -- indep
select * from film ; -- indep
select * from customers ; -- indep 
select * from actor, film, customer; -- all-in-one

-- 3.1 Titles of all films from the film table
select title from film ;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
select name from language ;

-- 3.3 List of first names of all employees from the staff table
select first_name from staff;

-- Retrieve unique release years
select distinct release_year from film;

-- 5.1 Determine the number of stores that the company has.
select count(store_id) as number_of_store from store;

-- 5.2 Determine the number of employees that the company has.
select count(staff_id)  as number_employee from staff;

-- 5.3 Determine how many films are available
	-- how many have been rented.
select count(rental_id) as films_rented  from rental;
select count(*) as films_available from film;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct last_name, count(last_name) from actor group by last_name ;

-- Retrieve the 10 longest films.
select length, title from film
order by length desc
limit 10;

-- Retrieve all actors with the first name "SCARLETT".
select first_name,last_name from actor where first_name like 'SCARLETT';
