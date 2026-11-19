CREATE TABLE IF NOT EXISTS zoo_animal (
    animal_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    species TEXT NOT NULL,
    age_years INTEGER NOT NULL,
    weight_kg REAL NOT NULL
);
INSERT INTO zoo_animal (animal_id, name, species, age_years, weight_kg) VALUES
(001, 'Lion', 'Cat', 50, 50.9),    
(002, 'Tiger', 'Cat', 30, 50.9),    
(003, 'Elephant', 'landAnimalLargest', 150, 50.9),    
(004, 'Giraffe', 'LongestAnimal', 160, 50.9),
(005, 'Penguin', 'Bird', 25, 120.9),
(006, 'Panda', 'Pandaspecies', 120, 59.9 ),
(007, 'Cheetah', 'FastestAnimal', 1240, 1240.9),
(008, 'Rhino', 'SeaAnimal', 160, 67.9);
SELECT * FROM zoo_animal;
SELECT species FROM zoo_animal;
SELECT DISTINCT species FROM zoo_animal;
SELECT COUNT(DISTINCT species) AS unique_species FROM zoo_animal;
SELECT COUNT(animal_id) AS total_animals FROM zoo_animal;
SELECT COUNT(animal_id) AS older_than_50 FROM zoo_animal WHERE age_years > 50;
SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animal;
SELECT AVG(age_years) AS avg_age_years FROM zoo_animal;

SELECT
    COUNT(animal_id)        AS total_animals,
    COUNT(DISTINCT species) AS unique_species,
    SUM(weight_kg)          AS total_weight_kg,
    AVG(age_years)          AS avg_age_years
FROM zoo_animal;     