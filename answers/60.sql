SELECT DISTINCT teacher
FROM Schedule s
WHERE NOT EXISTS (
		(
			SELECT id
			FROM Class
			WHERE name LIKE '%11%'
		)
		EXCEPT (
				SELECT class
				FROM Schedule s2
				WHERE s.teacher = s2.teacher
			)
	)