CREATE FUNCTION hello (s CHAR(20))
  RETURNS CHAR(50) DETERMINISTIC
  RETURN CONCAT('Hello, ',s,'!');

DELIMITER //
CREATE FUNCTION weighted_average (n1 INT, n2 INT, n3 INT, n4 INT) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE avg INT;
    SET avg = (n1+n2+n3*2+n4*4)/8;
    RETURN avg;
END //
