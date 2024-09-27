CREATE DATABASE event_database;

SHOW DATABASES;

USE event_database;

CREATE TABLE registrations (
    roll varchar(20) PRIMARY KEY,
    fullname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phno VARCHAR(15) NOT NULL,
    stream varchar(10) not null,
    event VARCHAR(20) NOT NULL
);

DELIMITER //
CREATE PROCEDURE add_registration(
    IN p_roll VARCHAR(20),
    IN p_fullname VARCHAR(50),
    IN p_email VARCHAR(50),
    IN p_phno VARCHAR(15),
    IN p_stream VARCHAR(10),
    IN p_event VARCHAR(20)
)
BEGIN
    INSERT INTO registrations (roll, fullname, email, phno, stream, event)
    VALUES (p_roll, p_fullname, p_email, p_phno, p_stream, p_event);
END //
DELIMITER ;

show tables;

DESCRIBE registrations;

select * from registrations;

delete from registrations where roll = 1;

drop database event_database;
