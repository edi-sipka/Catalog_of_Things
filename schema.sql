
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

