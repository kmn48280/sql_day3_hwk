--1. List all customers who live in Texas (use JOINs)
-- SELECT customer_id, first_name, last_name, district
-- FROM customer
-- JOIN "address"
-- ON customer.address_id = address.address_id
-- WHERE district = 'Texas';

--2. Get all payments above $6.99 with the Customer's Full Name and Full Name
-- SELECT amount, customer.first_name, customer.last_name
-- FROM payment
-- JOIN customer
-- ON payment.customer_id = customer.customer_id
-- WHERE amount > 6.99
-- ORDER BY amount DESC; 

-- 3. Show all customer's names who have made payments over $175 (use subqueries)
-- SELECT *
-- FROM customer
-- WHERE customer_id IN (
--     SELECT customer_id, SUM(amount)
--     FROM payment
--     GROUP BY customer_id
--     HAVING SUM(amount) >= 175
--     ORDER BY SUM(amount)
-- );

-- 4. List all customers that live in Nepal (use the city table)
-- SELECT first_name, last_name, "address".address_id, country.country
-- FROM customer
-- JOIN "address" 
-- ON customer.address_id = "address".address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE country = 'Nepal'

--5. Which staff member had the most transactions?
-- SELECT COUNT(payment_id), staff.first_name, staff.last_name, staff.staff_id
-- FROM payment
-- JOIN staff
-- ON payment.staff_id = staff.staff_id
-- GROUP BY staff.staff_id 
-- ORDER BY COUNT(payment_id) DESC;

-- 6. How many movies of each rating are there?
-- SELECT DISTINCT rating, COUNT(inventory.inventory_id)
-- FROM film
-- JOIN inventory
-- ON film.film_id = inventory.film_id
-- GROUP BY rating
-- ORDER BY COUNT(inventory.inventory_id) DESC

-- 7. Show all customers who have made a single payment above $6.99 
-- (Use Subqueries)
-- SELECT customer_id, COUNT(payment_id)
-- FROM payment 
-- GROUP BY amount > 6.99, customer_id
-- HAVING amount > 6.99
-- ORDER BY COUNT(payment_id)

-- 8. How many free rentals did our stores give away?
-- SELECT amount, payment_id, rental_id
-- FROM payment
-- WHERE amount = 0.00
-- GROUP BY payment_id









