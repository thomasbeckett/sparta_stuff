DROP TABLE IF EXISTS post;

CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  body TEXT
);

INSERT INTO post (title,body) VALUES ('Post 1', 'This is the first post');
INSERT INTO post (title,body) VALUES ('Post 2', 'This is the second post');
INSERT INTO post (title,body) VALUES ('Post 3', 'This is the third post');
