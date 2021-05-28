---- artist table problem 1(extra credit)
SELECT * FROM artist
ORDER BY name DESC limit 10

----- artist table problem 2(extra credit)

SELECT * FROM artist
WHERE name LIKE 'Black%'

-------artist table problem 3(extra credit)

SELECT * FROM artist
WHERE name LIKE '%Black%'

-------employee table problem 1(extra credit)
SELECT MIN(birth_date) FROM employee

-------employee table problem 2(extra credit)

SELECT MAX(birth_date) FROM employee

------invoice table problem 1(extra credit)

SELECT COUNT(*) FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ')

-------invoice table problem 2(extra credit)

SELECT AVG(total) FROM invoice

-----more join queries problem 1(extra credit)

SELECT *
FROM playlist_track
WHERE playlist_track IN (
  SELECT playlist_track FROM playlist
  WHERE name = 'Music');


----more join queries problem 2(extra credit)

select t.name, pl.playlist_id
from track t
join playlist_track pl
on t.track_id = pl.track_id
and playlist_id = 5;

----more join queries problem 3(extra credit)

SELECT t.name AS track, p.name AS playlist
FROM track t
JOIN playlist_track plt
ON t.track_id = plt.track_id
JOIN playlist p
ON p.playlist_id = plt.playlist_id;

-----more join queries problem 4(extra credit)

select t.name as track, a.title as album
from track t 
join album a
on t.album_id = a.album_id
join genre g
on t.genre_id = g.genre_id
and g.name = 'Alternative & Punk';
