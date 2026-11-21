SELECT owner_id,
	COALESCE(SUM(Reservations.total), 0) AS total_earn
FROM Rooms
	LEFT JOIN Reservations ON room_id = Rooms.id
GROUP BY owner_id