CREATE FUNCTION convert_seconds_to_days_hours_minutes_seconds(seconds INT)
RETURNS INTEGER
BEGIN

CREATE FUNCTION convert_seconds_to_days_hours_minutes_seconds(seconds INT)
RETURNS VARCHAR(50)
  DECLARE days INT;
  DECLARE hours INT;
  DECLARE minutes INT;
  DECLARE secs INT;
  DECLARE result VARCHAR(50);
  
  SET days = FLOOR(seconds / 86400);
  SET seconds = seconds - (days * 86400);
  
  SET hours = FLOOR(seconds / 3600);
  SET seconds = seconds - (hours * 3600);
  
  SET minutes = FLOOR(seconds / 60);
  SET secs = seconds - (minutes * 60);
  
  SET result = CONCAT(days, ' days, ', hours, ' hours, ', minutes, ' minutes, ', secs, ' seconds');
  
  RETURN result;
END
