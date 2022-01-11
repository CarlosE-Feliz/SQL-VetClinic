/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(30),
    date_of_brith date NOT NULL,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal NOT NULL
);
