 ## How many copies of the film HUNCHBACK IMPOSSIBLE exist in the system? ## 
SELECT title, COUNT(title) AS 'number_in_inventory'
FROM inventory
JOIN film ON film.film_id=inventory.film_id
GROUP BY title
HAVING title = "HUNCHBACK IMPOSSIBLE" AND COUNT(title) = "6";




