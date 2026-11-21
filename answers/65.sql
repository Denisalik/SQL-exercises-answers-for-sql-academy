SELECT room_id,
	FLOOR(AVG(Reviews.rating)) as rating
FROM Reservations
	JOIN Reviews ON Reviews.reservation_id = Reservations.id
GROUP BY room_id