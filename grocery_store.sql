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

-- adding the description column and measurement column to tables
ALTER TABLE the_meat_department
ADD  meat_desc LONGTEXT not null,
ADD meat_measurement char(255) not null;

ALTER TABLE the_seafood_department
ADD  seafood_desc LONGTEXT not null,
ADD seafood_measurement char(255) not null;

ALTER TABLE the_wine_beer_department
ADD  wine_beer_desc LONGTEXT not null,
ADD wine_beer_measurement char(255) not null;

ALTER TABLE the_health_beauty_department
ADD  health_beauty_desc LONGTEXT not null,
ADD health_beauty_measurement char(255) not null;

ALTER TABLE the_produce_department
ADD  produce_desc LONGTEXT not null,
ADD meat_measurement char(255) not null;

ALTER TABLE the_prepared_department
ADD  prepared_desc LONGTEXT not null,
ADD prepared_measurement char(255) not null;

-- updating those column's values in each table
UPDATE the_meat_department
SET meat_measurement = 'Kg';

UPDATE the_meat_department
SET meat_desc = "Chicken is the food that we include in any day, every day meal without any remorse. There are different type of chickens in our store. Make sure to watch our live stream of the chicken meat from our website, and decide what chicken you are most comfortable with.Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Chicken';

UPDATE the_meat_department
SET meat_desc = "Turkey is one of the most popular meat variety not only on out grocery but also world wide. There are different main companies that distribute best kind of turkeys. And our shop always make sure to get our turkeys from those companies. You can buy the turkey that you want from those popular companies through our store. Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Turkey';

UPDATE the_meat_department
SET meat_desc = "Lamb is one of rare expensive and hard to decide whether that meat is good or bad meat type. In our store you can get the cheapest but rich in quality lambs that you can find easily. Without a doubt we make sure to give you the best product, we can guaranty you that. Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Lamb';

UPDATE the_meat_department
SET meat_desc = "Pork is one of the finest meat. You can check upon the available pork in our store through this web and decide on your own which you should buy. Feel free to our meat manager if you dont know how to or what to choose .Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Pork';

UPDATE the_meat_department
SET meat_desc = "Beef is our best distributed product from 2019 to this year and we make sure to hold this name for the next years to with our kind customers support undoublty. SO feel free to contact about the beef you want and give us your suggestions too. Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Beef';

UPDATE the_meat_department
SET meat_desc = "Goat meat type is one of the best meats that has been reviewed as best by our customers. There are different type which haas been distributed by different companies. Feel free to contact us and order your chosen company goat meat from our grocery. We will make sure to give you the best discount after all. Contact our meat department manager - 0775654324 for more info"
WHERE meat_name = 'Goat';


UPDATE the_seafood_department
SET seafood_measurement = 'Kg';

UPDATE the_seafood_department
SET seafood_desc = "Shrimps are one of the best selling fish item which is categorizing under shellfish. We buying shrimps from one of the best seafood ports that can be found in our country. So feel free to contact us and buy some for your own. After watching our live stream of the avaiable shrimps and judge the quality of it by your own. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Shrimps';

UPDATE the_seafood_department
SET seafood_desc = "Atlantic Salmon is one of the best known Salmon in this country, And our shop has been wining an amazing name for the quality of our salmons through out years. You can choose the amount you need and buy these. Feel free to contact the following person if needed any help through out the proccess. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Atlantic Salmon';

UPDATE the_seafood_department
SET seafood_desc = "Pacific Salmon known for one of the best after the Atlantic Salmon. It is waste of time to mention the quality of these salmon cause of the famousness of our grocery about salmon seafood. So feel free to contact us about any information and the fishes. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Pacific Salmon';

UPDATE the_seafood_department
SET seafood_desc = "Catfish are one of the best selling fishes in our shop. There are different variety typs of these amazing fishes. Our customers have been using these marvelous fishes for their dishes forever. You can choose the fish type you want by watching our live stream of the catfishes type through this website .Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Catfish';

UPDATE the_seafood_department
SET seafood_desc = "Tuna is very well known seafood worldwide, there's nosaying for that. but there are very few shops that you can buy the best Tunas. And talking about these fishes quality most shops have been receiving low ranking for it. proud to say that our shop never has been there. Feel free to choose and buy the tuna you needed, high quality guaranteed as always. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Tuna';

UPDATE the_seafood_department
SET seafood_desc = "Trout i a rare seafood to find in this country. happy to say that we are able to provide you this great fish from our shop. We contribute these fiss from the best known companies worldwide. Please kindly make sure to contact our manager before ordering this fish because of the least amount that we have currently. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Trout';

UPDATE the_seafood_department
SET seafood_desc = "Flounder is one of well know seafood in our shop. You can watch our live stream and judge the quality of the fish and order the exact fish by your own after contacting our seafood manager. It is not necessart to follow before instructions you can also just order it and we will make sure to check the quality before deliverying .Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Flounder';

UPDATE the_seafood_department
SET seafood_desc = "Cod is one of well known seafood in our store. You can shop all different type of Cods you needed if some type is not available currenlty please feel free to contact our seafood manager and inforom us. We will inform you when it will be available. and we will make sure to deliver it on time. Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Cod';

UPDATE the_seafood_department
SET seafood_desc = "Haddock is the seafood that available in our store almost all the time. So feel free to add to this seafood to your cart and buy it as you like cause like as always, we will make sure to check the quality and distribute you the best .Contact our seafood department manager - 0775654325 for more info"
WHERE seafood_name = 'Haddock';

