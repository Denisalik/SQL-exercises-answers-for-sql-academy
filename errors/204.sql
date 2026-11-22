SELECT r.id,
       r.end_date,
       r.total
FROM Reservations r
WHERE r.end_date BETWEEN '2020-02-01' AND '2020-02-29'