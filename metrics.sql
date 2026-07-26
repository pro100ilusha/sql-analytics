-- Основные метрики: сколько всего потратил, средний чек, дата последней покупки.
-- Считаю через GROUP BY family_member.
-- Таблица Payments.
SELECT 
    family_member,
    COUNT(*) AS total_purchases,
    SUM(amount) AS total_spent,
    AVG(amount) AS avg_check,
    MAX(date) AS last_purchase_date
FROM Payments
GROUP BY family_member
ORDER BY total_spent DESC;
