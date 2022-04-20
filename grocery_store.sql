/*creating the database called 'grocery_store'*/

CREATE DATABASE IF NOT EXISTS grocery_store;

/*creating necessary tables*/
CREATE TABLE the_produce_department (
  produce_id int NOT NULL AUTO_INCREMENT,
  produce_type char(40) NOT NULL,
  produce_name char(40) NOT NULL,
  PRIMARY KEY (produce_id)
);

CREATE TABLE the_meat_department (
  meat_id int NOT NULL AUTO_INCREMENT,
  meat_type char(40) NOT NULL,
  meat_name char(40) NOT NULL,
  PRIMARY KEY (meat_id)
);

CREATE TABLE the_wine_beer_department (
  winebeer_id int NOT NULL AUTO_INCREMENT,
  winebeer_type char(40) NOT NULL,
  winebeer_name char(40) NOT NULL,
  PRIMARY KEY (winebeer_id)
);

CREATE TABLE the_seafood_department (
  seafood_id int NOT NULL AUTO_INCREMENT,
  seafood_type char(40) NOT NULL,
  seafood_name char(40) NOT NULL,
  PRIMARY KEY (seafood_id)
);

CREATE TABLE the_health_beauty_department (
  healthbeauty_id int NOT NULL AUTO_INCREMENT,
  healthbeauty_type char(40) NOT NULL,
  healthbeauty_name char(40) NOT NULL,
  PRIMARY KEY healthbeauty_id
);

CREATE TABLE the_prepaired_department (
  prepaired_id int NOT NULL AUTO_INCREMENT,
  prepaired_type char(40) NOT NULL,
  prepaired_name char(40) NOT NULL,
  PRIMARY KEY prepaired_id
);

/*adding the column 'path' afterwards*/
ALTER TABLE the_produce_department
ADD produce_path char(200) NOT NULL;

ALTER TABLE the_meat_department
ADD meat_path char(200) NOT NULL;

ALTER TABLE the_wine_beer_department
ADD wine_beer_path char(200) NOT NULL;

ALTER TABLE the_seafood_department
ADD seafood_path char(200) NOT NULL;

ALTER TABLE the_health_beauty_department
ADD health_beauty_path char(200) NOT NULL;

ALTER TABLE the_prepaired_department
ADD prepaired_path char(200) NOT NULL;


ALTER TABLE the_produce_department
ADD  produce_size char(20) NOT NULL,
ADD  produce_price char(20) NOT NULL;

ALTER TABLE the_meat_department
ADD  meat_size char(20) NOT NULL,
ADD  meat_price char(20) NOT NULL;

ALTER TABLE the_wine_beer_department
ADD  wine_beer_size char(20) NOT NULL,
ADD  wine_beer_price char(20) NOT NULL;

ALTER TABLE the_seafood_department
ADD  seafood_size char(20) NOT NULL,
ADD  seafood_price char(20) NOT NULL;

ALTER TABLE the_health_beauty_department
ADD  health_beauty_size char(20),
ADD  health_beauty_price char(20) NOT NULL;

ALTER TABLE the_prepaired_department
ADD  prepaired_size char(20),
ADD  prepaired_price char(20) NOT NULL;

/*inserting data into tables*/
INSERT INTO the_produce_department(produce_type, produce_name, produce_path, produce_size, produce_price)
VALUES ('vegetables','Carrots','images/the_produce_department/vegetables/carrots.jpg','1 kg','$12.00'),
 ('vegetables','Cucumbers','images/the_produce_department/vegetables/cucumbers.jpg','1 kg','$20.00'),
 ('vegetables','Papayas','images/the_produce_department/vegetables/papayas.jpg','1 kg','$15.00'),
 ('vegetables','Beatroots','images/the_produce_department/vegetables/beatroots.jpg','1 kg','$25.00'),
 ('vegetables','Tomatos','images/the_produce_department/vegetables/tomatos.jpg','1 kg','$10.00'),
 ('fruits','Apples','images/the_produce_department/fruits/apples.jpg','1 kg','$5.00'),
 ('fruits','Bananas','images/the_produce_department/fruits/bananas.jpg','1 kg','$7.50'),
 ('fruits','Oranges','images/the_produce_department/fruits/oranges.jpg','1 kg','$4.25'),
 ('fruits','Grapes','images/the_produce_department/fruits/grapes.jpg','1 kg','$4.45'),
 ('fruits','Mangos','images/the_produce_department/fruits/mangos.jpg','1 kg','$4.45');

INSERT INTO the_meat_department(meat_type, meat_name, meat_path, meat_size, meat_price)
VALUES ('red meat','Beef','images/the_meat_department/red_meat/beef.jpg','1 kg','$35.00'),
 ('red meat','Pork','images/the_meat_department/red_meat/pork.jpg','1 kg','$55.00'),
 ('red meat','Lamb','images/the_meat_department/red_meat/lamb.jpg''1 kg','$130.00'),
 ('red meat','Goat','images/the_meat_department/red_meat/goat.jpg''1 kg','$40.00'),
 ('white meat','Chicken','images/the_meat_department/white_meat/chicken.jpg','1 kg','$15.00'),
 ('white meat','Turkey','images/the_meat_department/white_meat/turkey.jpg','1 kg','$25.00');

INSERT INTO the_wine_beer_department(winebeer_type, winebeer_name, wine_beer_path, wine_beer_size, wine_beer_price)
VALUES ('wine','Red Wine','images/the_winebeer_department/wine/red_wine.jpg','1 litre','$35.00'),
 ('wine','White Wine','images/the_winebeer_department/wine/white_wine.jpg','1 litre','$65.00'),
 ('wine','Rose Wine','images/the_winebeer_department/wine/rose_wine.jpg','1 litre','$70.00'),
 ('wine','Sparkling Wine','images/the_winebeer_department/wine/sparkling_wine.jpg','1 litre','$44.00'),
 ('beer','Budweiser','images/the_winebeer_department/beer/budsweiser.jpg','6 packs','$9.00'),
 ('beer','Guinness','images/the_winebeer_department/beer/guinness.jpg','750 ml','$14.99'),
 ('beer','Stella Artois','images/the_winebeer_department/beer/stella_artois.jpg','12 packs','$13.50'),
 ('beer','Heineken','images/the_winebeer_department/beer/heineken.jpg','12 packs','$14.73'),
 ('beer','Carlberg','images/the_winebeer_department/beer/carlsberg.jpg','6 packs','$10.49');


-- deleting duplicated values from the_produce_department table --
DELETE
FROM the_produce_department
WHERE produce_id NOT IN
(
SELECT MAX(produce_id)
FROM the_produce_department
GROUP BY produce_type, produce_name, produce_path, produce_size, produce_price)


INSERT INTO the_seafood_department(seafood_type, seafood_name, seafood_path,seafood_size, seafood_price)
VALUES ('shellfish','Shrimps','images/the_seafood_department/shellfish/shrimps.jpg','1 kg','$14.78'),
 ('fish','Atlantic Salmon','images/the_seafood_department/fish/atlantic_salmon.jpg','1 kg','$10.00'),
 ('fish','Pacific Salmon','images/the_seafood_department/fish/pacific_salmon.jpg','1 kg','$5.16'),
 ('fish','Catfish','images/the_seafood_department/fish/catfish.jpg','1 kg','$4.37'),
 ('fish','Tuna','images/the_seafood_department/fish/tuna.jpg','1 kg','$5.02'),
 ('fish','Trout','images/the_seafood_department/fish/trout.jpg','1 kg','$2.92'),
 ('fish','Flounder','images/the_seafood_department/fish/flounder.jpg','1 kg','$5.00'),
 ('fish','Cod','images/the_seafood_department/fish/cod.jpg','1 kg','$3.32'),
 ('fish','Haddock','images/the_seafood_department/fish/haddock.jpg','1 kg','$30.32');

INSERT INTO the_health_beauty_department(healthbeauty_type, healthbeauty_name, health_beauty_path, health_beauty_size, health_beauty_price)
VALUES ('toothpaste','Crest 3d White','images/the_health_beauty_department/toothpaste/crest_3d_white.jpg','1 pack','$11.44'),
 ('toothpaste','Colgate','images/the_health_beauty_department/toothpaste/colgate.jpg','6 ounce','$7.92'),
 ('toothpaste','Crest Pro Health','images/the_health_beauty_department/toothpaste/crest_pro_health.jpg','3 ounce','$17.77'),
 ('sunscreen','Himalaya Herbals Protective Sunscreen Lotion','images/the_health_beauty_department/sunscreen/himalaya_herbals_protective_sunscreen_Lotion.jpg','100 ml','$12.99'),
 ('sunscreen','The Derma Co Hyaluronic Sunscreen','images/the_health_beauty_department/sunscreen/the_derma_co_hyaluronic_sunscreen.jpg','50 g','$12.99'),
 ('sunscreen','La Roche Posay Anthelios Sunscreen','images/the_health_beauty_department/sunscreen/la_roche_posay_anthelios_sunscreen.jpg','4.7 ml','$7.74'),
 ('bathing products','Kai Bathing Bubbles','images/the_health_beauty_department/bathing_products/kai_bathing_bubbles.jpg','12 ounces','$29.00'),
 ('bathing products','Deep Relax Bath & Shower Oil','images/the_health_beauty_department/bathing_products/deep_relax_bath_&_shower_oil.jpg','55 ml','$585.00'),
 ('bathing products','Herbivore Botanicals Calm Bath Salts','images/the_health_beauty_department/bathing_products/herbivore_botanicals_calm_bath_salts.jpg','8 ounces','$20.00'),
 ('shaving products','Barbasol','images/health_beauty_department/shaving_products/barbasol.jpg','10 ounces','$9.98'),
 ('shaving products','Private Label','images/health_beauty_department/shaving_products/private_label.jpg','10 ounces','$9.98'),
 ('shaving products','Gillette Razor Blades','images/health_beauty_department/shaving_products/gillette.jpg','5 pieces','$38.98');

INSERT INTO the_prepaired_department(prepaired_type,prepaired_name,prepaired_path,prepaired_size,prepaired_price)
VALUES ('breakfast','Sandwiches','images/the_prepaired_department/breakfast/sandwiches.jpg','1 piece','$4.00'),
 ('breakfast','Salads','images/the_prepaired_department/breakfast/salads.jpg','i plate','$3.50'),
 ('breakfast','Cut Fruits','images/the_prepaired_department/breakfast/cut_fruits.jpg','1 plate','$25.00'),
 ('lunch','Pizza','images/the_prepaired_department/lunch/pizza.jpg','1 large pizza','$5.99'),
 ('lunch','Vegetable Trays','images/the_prepaired_department/lunch/vegetable_trays.jpg','1 tray','$13.82'),
 ('fast foods','Hotdogs','images/the_prepaired_department/fast_foods/hotdogs.jpg','10 ounces','$5.52'),
 ('fast foods','Nachos','images/the_prepaired_department/fast_foods/nachos.jpg','2.75 ounces','$1.98'),
 ('fast foods','Popcorns','images/the_prepaired_department/fast_foods/popcorn.jpg','3.29 ounces','$5.98'),
 ('drinks','Hot Chocolate','images/the_prepaired_department/drinks/hotchocolate.jpg','grande','$3.25'),
 ('drinks','Coffee','images/the_prepaired_department/drinks/coffee.jpg','tall','$2.25');


-- updating the mistaken papayas produce_type to fruits, and produce_path to also fruits path
UPDATE the_produce_department
SET produce_type = 'fruits',
produce_path = 'images/the_produce_department/fruits/papayas.jpg'
WHERE produce_name = 'papayas';


-- inserting broccoli vegetables instead of the papaya fruit
INSERT INTO the_produce_department(produce_type, produce_name, produce_path, produce_size, produce_price)
VALUES('vegetables','broccoli','images/the_produce_department/vegetables/boroccoli.jpg','1 kg','$75.00');

-- renaming the prepaired_department name to prepared_department
ALTER TABLE the_prepaired_department RENAME TO the_prepared_department;

-- renaming all column's of the renamed the_prepared_department
ALTER TABLE the_prepared_department CHANGE prepaired_id prepared_id int not null,
CHANGE prepaired_name prepared_name char(40) not null,
CHANGE prepaired_type prepared_type char(40) not null,
CHANGE prepaired_size prepared_size char(20),
CHANGE prepaired_price prepared_price char(20) not null,
CHANGE prepaired_path prepared_path char(200) not null;

-- deleting and adding 'broccoli' again since it doesn't show up in php
DELETE FROM the_produce_department WHERE produce_name = 'broccoli';
INSERT INTO the_produce_department (produce_type, produce_name, produce_path, produce_size, produce_price)
VALUES('broccoli','vegetables','images/the_produce_department/vegetables/broccoli.jpg', '1 kg', '$10.34');

