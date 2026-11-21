SELECT name
FROM Projects
WHERE id NOT IN (
		SELECT project_id
		FROM ProjectHistory
	)