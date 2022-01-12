/* Populate database with sample data. */

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
    'Agumon',
    '02/03/2020',
    10.23,
    true,
    0    
    )
INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
    'Gabumon',
    '11/15/2018',
    8,
    true,
    2
)
INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
    'Pikachu',
    '01/07/2021',
    11,
    true,
    5
)


INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
   'Charmander',
   '08/02/2020',
   -11,
   true,
   2
)

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
  'Plantmon',
  '15/11/2022',
  -5.7,
  false,
  3 
)

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
  'Squirtle',
  '02/04/1933',
  -12.13,
  false,
  3 
)

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
  'Angemon',
  '12/06/2005',
  -45,
  true,
  1 
)

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
  'Boarmon',
  '07/06/2005',
  20.4,
  true,
  7 
)

INSERT INTO animals (name, date_of_brith, weight_kg, neutered, escape_attempts) VALUES (
  'Blossom',
  '13/10/1988',
  17,
  true,
  3 
)

INSERT INTO owners (id_owners, full_name, age)
VALUES (1,'Sam Smith', 34);

INSERT INTO owners(id_owners, full_name, age)
VALUES (2,'Jennifer Orwell', 19);

INSERT INTO owners(id_owners, full_name, age)
VALUES (3,'Bob', 45);

INSERT INTO owners(id_owners, full_name, age)
VALUES (4,'Melody Pond', 77);

INSERT INTO owners(id_owners, full_name, age)
VALUES (5, 'Dean Winchester', 14);

INSERT INTO owners(id_owners, full_name, age)
VALUES (6,'Jodie Whittaker', 38);



INSERT INTO species (id_species, name)
VALUES(1, 'Pokemon');
INSERT INTO species (id_species, name)
VALUES(2, 'Digimon');

UPDATE animals
SET id_species = (SELECT id_species from species WHERE name = 'Pokemon')
WHERE id_species IS NULL

UPDATE animals 
SET id_species =  (SELECT id_species from species WHERE name = 'Digimon')
WHERE name like '%mon';

UPDATE animals 
SET id_owners = (SELECT id_owners from owners WHERE full_name = 'Sam Smith')
WHERE name like 'Agumon';

UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Jennifer Orwell')
WHERE name in ('Gabumon', 'Pikachu');

UPDATE animals 
SET id_owners = (SELECT id_owners from owners WHERE full_name = 'Bob')
WHERE name in ('Devimon', 'Plantmon');


UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Melody Pond')
WHERE name in ( 'Charmander', 'Squirtle', 'Blossom');

UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Dean Winchester')
WHERE name in (  'Angemon', 'Boarmon');
