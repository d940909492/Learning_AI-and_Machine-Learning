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
UNION SELECT tname FROM test_table;