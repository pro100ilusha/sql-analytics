-- Основные метрики бизнеса
SELECT 
    family_member,
    COUNT(*) AS total_purchases,
    SUM(amount) AS total_spent,
    AVG(amount) AS avg_check,
    MAX(date) AS last_purchase_date
FROM Payments
GROUP BY family_member
ORDER BY total_spent DESC;
