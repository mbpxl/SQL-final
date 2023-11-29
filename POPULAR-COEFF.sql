CREATE FUNCTION calculate_popularity(user_id INT)
RETURNS DECIMAL(10,2)
BEGIN
	 DECLARE friend_count INT;
    DECLARE popularity DECIMAL(10,2);
    
    SELECT COUNT(*) INTO friend_count
    FROM friends
    WHERE user_id = friend_id;
    
    SET popularity = friend_count * 1.0 / (SELECT COUNT(*) FROM users);
    
    RETURN popularity;
RETURN 1;
END