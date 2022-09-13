CREATE DATABASE fitness_db;
\c fitness_db

CREATE TABLE fitness(
    id SERIAL PRIMARY KEY,
    image_url TEXT,
    name TEXT,
    description TEXT
);

CREATE TABLE ingredients(
    id SERIAL PRIMARY KEY,
    name TEXT,
    qty REAL,
    measurement TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;


INSERT INTO ingredients(name,qty,measurement)
VALUES('salt',1,'tsp');


INSERT INTO fitness(image_url,name,description)
VALUES('https://img.taste.com.au/Ld2_-8rs/taste/2018/12/fast-800-diet-recipes-145628-2.jpg','San choy bau bowl','LOW calorie food with quick healthy dinner bowl by swapping chicken breast and adding lots of vegies such as carrot and baby cos');

INSERT INTO fitness(image_url,name,description)
VALUEs('https://img.taste.com.au/Tj3LwsI4/w720-h480-cfill-q80/taste/2016/11/honey-glazed-salmon-with-beet-and-freekeh-salad-100822-1.jpeg','Honey-glazed salmon with beet and freekeh salad','Tuck into this salmon dinner which will give you boost of Omega-3 and a flavour hit of fragrant herbs');
