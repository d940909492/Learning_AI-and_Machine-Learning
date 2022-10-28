CREATE TABLE games_list (
    list_number INT AUTO_INCREMENT,
    game_name VARCHAR(40) NOT NULL UNIQUE,
    game_type VARCHAR(40) DEFAULT 'Unknown game type',

    PRIMARY KEY(list_number)
);

-- use to insert a column
INSERT INTO games_list VALUES(1, 'Halo' , 'first person shooting');
INSERT INTO games_list VALUES(2, 'For Honor' , 'third person action');
INSERT INTO games_list(game_name , game_type) VALUES('Red Dead Redemption 2' , 'third person shooting');
INSERT INTO games_list(game_name , game_type) VALUES('The Witcher 3: Wild Hunt' , 'Action role-playing');
INSERT INTO games_list(game_name , game_type) VALUES('Divinity: Original Sin II' , 'Turn-Base Role-Playing');
INSERT INTO games_list(game_name , game_type) VALUES('The Elder Scrolls V: Skyrim' , 'Action role-playing');

-- update price
UPDATE games_list SET price = 39.99 WHERE list_number = 6;
UPDATE games_list SET price = 17.99 WHERE list_number = 5;
UPDATE games_list SET price = 39.99 WHERE list_number = 4;
UPDATE games_list SET price = 59.99 WHERE list_number = 3;
UPDATE games_list SET price = 39.99 WHERE list_number = 2;
UPDATE games_list SET price = 14.99 WHERE list_number = 1;


-- Use to Describe the table
DESCRIBE games_list;
-- Use to display the table 
SELECT * FROM games_list;

-- Use to add a column to a table
ALTER TABLE games_list ADD game_rate DECIMAL(5,2);

ALTER TABLE games_list ADD Price DECIMAL(5,2);

-- Use to drop one column
ALTER TABLE games_list DROP COLUMN game_rate;

-- delete the table
DROP TABLE games_list;

-- "UPDATE" is use to Update one of row , "SET" is use to set one of column to another name, and use "WHERE" to set the target
UPDATE games_list
SET game_type = "Third person Role-playing"
WHERE game_type = "third person shooting";

UPDATE games_list
SET game_type = "First Person Shooting"
WHERE list_number = "1";

INSERT INTO games_list(game_name , game_type) VALUES('test case','test case');

-- DELETE FROM games_list;  - this would delete all the row in the table
DELETE FROM games_list
WHERE list_number = 7;
--WHERE game_name = 'test case';  - this also work


-- testing table
DROP TABLE test_table;

SELECT * FROM test_table;

CREATE TABLE test_table(
tname VARCHAR(100),
tnum INT,
tdate DATE
);

INSERT INTO test_table VALUES('t1' , 10 , '0000-00-00');
INSERT INTO test_table VALUES('t2' , 20 , '0001-00-00');
INSERT INTO test_table VALUES('t3' , 30 , '0002-00-00');
INSERT INTO test_table VALUES('t4' , 40 , '0003-00-00');
INSERT INTO test_table VALUES('t5' , 50 , '0004-00-00');