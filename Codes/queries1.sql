CREATE TABLE games_list (
    list_number INT,
    game_name VARCHAR(20),
    game_type VARCHAR(20)

    PRIMARY KEY(list_number)
);

DESCRIBE games_list;

DROP games_list;

ALTER TABLE games_list ADD game_rate DECIMAL(5,2);

ALTER TABLE games_list DROP COLUMN game_rate;