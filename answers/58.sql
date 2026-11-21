INSERT INTO Reviews (reservation_id, id, rating)
SELECT Reservations.id,
	(
		SELECT MAX(id) + 1 AS max_id
		FROM Reviews
	),
	5
FROM Rooms
	JOIN Reservations ON Rooms.id = Reservations.room_id
	JOIN Users ON Users.id = Reservations.user_id
WHERE address = '11218, Friel Place, New York'
	AND Users.name = 'George Clooney'
	AND Reservations.user_id = Users.id