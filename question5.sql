## For last names that are shared by at least two actors, list those last names and the number of actors who have that last name ## 
SELECT last_name, COUNT(last_name) AS 'actor_count'
 FROM actor
 GROUP BY last_name
HAVING Count(last_name) >= 2
ORDER BY COUNT(last_name) DESC;

 