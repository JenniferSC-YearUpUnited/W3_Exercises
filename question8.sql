## Use JOIN to display the total amount rung up by each staff member in August of 2005, using tables staff and payment ## 
## Staff on the left ##
## payment on the right ## 

SELECT first_name, last_name, SUM(amount) AS 'sum(pay.amount)' 
FROM staff
JOIN payment ON payment.staff_id = staff.staff_id
WHERE payment_date BETWEEN '2005-08-01 00:00:00' AND '2005-08-31 23:59:59' 
GROUP BY first_name, last_name;










