DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  year INTEGER,
  actors TEXT
);

INSERT INTO movies (title, year, actors) VALUES ('Armageddon', 1998, 'Bruce Willis, Steve Buschemi, Ben Affleck');
INSERT INTO movies (title, year, actors) VALUES ('Day After Tomorrow', 1998, 'Jake Gyllenhall, Patrick Stewart, Dennis Quaid');
INSERT INTO movies (title, year, actors) VALUES ('2012', 2008, 'Woody Harrelson, Arnold Schwarzennaggar, John Cusack');
