--artist table problem 1
INSERT INTO artist
(name)
values('avicii');

INSERT INTO artist
(name)
VALUES('bowling for soup');


INSERT INTO artist
(name)
VALUES('yorushika');

----problem 2

SELECT * FROM artist
ORDER BY name ASC 
LIMIT 5;

--employee table problem 1

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

----problem 2

SELECT first_name, last_name FROM employee
WHERE reports_to = 2;

----problem 3

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

---invoice table problem 1

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-----problem 2

SELECT MAX(total) FROM invoice

-----problem 3

SELECT MIN(total) FROM invoice

-------problem 4

SELECT * FROM invoice
WHERE total > 5

------problem 5

SELECT COUNT(*) FROM invoice
WHERE total < 5

------problem 6

SELECT SUM(total) FROM invoice

-------join queries problem 1

SELECT * FROM invoice_line
WHERE unit_price > 0.99

-------problem 2

SELECT c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c 
on i.customer_id = c.customer_id

-------problem 3

SELECT c.first_name AS customer_first, 
c.last_name AS customer_last,
e.first_name AS support_first,
e.last_name AS support_last
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

--------problem 4

select a.title, ar.name
from album a 
join artist ar
on a.artist_id = ar.artist_id
