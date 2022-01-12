/*Queries that provide answers to the questions from all projects.*/

SELECT *
from animals
WHERE name like = '%mon'

SELECT name 
from animals 
WHERE date_of_brith BETWEEN '01/01/2016' AND '01/01/2019'

SELECT name
from animals
WHERE neutered = true
AND escape_attempts < 3

SELECT date_of_brith
from name = 'Agumon'
or name = 'Pikachu'

SELECT name, escape_attempts
from animals
WHERE weight_kg > 10.5

SELECT * from animals
WHERE neutered = true

SELECT * 
from animals
WHERE name != 'Gabumon'

SELECT * 
from animals
WHERE weight_kg >= 10.4 
AND weight_kg <= 17.3

BEGIN TRAN

UPDATE animals 
SET species =  'digimon'
WHERE name like '%mon'

UPDATE animals
SET species =  'pokemon'
WHERE species IS NULL

COMMIT TRAN

BEGIN TRAN 

DELETE FROM animals
WHERE date_of_birth > '01/01/2022'
SAVEPOINT delete_animals


UPDATE animals 
SET weight_kg = weight_kg * -1
ROLLBACK TO SAVEPOINT delete_animals

UPDATE animals 
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0

COMMIT TRAN

SELECT count(id) FROM animals

SELECT COUNT(escape_attempts) FROM animals
WHERE escape_attempts = 0

SELECT AVG(weight_kg) FROM animals

SELECT AVG(escape_attempts) FROM animals
WHERE neutered = true

SELECT AVG(escape_attempts) FROM animals
WHERE neutered = false

SELECT MAX(weight_kg) FROM animals

SELECT MIN(weight_kg) FROM animal

SELECT AVG(escape_attempts) FROM animals
WHERE date_of_brith BETWEEN '01/01/1999' AND '01/01/2000'

SELECT A.id_owners, O.full_name, count(*) as Total
FROM animals A
INNER JOIN owners O on (A.id_owners = O.id_owners) 
GROUP BY A.id_owners, O.full_name
ORDER BY 3 DESC

SELECT * 
FROM animals A
LEFT JOIN species S
ON A.id_species = S.id_species
WHERE S.name = 'Pokemon'

SELECT * 
FROM animals A
LEFT JOIN species S
ON A.id_species = S.id_species
WHERE S.name = 'Digimon'

SELECT A.name, A.id_owners, O.full_name
FROM animals A
LEFT join owners O on (A.id_owners = O.id_owners)

SELECT A.* 
FROM animals A
LEFT JOIN owners O
ON A.id_owners = O.id_owners
LEFT JOIN species S
ON A.id_species = S.id_species
WHERE O.full_name = 'Jennifer Orwell'
AND S.name = 'Digimon'

SELECT A.* 
FROM animals A
LEFT JOIN owners O
ON A.id_owners = O.id_owners
WHERE O.full_name = 'Dean Winchester'
AND A.escape_attempts = 0

SELECT id_owners, count(*) FROM animals 
    GROUP BY id_owners
    HAVING COUNT(*)>2