-- creating schema 
CREATE SCHEMA `dataanalysis` ;

-- creating table

CREATE TABLE `dataanalysis`.`recipes` (
  `RecipeNo` INT NOT NULL,
  `RecipeName` Text NOT NULL,
  `Ingredients` LONGTEXT NOT NULL,
  `PreparationTime` INT NOT NULL,
  `CookingTime` INT NOT NULL,
  `TotalTime` INT NOT NULL,
  `Servings` INT NOT NULL,
  `Cuisine` VARCHAR(100) NOT NULL,
  `Course` VARCHAR(100) NOT NULL,
  `Diet` VARCHAR(100) NOT NULL,
  `Instructions` LONGTEXT NOT NULL,
  `Link` VARCHAR(250)  NOT NULL,
  `TotalTimeHrs` time(2) NOT NULL, 
  `IngredientsCount` INT NOT NULL,
  PRIMARY KEY (`RecipeNo`));


/* Row import failed with error: ("Incorrect time value: ' add the kachoris and fry them for 5 to 6 minutes until they turn golden brown and crispy on both the sides.Once done' for column 'TotalTimeHrs' at row 1", 1292)*/
-- I don't understand why it says incorrect time value for totaltimehrs when 169 datas has been imported. What should i always look while importing csv file.
/* If i remove the TotalTimeHrs, there is no log in error and still data imported is 169 ,Why? */


/*Testing with just 2 columns to see if i can fetch full records */
CREATE TABLE `dataanalysis`.`test` (
  `RecipeNo` INT NOT NULL,
  `recipeName` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`RecipeNo`));
  
  -- Added one more column
  -- Still only 169 rows been imported without error in logs :(
  