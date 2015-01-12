CREATE TABLE restaurants (id serial primary key, name varchar(255), description text, address varchar(255));
CREATE TABLE categories (id serial primary key, name varchar(255));
CREATE TABLE restaurant_category_tags (id serial primary key, category_id integer, restaurant_id integer);
