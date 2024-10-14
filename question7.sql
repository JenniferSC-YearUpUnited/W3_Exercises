## Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out that GROUCHO was the correct name after all! In a single query: if the first name of the actor is currently HARPO, change it to GROUCHO. Then write a query to verify your change ## 

UPDATE actor
SET first_name = "GROUCHO"
WHERE actor_id = 172;

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = "WILLIAMS";
