DROP TABLE IF EXISTS animals;

CREATE TABLE animals ( 
 id SERIAL PRIMARY KEY,
 name VARCHAR(25),
 fact TEXT
);

INSERT INTO animals (name,fact) VALUES ('Duck','They quack');
INSERT INTO animals (name,fact) VALUES ('Giraffe','They have long necks');
INSERT INTO animals (name,fact) VALUES ('Hippo','They arent rhinos');
INSERT INTO animals (name,fact) VALUES ('Woodlice','Creepy crawly');
