CREATE PROCEDURE `HealthPerCapita` ()
BEGIN

SELECT num_gym / size_square_miles AS gymsPerCapita, number_grocery_store / size_square_miles AS groceryStoresPerCapita;

END
