CREATE TABLE trigger_test(
Message VARCHAR(100)
);

DROP TABLE trigger_test;
SELECT * FROM trigger_test;

DELIMITER $$
CREATE
    TRIGGER trigger_call BEFORE INSERT
    ON games_list
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('New element add');
    END$$
DELIMITER ;

-- NEW keyword would refere the new or recent element that been add
DELIMITER $$
CREATE
    TRIGGER trigger_call BEFORE INSERT
    ON games_list
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.game_name);
    END$$
DELIMITER ;

INSERT INTO games_list(game_name , game_type , Price) VALUES('Hell Let Loose' , 'First Person Shooting', 39.99);