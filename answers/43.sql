SELECT DISTINCT last_name
FROM Teacher
	JOIN Schedule ON Schedule.teacher = Teacher.id
	JOIN Subject ON Subject.id = Schedule.subject
WHERE Subject.name = 'Physical Culture'