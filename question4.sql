## Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order. + Create a second version of this query that adds a count of the total number of movies each actor has been in. 
SELECT actor_id, first_name, last_name FROM actor
WHERE last_name LIKE "%LI%"
ORDER BY last_name, first_name; 

SELECT actor_id, COUNT(film_id) AS 'TotalMovies'
FROM film_actor
GROUP BY actor_id; 

