 ## Insert a record to represent Mary Smith renting the movie ACADEMY DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to capture the exact row you entered into the rental table ## 

 INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
 VALUES (NULL, '2024-10-14 12:41:00', '1', '1', NULL, '1', '2024-10-14 12:41:00');
 
 SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
 FROM rental
 WHERE rental_id = "16050";


