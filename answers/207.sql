SELECT d.name,
	SUM(o.amount) AS revenue,
	ROUND(
		SUM(o.amount) * 100 / (
			SELECT SUM(amount)
			FROM orders
		),
		1
	) AS revenue_share
FROM departments d
	JOIN employees e ON e.department_id = d.id
	JOIN orders o ON o.employee_id = e.id
WHERE d.name IN ('Sales', 'Product')
GROUP BY d.id,
	d.name