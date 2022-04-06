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
VALUES ('vegetables','carrots','images/the_produce_department/vegetables/carrots.jpg','1 kg','$12.00'),
 ('vegetables','cucumbers','images/the_produce_department/vegetables/cucumbers.jpg','1 kg','$20.00'),
 ('vegetables','papayas','images/the_produce_department/vegetables/papayas.jpg','1 kg','$15.00'),
 ('vegetables','beatroots','images/the_produce_department/vegetables/beatroots.jpg','1 kg','$25.00'),
 ('vegetables','tomatos','images/the_produce_department/vegetables/tomatos.jpg','1 kg','$10.00'),
 ('fruits','apples','images/the_produce_department/fruits/apples.jpg','1 kg','$5.00'),
 ('fruits','bananas','images/the_produce_department/fruits/bananas.jpg','1 kg','$7.50'),
 ('fruits','oranges','images/the_produce_department/fruits/oranges.jpg','1 kg','$4.25'),
 ('fruits','grapes','images/the_produce_department/fruits/grapes.jpg','1 kg','$4.45'),
 ('fruits','mangos','images/the_produce_department/fruits/mangos.jpg','1 kg','$4.45');

INSERT INTO the_meat_department(meat_type, meat_name, meat_path, meat_size, meat_price)
VALUES ('red meat','beef','images/the_meat_department/red meat/beef.jpg','1 kg','$35.00'),
 ('red meat','pork','images/the_meat_department/red meat/pork.jpg','1 kg','$55.00'),
 ('red meat','lamb','images/the_meat_department/red meat/lamb.jpg''1 kg','$130.00'),
 ('red meat','goat','images/the_meat_department/red meat/goat.jpg''1 kg','$40.00'),
 ('white meat','chicken','images/the_meat_department/red meat/chicken.jpg','1 kg','$15.00'),
 ('white meat','turkey','images/the_meat_department/red meat/turkey.jpg','1 kg','$25.00');

INSERT INTO the_wine_beer_department(winebeer_type, winebeer_name, wine_beer_path, wine_beer_size, wine_beer_price)
VALUES ('wine','red wine','images/the_winebeer_department/wine/red wine.jpg','1 litre','$35.00'),
 ('wine','white wine','images/the_winebeer_department/wine/white wine.jpg','1 litre','$65.00'),
 ('wine','rose wine','images/the_winebeer_department/wine/rose wine.jpg','1 litre','$70.00'),
 ('wine','sparkling wine','images/the_winebeer_department/wine/sparkling wine.jpg','1 litre','$44.00'),
 ('beer','budweiser','images/the_winebeer_department/beer/budsweiser.jpg','6 packs','$9.00'),
 ('beer','guinness','images/the_winebeer_department/beer/guinness.jpg','750 ml','$14.99'),
 ('beer','stella artois','images/the_winebeer_department/beer/stella artois.jpg','12 packs','$13.50'),
 ('beer','heineken','images/the_winebeer_department/beer/heineken.jpg','12 packs','$14.73'),
 ('beer','carlberg','images/the_winebeer_department/beer/carlsberg.jpg','6 packs','$10.49');


-- continue...
INSERT INTO the_seafood_department
VALUES ('shrimps','shrimps','images/the_seafood_department/shrimps.jpg'),
 ('atlantic salmon','atlantic salmon','images/the_seafood_department/atlantic salmon.jpg'),
 ('pacific salmon','pacific salmon','images/the_seafood_department/pacific salmon.jpg'),
 ('catfish','catfish','images/the_seafood_department/catfish.jpg'),
 ('tuna','tuna','images/the_seafood_department/tuna.jpg'),
 ('trout','trout','images/the_seafood_department/trout.jpg'),
 ('flounder','flounder','images/the_seafood_department/flounder.jpg'),
 ('cod','cod','images/the_seafood_department/cod.jpg'),
 ('haddock','haddock','images/the_seafood_department/haddock.jpg');

INSERT INTO the_health_beauty_department
VALUES ('toothpaste','crest 3d white','images/the_health_beauty_department/toothpaste/crest 3d white.jpg'),
 ('toothpaste''colgate','images/the_health_beauty_department/toothpaste/colgate.jpg'),
 ('toothpaste','crest pro health','images/the_health_beauty_department/toothpaste/crest pro health.jpg'),
 ('sunscreen','himalaya herbals protective sunscreen Lotion','images/the_health_beauty_department/sunscreen/himalaya herbals protective sunscreen Lotion.jpg'),
 ('sunscreen','the derma co hyaluronic sunscreen','images/the_health_beauty_department/sunscreen/the derma co hyaluronic sunscreen.jpg'),
 ('sunscreen','la roche posay anthelios sunscreen','images/the_health_beauty_department/sunscreen/la roche posay anthelios sunscreen.jpg'),
 ('bathing products','kai bathing bubbles','images/the_health_beauty_department/bathing products/kai bathing bubbles.jpg'),
 ('bathing products','deep relax bath & shower oil','images/the_health_beauty_department/bathing products/deep relax bath & shower oil.jpg'),
 ('bathing products','herbivore botanicals calm bath salts','images/the_health_beauty_department/bathing products/herbivore botanicals calm bath salts.jpg'),
 ('shaving products','barbasol','images/health_beauty_department/shaving products/barbasol.jpg'),
 ('shaving products','private label','images/health_beauty_department/shaving products/private label.jpg'),
 ('shaving products','gillette','images/health_beauty_department/shaving products/gillette.jpg');

INSERT INTO the_prepaired_department
VALUES ('breakfast','sandwiches','images/the_prepaired_department/breakfast/sandwiches.jpg'),
 ('breakfast','salads','images/the_prepaired_department/breakfast/salads.jpg'),
 ('breakfast','cut fruits','images/the_prepaired_department/breakfast/cut fruits.jpg'),
 ('lunch','pizza','images/the_prepaired_department/lunch/pizzas.jpg'),
 ('lunch','vegetable trays','images/the_prepaired_department/lunch/vegetable trays.jpg'),
 ('fast foods','hotdogs','images/the_prepaired_department/fast foods/hotdogs.jpg'),
 ('fast foods','nachos','images/the_prepaired_department/fastfoods/nachos.jpg'),
 ('fast foods','popcorn','images/the_prepaired_department/fast foods/popcorn.jpg'),
 ('drinks','hot chocolate','images/the_prepaired_department/drinks/hotchocolate.jpg'),
 ('drinks','coffee','images/the_prepaired_department/drinks/coffee.jpg');


