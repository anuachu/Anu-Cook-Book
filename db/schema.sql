CREATE DATABASE fitness_db;
\c fitness_db

CREATE TABLE recipe(
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    ingredient_name TEXT,
    qty REAL,
    measurement TEXT,
    step1 TEXT,
    step2 TEXT,
    image_url TEXT
);



CREATE TABLE ingredients(
    id SERIAL PRIMARY KEY
   
);

-- CREATE TABLE methods(
--   id SERIAL PRIMARY KEY,
--   step1 TEXT,
--   step2 TEXT
-- );

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

-- CREATE TABLE media(
--   id SERIAL PRIMARY KEY,
--   image_url TEXT,
--   video TEXT
-- );

ALTER TABLE users ADD COLUMN password_digest TEXT;


