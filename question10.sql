 ## How many copies of the film HUNCHBACK IMPOSSIBLE exist in the system? ## 
SELECT title 
FROM film
WHERE title = "HUNCHBACK IMPOSSIBLE"
UNION
SELECT COUNT(film_id) AS 'Number_in_inventory'
FROM inventory
WHERE film_id = 6





