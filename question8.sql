## Use JOIN to display the total amount rung up by each staff member in August of 2005, using tables staff and payment ## 
##COME BACK TO THIS ONE## 
SELECT staff.first_name, staff. last_name, payment.payment_date, .staff_id, (amount) AS 'sum(pay.amount)'
FROM payment
JOIN staff 
ON payment.staff_id = staff.staff_id
GROUP BY staff_id
HAVING payment_date =  2005-08-01;
