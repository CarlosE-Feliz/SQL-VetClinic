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
VALUES (1,'Sam Smith', 34)

INSERT INTO owners(id_owners, full_name, age)
VALUES (2,'Jennifer Orwell', 19)

INSERT INTO owners(id_owners, full_name, age)
VALUES (3,'Bob', 45)

INSERT INTO owners(id_owners, full_name, age)
VALUES (4,'Melody Pond', 77)

INSERT INTO owners(id_owners, full_name, age)
VALUES (5, 'Dean Winchester', 14)

INSERT INTO owners(id_owners, full_name, age)
VALUES (6,'Jodie Whittaker', 38)



INSERT INTO species (id_species, name)
VALUES(1, 'Pokemon')
INSERT INTO species (id_species, name)
VALUES(2, 'Digimon')

UPDATE animals
SET id_species = (SELECT id_species from species WHERE name = 'Pokemon')
WHERE id_species IS NULL

UPDATE animals 
SET id_species =  (SELECT id_species from species WHERE name = 'Digimon')
WHERE name like '%mon'

UPDATE animals 
SET id_owners = (SELECT id_owners from owners WHERE full_name = 'Sam Smith')
WHERE name like 'Agumon'

UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Jennifer Orwell')
WHERE name in ('Gabumon', 'Pikachu')

UPDATE animals 
SET id_owners = (SELECT id_owners from owners WHERE full_name = 'Bob')
WHERE name in ('Devimon', 'Plantmon')


UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Melody Pond')
WHERE name in ( 'Charmander', 'Squirtle', 'Blossom')

UPDATE animals 
SET id_owners =  (SELECT id_owners from owners WHERE full_name = 'Dean Winchester')
WHERE name in (  'Angemon', 'Boarmon')

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(01, 'William Tatcher', 45, '04/23/200')

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(02, 'Maisy Smith', 26, '01/17/2019')

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(03, 'Stephanie Mendez', 64, '04/01/1981')

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(04, 'Jack Harkness', 38, '06/08/2008')

 INSERT INTO specializations (id_species, id_vet)
 VALUES ((SELECT id_vets FROM vets WHERE name = 'William Tatcher'), (SELECT id_species FROM species WHERE name = 'Pokemon'))

 INSERT INTO specializations (id_species, id_vet)
 VALUES ((SELECT id_vets FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id_species FROM species WHERE name = 'Pokemon'))

 INSERT INTO specializations ((id_species, id_vet)
 VALUES ((SELECT id_vets FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id_species FROM species WHERE name = 'Digimon'))

 INSERT INTO specializations ((id_species, id_vet)
 VALUES ((SELECT id_vets FROM vets WHERE name = 'Jack Harkness'), (SELECT id_species FROM species WHERE name = 'Digimon'))

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Agumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2020-05-24')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Agumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-06-22')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Gabumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2021-02-02')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-01-05')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-03-08')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-05-14')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Devimon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2021-05-04')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Charmander'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2021-02-24')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-12-21')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2020-08-10')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-04-07')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Squirtle'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-09-29')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Angemon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2020-10-03')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Angemon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2020-11-04')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-01-24')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-05-15')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-02-27')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-08-03')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Blossom'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-05-24')

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Blossom'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2021-01-11')
