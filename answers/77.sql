CREATE VIEW PEOPLE AS
SELECT first_name,
	last_name
FROM Student
Union
SELECT first_name,
	last_name
FROM Teacher