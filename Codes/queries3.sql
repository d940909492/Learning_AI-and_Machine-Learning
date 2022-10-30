SELECT * FROM games_List;

-- COUNT() keyword would return or find how many item in the cloumn
SELECT COUNT(game_name) FROM games_list;

--The AVG() function returns the average value of a numeric column. 
SELECT AVG(Price) FROM games_list;

--The SUM() function returns the total sum of a numeric column. 
SELECT SUM(Price) FROM games_list;

-- add comma after COUNT(),AVG() or SUM(), would display whats after the comma
SELECT AVG(Price), Price
FROM games_list;

-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
SELECT COUNT(game_name), game_name FROM games_list
GROUP BY game_name;


---------------------------------------------------------------------------------------Another Test

--A wildcard character is used to substitute one or more characters in a string.
--Wildcard characters are used with the LIKE operator. 
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- %, mean any number characters, _, mean one character
SELECT * FROM games_list WHERE game_name LIKE '%or';

SELECT * FROM games_list WHERE game_name LIKE 'h_lo';

/*
LIKE Operator	Description
WHERE CustomerName LIKE 'a%'	Finds any values that starts with "a"
WHERE CustomerName LIKE '%a'	Finds any values that ends with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a__%'	Finds any values that starts with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that starts with "a" and ends with "o"
*/
-- Example
SELECT * FROM games_list WHERE game_name LIKE '%o%';

-- UNION keyword can combine the result-set of two or more SELECT statements
SELECT game_name FROM games_list 
UNION 
SELECT tname FROM test_table;

-----------------------testing table ------------
SELECT * FROM game_list_extr;
DROP TABLE game_list_extr;

CREATE TABLE game_list_extr(
list_number INT,
game_name VARCHAR(40) NOT NULL UNIQUE,
game_type VARCHAR(40) DEFAULT 'Unknown game type',
game_price DECIMAL(5,2),

PRIMARY KEY(list_number)
);

INSERT INTO game_list_extr VALUES(7 , 'Fallout4' , 'Action role-playing' , 19.99);
-------------End testing table------------------------

--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
/*
Different types of the JOINs in SQL:
1. (INNER) JOIN: Returns records that have matching values in both tables
2. LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
3. RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
4. FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
*/
SELECT  games_list.game_name, games_list.game_type FROM game_list_extr LEFT JOIN games_list ON game_list_extr.game_type = games_list.game_type;