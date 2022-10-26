CREATE TABLE games_list (
    list_number INT AUTO_INCREMENT,
    game_name VARCHAR(40) NOT NULL UNIQUE,
    game_type VARCHAR(40) DEFAULT 'Unknown game type',

    PRIMARY KEY(list_number)
);

-- use to insert a column
INSERT INTO games_list VALUES(1 , 'Halo' , 'first person shooting');
INSERT INTO games_list VALUES(2 , 'For Honor' , 'third person action');
INSERT INTO games_list(list_number, game_name , game_type) VALUES(3 , 'Red Dead Redemption 2' , 'third person shooting');
INSERT INT`O games_list VALUES(4 , 'The Witcher 3: Wild Hunt' , 'Action role-playing');
INSERT INTO games_list VALUES(5 , 'Divinity: Original Sin II' , 'Turn-Base Role-Playing');
INSERT INTO games_list VALUES(6 , 'The Elder Scrolls V: Skyrim' , 'Action role-playing');

-- Use to Describe the table
DESCRIBE games_list;
-- Use to display the table 
SELECT * FROM games_list;

-- Use to add a column to a table
ALTER TABLE games_list ADD game_rate DECIMAL(5,2);

-- Use to drop one column
ALTER TABLE games_list DROP COLUMN game_rate;

DROP TABLE games_list;