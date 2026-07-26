-- Накопительная сумма покупок по каждому клиенту
-- Чтобы видеть, как росли расходы со временем
-- Тут оконная функция, PARTITION BY family_member
-- Работает на таблице Payments (колонки: family_member, date, payment_id, amount)
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
