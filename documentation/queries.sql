# Querys.sql
# Simple Query 1
DROP VIEW IF EXISTS Simple1;
CREATE VIEW Simple1 AS
SELECT *
FROM city
WHERE num_gym BETWEEN 3 AND 15
ORDER BY num_gym ASC;

#simple Query 2
DROP VIEW IF EXISTS Simple2;
CREATE VIEW Simple2 AS
SELECT *
FROM family
WHERE sibling BETWEEN 1 AND 3
ORDER BY sibling ASC;

#simple Query 3
DROP VIEW IF EXISTS Simple3;
CREATE VIEW Simple3 AS
SELECT *
FROM demographics
WHERE marital_status = 'unmarried' OR income >= 5000
ORDER BY income ASC;

# aggregate Query 1
DROP VIEW IF EXISTS Agg1;
CREATE VIEW Agg1 AS
SELECT AVG(income)
FROM demographics
;
# aggregate Query 2
DROP VIEW IF EXISTS Agg2;
CREATE VIEW Agg2 AS
SELECT COUNT(education_id)
FROM education
WHERE progress = 'Done' AND graduation_date > '2015-1-1'
;
# aggregate Query 3
DROP VIEW IF EXISTS Agg3;
CREATE VIEW Agg3 AS
SELECT parent, sibling
FROM family
GROUP BY parent
HAVING parent = 2 AND sibling = 2
ORDER BY parent
;
# Complex Query 1
DROP VIEW IF EXISTS comp1;
CREATE VIEW comp1 AS
SELECT health_data_city , health_data_state
FROM city
INNER JOIN state
ON city.ID = state.ID
ORDER BY city.health_data_city
;
# Complex Query 2
DROP VIEW IF EXISTS comp2;
CREATE VIEW comp2 AS
SELECT ID, num_gym, number_grocery_store
FROM city C
WHERE num_gym >
		(SELECT AVG(num_gym)
        FROM city
        );
# Complex Query 3
DROP VIEW IF EXISTS comp3;
CREATE VIEW comp3 AS
SELECT ID, num_gym, number_grocery_store, availability_healthy_food
FROM city C
WHERE EXISTS 
		(SELECT *
        FROM city
        WHERE number_grocery_store > 10);


