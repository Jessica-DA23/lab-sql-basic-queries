USE sakila;

# 1 Display all available tables in the Sakila database.
SHOW TABLES;

# 2 Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor;
SELECT *
FROM film;
SELECT *
FROM customer;

#3
#3.1
SELECT title
FROM film;
#3.2
SELECT name AS language
FROM language;
#3.3
SELECT first_name
FROM staff;
#4
SELECT DISTINCT release_year
FROM film;

#5
#5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) AS number_of_stores
FROM store;

#5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) AS number_of_employes
FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS rented_filmes
FROM rental;
SELECT COUNT(*) AS rented_filmes
FROM film;
    
#5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS number_of_distinct_last_name
FROM actors;

#6 Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name
FROM actor
WHERE first_name LIKE 'SCARLETT';

#BONUS
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;


#7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';