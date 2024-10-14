## You need to find the ID number, first name, and last name of an actor, where the only thing you know about him is his first name, Joe. + Create an additional query to find all the movies that Joe has been in ## 
SELECT * FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = "Joe";

SELECT actor. actor_id, actor. first_name, actor.last_name, film_actor.film_id
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
WHERE first_name = "Joe"; 
