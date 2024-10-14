## The actor HARPO WlLLlAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. Write one query to fix the record, plus another to verify the change ## 
UPDATE actor
SET first_name = "HARPO"
WHERE actor_id = '172';


SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = "WILLIAMS"; 