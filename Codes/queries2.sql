-- "*" mean grap all information from the table
SELECT * FROM games_list;

-- only display one column
SELECT list_number FROM games_list;
SELECT game_name FROM games_list;
SELECT game_type FROM games_list;

-- table_name.column_name is syntax of get information from specific table
SELECT games_list.game_name, games_list.game_type
FROM games_list
-- "ORDER BY" order or sort the cloumn
ORDER BY game_name;

-- this also work, even didnt display the list_number or index
SELECT games_list.game_name, games_list.game_type
FROM games_list
ORDER BY list_number;

SELECT games_list.game_name, games_list.game_type
FROM games_list
-- "DESC" use to display in oppsite order, "ASC" do the original thing
ORDER BY game_name DESC;

SELECT *
FROM games_list
-- this would limit the display information
LIMIT 3;

-- <> , = , > , >= , <= , AND , OR

SELECT *
FROM games_list
-- <> mean not equal, to display the table except some thing with <>
WHERE game_type <> 'First Person Shooting';


SELECT *
FROM games_list
-- display something if INT type greater or > than a number;
WHERE list_number > 3;


SELECT *
FROM games_list
WHERE game_name IN ('Halo');

SELECT game_name
FROM games_list
WHERE game_type IN ('First Person Shooting');

-- for testing
SELECT * FROM games_list;

-- "AS" keyword would change the column differently
SELECT game_name AS name , game_type AS type FROM games_list;

-- "DISTINCT" keyword would find display all unique or different name, which wont display repeate name
SELECT DISTINCT game_type FROM games_list;