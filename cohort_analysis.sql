-- Когортный анализ: накопительная сумма покупок по клиентам
SELECT 
    family_member,
    date,
    payment_id,
    amount AS payment_amount,
    SUM(amount) OVER (
        PARTITION BY family_member 
        ORDER BY date, payment_id
    ) AS cumulative_total
FROM Payments
ORDER BY family_member, date, payment_id;
