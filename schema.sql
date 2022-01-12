/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id int NOT NULL GENERATED ALWAYS AS IDENTITY,
    id_owners int,
  	id_species int,
    name VARCHAR(30),
    date_of_brith date NOT NULL,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal NOT NULL,
    PRIMARY KEY (id_animals),
	FOREIGN KEY (id_owners) REFERENCES owners (id_owners),
	FOREIGN KEY (id_species) REFERENCES species (id_species)
)

ALTER TABLE animals ADD species VARCHAR(30)

CREATE TABLE owners (
    id_owners int NOT NULL,
	full_name VARCHAR (30) NOT NULL,
	age INT NOT NULL,
    PRIMARY KEY (id_owners)
)

CREATE TABLE species (
    id_species int NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY (id_species)
)
