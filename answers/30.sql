SELECT trip,
	COUNT(Pass_in_trip.passenger) AS count
FROM Pass_in_trip
GROUP BY trip
ORDER BY count DESC