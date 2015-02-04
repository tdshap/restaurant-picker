CREATE TABLE restaurants 
(	id serial primary key, 
	name varchar(255), 
	description text, 
	address varchar(255),
	main_image varchar(255),
	link varchar(255)

	);
-- belongs to restaurants 
CREATE TABLE images 
(id serial primary key, 
	restaurant_id integer, 
	url varchar(255));

-- category types
CREATE TABLE meal_categories
(id serial primary key, 
	name varchar(255));

CREATE TABLE cuisine_categories
(id serial primary key, 
	name varchar(255));

CREATE TABLE situation_category
(id serial primary key, 
	name varchar(255));


-- join tables
CREATE TABLE meal_restaurant_category_tags 
(id serial primary key, 
	meal_category_id integer, 
	restaurant_id integer);

CREATE TABLE cuisine_restaurant_category_tags 
(id serial primary key, 
	cuisine_category_id integer, 
	restaurant_id integer);

CREATE TABLE situation_restaurant_category_tags 
(id serial primary key, 
	situation_category_id integer, 
	restaurant_id integer);





