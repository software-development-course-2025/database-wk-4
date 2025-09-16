-- Question 1
-- Show payment date and total amount paid on that date,
-- sorted by payment date descending, showing only the top 5 latest payment dates.
SELECT 
    paymentDate, 
    SUM(amount) AS total_payment_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Find the average credit limit of each customer,
-- grouped by customer name and country.
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3
-- Find the total price of products ordered,
-- calculated as quantity ordered multiplied by price each,
-- grouped by product code and quantity ordered.
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
-- Find the highest payment amount for each check number,
-- grouped by check number.
SELECT 
    checkNumber, 
    MAX(amount) AS highest_payment_amount
FROM payments
GROUP BY checkNumber;
