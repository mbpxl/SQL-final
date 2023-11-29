CREATE PROCEDURE getRandomUsersFromSameCity(IN userId INT)
BEGIN
	DECLARE userCity VARCHAR(255);
    
    -- Получаем город пользователя
    SELECT city INTO userCity
    FROM users
    WHERE id = userId;
    
    -- Выбираем 5 случайных пользователей из того же города
    SELECT *
    FROM users
    WHERE city = userCity
    AND id <> userId
    ORDER BY RAND()
    LIMIT 5;
END
