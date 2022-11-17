
CREATE TABLE book (
	id SERIAL PRIMARY KEY,
	publisher VARCHAR(50) ,
  cover_state VARCHAR(50)
);

CREATE TABLE label (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  color VARCHAR(50)
);

CREATE TABLE musicalbum (
  id SERIAL PRIMARY KEY,
  on_spotify BOOLEAN,
  publish_date Date
);

CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
);

CREATE TABLE item (
 id SERIAL PRIMARY KEY,
 genre_id INTEGER,
 author_id INTEGER,
 label_id INTEGER,
 publish_date DATE,
 archived BOOLEAN,

 FOREIGN KEY(genre_id) REFERENCES genre(id), 
 FOREIGN KEY(author_id) REFERENCES author(id), 
 FOREIGN KEY(label_id) REFERENCES label(id), 
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  publish_date DATE,

);

CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);