SELECT * FROM games_list;

-- Nested Queries , you can use another select or subquery inside a select or query

SELECT game_name , game_type , Price FROM games_list
WHERE games_list.list_number IN (  --after return "list_number" , then display the table
    -- first return "list_number" 
    SELECT games_list.list_number 
    FROM games_list
    WHERE games_list.Price >= 19.99
);

--example 2
SELECT game_name , game_type , Price FROM games_list
WHERE games_list.game_type =  ( 
    SELECT games_list.game_type 
    FROM games_list
    WHERE games_list.Price >= 19.99
    -- LIMIT 1 would make subquery only return one row , we do that because "=" operator only compare only one row
    LIMIT 1
);


-- "on delete set NULL" when delete the parent row and child row set to NULL
-- "on delete set CASCADE" when delete the parent row, the whole child row delete
-- example on "small_sql_testing_project"