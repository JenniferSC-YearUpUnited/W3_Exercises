## List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join## 

SELECT film.title, COUNT(actor_id) AS 'number_of_actors'
FROM film_actor
INNER JOIN film ON film.film_id = film_actor.film_id
GROUP BY title
HAVING COUNT(actor_id) >= 12
ORDER BY COUNT(actor_id) DESC;

