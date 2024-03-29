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


CREATE TABLE the_health_beauty_department (
  healthbeauty_id int NOT NULL AUTO_INCREMENT,
  healthbeauty_type char(40) NOT NULL,
  healthbeauty_name char(40) NOT NULL,
  PRIMARY KEY healthbeauty_id
);

-- adding descriptions and measuring types to health_beauty_department --
UPDATE the_health_beauty_department
SET health_beauty_desc = "Crest 3d White is the seafood that available in our store almost all the time. So feel free to add to this toothpaste to your cart and buy it as you like cause like as always, we will make sure to check the quality and distribute you the best .Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Crest 3d White';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packets"
WHERE healthbeauty_name = 'Crest 3d White';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Colgate is one of well known toothpase in our store. You can shop all different type of Colgate you needed if some type is not available currenlty please feel free to contact our health & beauty manager and inforom us. We will inform you when it will be available. and we will make sure to deliver it on time. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Colgate';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packets"
WHERE healthbeauty_name = 'Colgate';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Crest Pro Health is one of well know toothpase in our shop. You can watch our live stream and judge the quality of the toothpaste and order the exact product by your own after contacting our health & beauty manager. It is not necessary to follow before instructions you can also just order it and we will make sure to check the quality before deliverying .Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Crest Pro Health';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packets"
WHERE healthbeauty_name = 'Crest Pro Health';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Himalaya Herbals Protective Sunscreen Lo is not a rare sunscreen to find in this country. happy to say that we are able to provide you this great product from our shop. We contribute these products from the best known Himalaya Herbals company worldwide. Please kindly make sure to contact our manager before ordering this product because of the least amount that we have currently. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Himalaya Herbals Protective Sunscreen Lo';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'Himalaya Herbals Protective Sunscreen Lo';

UPDATE the_health_beauty_department
SET health_beauty_desc = "The Derma Co Hyaluronic Sunscreen is very well known sunscreen worldwide, there's nosaying for that. but there are very few shops that you can buy the best products. And talking about these product's quality most shops have been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the sunscreen product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'The Derma Co Hyaluronic Sunscreen';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'The Derma Co Hyaluronic Sunscreen';

UPDATE the_health_beauty_department
SET health_beauty_desc = "La Roche Posay Anthelios Sunscreen is very well known sunscreen worldwide, there's nosaying for that. but there are very few shops that you can buy the best products. And talking about these product's quality most shops have been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the sunscreen product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'La Roche Posay Anthelios Sunscreen';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packets"
WHERE healthbeauty_name = 'La Roche Posay Anthelios Sunscreen';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Kai Bathing Bubbles is very well known bubble bath product worldwide. This product is one of the bubble bath product that has always selling as the best that has ever been provided by our shop. proud to say our shop is always providing this product always. Feel free to choose and buy the sunscreen product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info if needed"
WHERE healthbeauty_name = 'Kai Bathing Bubbles';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'Kai Bathing Bubbles';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Deep Relax Bath & Shower Oil is one of well know bathing product in our shop. You can watch our live stream and judge the quality of the product if needed and order the exact product by your own after contacting our beauty & health manager. It is not necessary to follow before instructions you can also just order it and we will make sure to check the quality before deliverying.Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Deep Relax Bath & Shower Oil';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'Deep Relax Bath & Shower Oil';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Herbivore Botanicals Calm Bath Salts is very well known bathing product worldwide, there's nosaying for that. but there are alot of shops that you can buy this product online and offline. And talking about these product's quality most shops have been receiving high ranking for it. proud to say that our shop has always got the best feedbacks for the product also. Feel free to choose and buy the bathing product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Herbivore Botanicals Calm Bath Salts';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'Herbivore Botanicals Calm Bath Salts';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Barbasol is very well known  bath product worldwide. This product is one of the bath product that has always selling as the best that has ever been provided by our shop. proud to say our shop is always providing this product always. Feel free to choose and buy the Barbasol product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info if needed"
WHERE healthbeauty_name = 'Barbasol';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "bottles"
WHERE healthbeauty_name = 'Barbasol';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Private Label is very well known product worldwide, there's nosaying for that. and there are alot of shops that you can buy this best products. And talking about these product's quality most shops have been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the  product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Private Label';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packets"
WHERE healthbeauty_name = 'Private Label';

UPDATE the_health_beauty_department
SET health_beauty_desc = "Gillette Razor Blades is very well known product worldwide, there's nosaying for that. and there are alot of shops that you can buy this best products. And talking about these product's quality most shops have been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the  product you needed, high quality guaranteed as always. Contact our health & beauty department manager - 0775654326 for more info"
WHERE healthbeauty_name = 'Gillette Razor Blades';

UPDATE the_health_beauty_department
SET health_beauty_measurement = "packs"
WHERE healthbeauty_name = 'Gillette Razor Blades';


------ adding prepared_desc and prepared_measurement to the prepared_department ----

UPDATE the_prepared_department
SET prepared_desc = "Sandwiches is very well known prepared fast food, there's nosaying for that. and there are many shops that you can buy sandwiches online and offline. And talking about sandiwich's quality our shop has been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the sandwiches you needed, high quality guaranteed as always. Contact our shop's prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Sandwiches';

UPDATE the_prepared_department
SET prepared_measurement = "sandwiches"
WHERE prepared_name = 'Sandwiches';

UPDATE the_prepared_department
SET prepared_desc = "Salads is very well known prepared food, there's nosaying for that. and there are many shops that you can buy sandwiches online and offline. And talking about salads quality our shop has been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the salads plates you needed, high quality guaranteed as always. Contact our shop's prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Salads';

UPDATE the_prepared_department
SET prepared_measurement = "plates"
WHERE prepared_name = 'Salads';

UPDATE the_prepared_department
SET prepared_desc = "Cut fruits is very well known prepared food, our shop famous for. and there are many shops that you can buy cut fruits plates online and offline. And talking about fruits quality our shop has been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the cut fruits plates you needed, high quality guaranteed as always. Contact our shop's prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Cut Fruits';

UPDATE the_prepared_department
SET prepared_measurement = "plates"
WHERE prepared_name = 'Cut Fruits';


UPDATE the_prepared_department
SET prepared_desc = "Pizza is one of well know fas prepared food in our shop. You can watch our live stream and judge the quality of our shop's pizza if needed and order the exact product by your own after contacting our prepared department manager. It is not necessary to follow before instructions you can also just order it and we will make sure to check the quality before deliverying. Contact our prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Pizza';

UPDATE the_prepared_department
SET prepared_measurement = "pizza"
WHERE prepared_name = 'Pizza';

UPDATE the_prepared_department
SET prepared_desc = "Vegetable trays is  a very popular prepared food to find in this country. happy to say that we are able to provide you this great food from our shop. We contribute these products from the famous company worldwide. Please be kind enough to contact our manager if you needed your food from a specific company before ordering this product. Contact our prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Vegetable Trays';

UPDATE the_prepared_department
SET prepared_measurement = "trays"
WHERE prepared_name = 'Vegetable Trays';

UPDATE the_prepared_department
SET prepared_desc = "Hotdogs are very popular prepared food to find in this country. happy to say that we are able to provide you this famous fast food from our shop. We contribute these products from the famous company worldwide. Please be kind enough to contact our manager if you needed your food from a specific company before ordering the product. Contact our prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Hotdogs';

UPDATE the_prepared_department
SET prepared_measurement = "hotdogs"
WHERE prepared_name = 'Hotdogs';

UPDATE the_prepared_department
SET prepared_desc = "Nachos is very well known prepared fast food, there's nosaying for that. and there are many shops that you can buy nachos online and offline. And talking about nachos quality our shop has been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the nachos you needed, high quality guaranteed as always. Contact our shop's prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Nachos';

UPDATE the_prepared_department
SET prepared_measurement = "plates"
WHERE prepared_name = 'Nachos';

UPDATE the_prepared_department
SET prepared_desc = "Popcorns are a very popular, special fast food to find in this country. happy to say that we are able to provide you this fast snack from our shop. We contribute these products from the famous company worldwide. Please be kind enough to contact our manager if you needed your food from a specific company before ordering this product. Contact our prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Popcorns';

UPDATE the_prepared_department
SET prepared_measurement = "plates"
WHERE prepared_name = 'Popcorns';

UPDATE the_prepared_department
SET prepared_desc = "Hot Chocolates is very well known prepared drink, there's nosaying for that. and there are many shops that you can buy hot chocolates online and offline. And talking about the drink's quality our shop has been receiving high ranking for it. proud to say that our shop has always been there. Feel free to choose and buy the drink you needed, high quality guaranteed as always. Contact our shop's prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Hot Chocolates';

UPDATE the_prepared_department
SET prepared_measurement = "cups"
WHERE prepared_name = 'Hot Chocolates';

UPDATE the_prepared_department
SET prepared_desc = "Coffee are a very popular, special drink in this country and also worldwide. happy to say that we are able to provide you this drink from our shop. We contribute these coffee cups from the famous company worldwide. Please be kind enough to contact our manager if you needed your food from a specific company before ordering this product. Contact our prepared food department manager - 0775654327 for more info"
WHERE prepared_name = 'Coffee';

UPDATE the_prepared_department
SET prepared_measurement = "cups"
WHERE prepared_name = 'Coffee';

-- changing the_produce_department's one columns name
ALTER TABLE the_produce_department
CHANGE COLUMN meat_measurement produce_measurement char(255);

-- updating and inserting produce_measurement and produce_description to the_produce_department

UPDATE the_produce_department
SET produce_desc = "Carrots is very well known protein vegetable, there's nosaying for that. and there are many shops that you can buy carrots online and offline. And talking about vegetables quality our shop has been receiving high ranking for it. Quality matters always when shopping vegetables online. Feel free to choose and buy the amount of carrots you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Carrots';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Carrots';

UPDATE the_produce_department
SET produce_desc = "Cucumbers are a very popular, cooling vegetable in this country and also worldwide. happy to say that we are able to provide you this popular cucumbers from our shop. We contribute these cucumbers from the famous company worldwide. Please be kind enough to contact our manager if you needed your vegetables from a specific company before ordering this product. Contact our produce department manager - 0775654328 for more info"
WHERE produce_name = 'Cucumbers';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Cucumbers';

UPDATE the_produce_department
SET produce_desc = "Papayas is very well known protein vegetable, there's nosaying for that. and there are many shops that you can buy papayas  online and offline. And talking about vegetables quality our shop has been receiving high ranking for it. Quality matters always when shopping vegetables online. Feel free to choose and buy the amount of carrots you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Papayas';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Papayas';

UPDATE the_produce_department
SET produce_desc = "Beatroots are a very popular, vegetable in this country and also worldwide. happy to say that we are able to provide you this popular beatroots from our shop. We contribute these beatroots from the famous company worldwide. Please be kind enough to contact our manager if you needed your vegetables from a specific company before ordering this product. Contact our produce department manager - 0775654328 for more info"
WHERE produce_name = 'Beatroots';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Beatroots';

UPDATE the_produce_department
SET produce_desc = "Tomatos are very well known protein vegetable, there's nosaying for that. and there are many shops that you can buy tomatos online and offline. And talking about vegetables quality our shop has been receiving high ranking for it. Quality matters always when shopping vegetables online. Feel free to choose and buy the amount of tomatos you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Tomatos';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Tomatos';


UPDATE the_produce_department
SET produce_desc = "Apples are very well known protein fruit, there's nosaying for that. and there are many shops that you can buy apples online and offline. And talking about fruits quality our shop has been receiving high ranking for it. Quality matters always when shopping fruits online. Feel free to choose and buy the amount of apples you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Apples';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Apples';

UPDATE the_produce_department
SET produce_desc = "Bananas are a very popular, fruit in this country and also worldwide. happy to say that we are able to provide you this popular fruit from our shop. We contribute these bananas from the famous company worldwide. Please be kind enough to contact our manager if you needed your fruits from a specific company before ordering this product. Contact our produce department manager - 0775654328 for more info"
WHERE produce_name = 'Bananas';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Bananas';

UPDATE the_produce_department
SET produce_desc = "Oranges are a very popular, fruit in this country and also worldwide. happy to say that we are able to provide you this popular fruit from our shop. We contribute these oranges from the famous company worldwide. Please be kind enough to contact our manager if you needed your fruits from a specific company before ordering this product. Contact our produce department manager - 0775654328 for more info"
WHERE produce_name = 'Oranges';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Oranges';


UPDATE the_produce_department
SET produce_desc = "Grapes are very well known protein fruit, there's nosaying for that. and there are many shops that you can buy grapes online and offline. And talking about fruits quality our shop has been receiving high ranking for it. Quality matters always when shopping fruits online. Feel free to choose and buy the amount of grapes you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Grapes';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Grapes';

UPDATE the_produce_department
SET produce_desc = "Mangos are very well known protein fruit, there's nosaying for that. and there are many shops that you can buy mangos online and offline. And talking about fruits quality our shop has been receiving high ranking for it. Quality matters always when shopping fruits online. Feel free to choose and buy the amount of mangos you needed, high quality guaranteed as always. Contact our shop's produce department manager - 0775654328 for more info"
WHERE produce_name = 'Mangos';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Mangos';

UPDATE the_produce_department
SET produce_desc = "Broccoli are a very popular, vegetable in this country and also worldwide. happy to say that we are able to provide you this popular vegetable from our shop. We contribute these broccolies from the famous company worldwide. Please be kind enough to contact our manager if you needed your vegetables from a specific company before ordering this product. Contact our produce department manager - 0775654328 for more info"
WHERE produce_name = 'Broccoli';

UPDATE the_produce_department
SET produce_measurement = "kg"
WHERE produce_name = 'Broccoli';

-- adding descriptions and measurements to wine_and_beer_department --

UPDATE the_wine_beer_department
SET wine_beer_desc = "Red Wine is very popular, wine in this country and also worldwide. happy to say that we are able to provide you this popular wine from our shop. We contribute these wines from the famous company worldwide. Please be kind enough to contact our manager if you needed your bottles from a specific company before ordering this product. Contact our wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Red Wine';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "bottles"
WHERE winebeer_name = 'Red Wine';

UPDATE the_wine_beer_department
SET wine_beer_desc = "White Wine is very popular, wine in this country and also worldwide. happy to say that we are able to provide you this popular wine from our shop. We contribute these wines from the famous company worldwide. Please be kind enough to contact our manager if you needed your bottles from a specific company before ordering this product. Contact our wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'White Wine';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "bottles"
WHERE winebeer_name = 'White Wine';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Rose Wine is very popular, wine in this country and also worldwide. happy to say that we are able to provide you this popular wine from our shop. We contribute these wines from the famous company worldwide. Please be kind enough to contact our manager if you needed your bottles from a specific company before ordering this product. Contact our wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Rose Wine';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "bottles"
WHERE winebeer_name = 'Rose Wine';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Sparkling Wine is very well known wine, there's nosaying for that. and there are many shops that you can buy this wine online and offline. And talking about wine's quality our shop has been receiving high ranking for it. Quality matters always when shopping wines online. Feel free to choose and buy the amount of bottles you needed, high quality guaranteed as always. Contact our shop's wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Sparkling Wine';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "bottles"
WHERE winebeer_name = 'Sparkling Wine';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Budweiser is very well known beer, there's nosaying for that. and there are many shops that you can buy this beer online and offline. And talking about beer's quality our shop has been receiving high ranking for it. Quality matters always when shopping wines online. Feel free to choose and buy the amount of bottles you needed, high quality guaranteed as always. Contact our shop's wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Budweiser';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "packs"
WHERE winebeer_name = 'Budweiser';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Guinness is very well known beer, there's nosaying for that. and there are many shops that you can buy this beer online and offline. And talking about beer's quality our shop has been receiving high ranking for it. Quality matters always when shopping wines online. Feel free to choose and buy the amount of bottles you needed, high quality guaranteed as always. Contact our shop's wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Guinness';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "bottles"
WHERE winebeer_name = 'Guinness';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Stella Artois is very well known beer, there's nosaying for that. and there are many shops that you can buy this beer online and offline. And talking about beer's quality our shop has been receiving high ranking for it. Quality matters always when shopping wines online. Feel free to choose and buy the amount of bottles you needed, high quality guaranteed as always. Contact our shop's wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Stella Artois';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "packs"
WHERE winebeer_name = 'Stella Artois';

UPDATE the_wine_beer_department
SET wine_beer_desc = "Heineken is very well known beer, there's nosaying for that. and there are many shops that you can buy this beer online and offline. And talking about beer's quality our shop has been receiving high ranking for it. Quality matters always when shopping wines online. Feel free to choose and buy the amount of bottles you needed, high quality guaranteed as always. Contact our shop's wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Heineken';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "packs"
WHERE winebeer_name = 'Heineken';


UPDATE the_wine_beer_department
SET wine_beer_desc = "Carlberg is very popular, beer in this country and also worldwide. happy to say that we are able to provide you this popular beer from our shop. We contribute this beer from the famous company worldwide. Please be kind enough to contact our manager if you needed your bottles from a specific company before ordering this product. Contact our wine, beer department manager - 0775654329 for more info"
WHERE winebeer_name = 'Carlberg';

UPDATE the_wine_beer_department
SET wine_beer_measurement = "packs"
WHERE winebeer_name = 'Carlberg';

-- adding the users table into grocery_store
CREATE TABLE users_department (
  user_id int NOT NULL AUTO_INCREMENT,
  user_name char(255) NOT NULL,
  user_mail char(255) NOT NULL,
  user_password char(255) NOT NULL,
  PRIMARY KEY user_id
);

INSERT INTO users_department(user_name, user_mail, user_password)
VALUES ("s.a. nanduni kaveesha", "naksathaudage2000@gmail.com", "fbi0778593462");

INSERT INTO users_department(user_name, user_password, user_mail)
VALUES("nanduni kaveesha", "1234","nanduni1234@gmail.com");


-- creating a table for shopping cart items for users
CREATE TABLE users_cart_item_department (
    user_item_no INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    item_name char(255) NOT NULL,
    item_img_src char(255) NOT NULL,
    item_quantity char(255) NOT NULL,
    item_total_price char(255) NOT NULL,
    PRIMARY KEY (user_item_no),
    FOREIGN KEY (user_id) REFERENCES users_department(user_id)
);

-- changing columns names in every table
ALTER TABLE the_health_beauty_department
CHANGE COLUMN id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN healthbeauty_name `name` varchar(255),
CHANGE COLUMN healthbeauty_type `type` varchar(255),
CHANGE COLUMN health_beauty_size `size` varchar(255),
CHANGE COLUMN health_beauty_price `price` varchar(255),
CHANGE COLUMN health_beauty_path `path` varchar(255),
CHANGE COLUMN health_beauty_desc `desc` LONGTEXT,
CHANGE COLUMN health_beauty_measurement `measurement` char(255);

ALTER TABLE the_meat_department
CHANGE COLUMN meat_id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN meat_name `name` varchar(255),
CHANGE COLUMN meat_type `type` varchar(255),
CHANGE COLUMN meat_size `size` varchar(255),
CHANGE COLUMN meat_price `price` varchar(255),
CHANGE COLUMN meat_path `path` varchar(255),
CHANGE COLUMN meat_desc `desc` LONGTEXT,
CHANGE COLUMN meat_measurement `measurement` char(255);

ALTER TABLE the_prepared_department
CHANGE COLUMN prepared_id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN prepared_name `name` varchar(255),
CHANGE COLUMN prepared_type `type` varchar(255),
CHANGE COLUMN prepared_size `size` varchar(255),
CHANGE COLUMN prepared_price `price` varchar(255),
CHANGE COLUMN prepared_path `path` varchar(255),
CHANGE COLUMN prepared_desc `desc` LONGTEXT,
CHANGE COLUMN prepared_measurement `measurement` char(255);

ALTER TABLE the_produce_department
CHANGE COLUMN produce_id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN produce_name `name` varchar(255),
CHANGE COLUMN produce_type `type` varchar(255),
CHANGE COLUMN produce_size `size` varchar(255),
CHANGE COLUMN produce_price `price` varchar(255),
CHANGE COLUMN produce_path `path` varchar(255),
CHANGE COLUMN produce_desc `desc` LONGTEXT,
CHANGE COLUMN produce_measurement `measurement` char(255);

ALTER TABLE the_seafood_department
CHANGE COLUMN seafood_id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN seafood_name `name` varchar(255),
CHANGE COLUMN seafood_type `type` varchar(255),
CHANGE COLUMN seafood_size `size` varchar(255),
CHANGE COLUMN seafood_price `price` varchar(255),
CHANGE COLUMN seafood_path `path` varchar(255),
CHANGE COLUMN seafood_desc `desc` LONGTEXT,
CHANGE COLUMN seafood_measurement `measurement` char(255);

ALTER TABLE the_wine_beer_department
CHANGE COLUMN winebeer_id `id` int(255) AUTO_INCREMENT,
CHANGE COLUMN winebeer_name `name` varchar(255),
CHANGE COLUMN winebeer_type `type` varchar(255),
CHANGE COLUMN wine_beer_size `size` varchar(255),
CHANGE COLUMN wine_beer_price `price` varchar(255),
CHANGE COLUMN wine_beer_path `path` varchar(255),
CHANGE COLUMN wine_beer_desc `desc` LONGTEXT,
CHANGE COLUMN wine_beer_measurement `measurement` char(255);