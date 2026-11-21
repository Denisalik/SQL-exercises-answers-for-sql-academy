SELECT user_id, COUNT(transaction_id) AS transactions_count FROM transactions
WHERE EXTRACT(MONTH FROM transaction_date)=1 AND
EXTRACT(YEAR FROM transaction_date)=2024
GROUP BY user_id
HAVING COUNT(transaction_id)>5