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

