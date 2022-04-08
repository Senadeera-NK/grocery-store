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


-- deleting duplicated values from the_produce_department table --
DELETE
FROM the_produce_department
WHERE produce_id NOT IN
(
SELECT MAX(produce_id)
FROM the_produce_department
GROUP BY produce_type, produce_name, produce_path, produce_size, produce_price)


INSERT INTO the_seafood_department(seafood_type, seafood_name, seafood_path,seafood_size, seafood_price)
VALUES ('shellfish','shrimps','images/the_seafood_department/shellfish/shrimps.jpg','1 kg','$14.78'),
 ('fish','atlantic salmon','images/the_seafood_department/fish/atlantic salmon.jpg','1 kg','$10.00'),
 ('fish','pacific salmon','images/the_seafood_department/fish/pacific salmon.jpg','1 kg','$5.16'),
 ('fish','catfish','images/the_seafood_department/fish/catfish.jpg','1 kg','$4.37'),
 ('fish','tuna','images/the_seafood_department/fish/tuna.jpg','1 kg','$5.02'),
 ('fish','trout','images/the_seafood_department/fish/trout.jpg','1 kg','$2.92'),
 ('fish','flounder','images/the_seafood_department/fish/flounder.jpg','1 kg','$5.00'),
 ('fish','cod','images/the_seafood_department/fish/cod.jpg','1 kg','$3.32'),
 ('fish','haddock','images/the_seafood_department/fish/haddock.jpg','1 kg','$30.32');

INSERT INTO the_health_beauty_department(healthbeauty_type, healthbeauty_name, health_beauty_path, health_beauty_size, health_beauty_price)
VALUES ('toothpaste','crest 3d white','images/the_health_beauty_department/toothpaste/crest 3d white.jpg','1 pack','$11.44'),
 ('toothpaste','colgate','images/the_health_beauty_department/toothpaste/colgate.jpg','6 ounce','$7.92'),
 ('toothpaste','crest pro health','images/the_health_beauty_department/toothpaste/crest pro health.jpg','3 ounce','$17.77'),
 ('sunscreen','himalaya herbals protective sunscreen lotion','images/the_health_beauty_department/sunscreen/himalaya herbals protective sunscreen Lotion.jpg','100 ml','$12.99'),
 ('sunscreen','the derma co hyaluronic sunscreen','images/the_health_beauty_department/sunscreen/the derma co hyaluronic sunscreen.jpg','50 g','$12.99'),
 ('sunscreen','la roche posay anthelios sunscreen','images/the_health_beauty_department/sunscreen/la roche posay anthelios sunscreen.jpg','4.7 ml','$7.74'),
 ('bathing products','kai bathing bubbles','images/the_health_beauty_department/bathing products/kai bathing bubbles.jpg','12 ounces','$29.00'),
 ('bathing products','deep relax bath & shower oil','images/the_health_beauty_department/bathing products/deep relax bath & shower oil.jpg','55 ml','$585.00'),
 ('bathing products','herbivore botanicals calm bath salts','images/the_health_beauty_department/bathing products/herbivore botanicals calm bath salts.jpg','8 ounces','$20.00'),
 ('shaving products','barbasol','images/health_beauty_department/shaving products/barbasol.jpg','10 ounces','$9.98'),
 ('shaving products','private label','images/health_beauty_department/shaving products/private label.jpg','10 ounces','$9.98'),
 ('shaving products','gillette razor blades','images/health_beauty_department/shaving products/gillette.jpg','5 pieces','$38.98');

INSERT INTO the_prepaired_department(prepaired_type,prepaired_name,prepaired_path,prepaired_size,prepaired_price)
VALUES ('breakfast','sandwiches','images/the_prepaired_department/breakfast/sandwiches.jpg','1 piece','$4.00'),
 ('breakfast','salads','images/the_prepaired_department/breakfast/salads.jpg','i plate','$3.50'),
 ('breakfast','cut fruits','images/the_prepaired_department/breakfast/cut fruits.jpg','1 plate','$25.00'),
 ('lunch','pizza','images/the_prepaired_department/lunch/1 large.jpg','1 large pizza','$5.99'),
 ('lunch','vegetable trays','images/the_prepaired_department/lunch/vegetable trays.jpg','1 tray','$13.82'),
 ('fast foods','hotdogs','images/the_prepaired_department/fast foods/hotdogs.jpg','10 ounces','$5.52'),
 ('fast foods','nachos','images/the_prepaired_department/fastfoods/nachos.jpg','2.75 ounces','$1.98'),
 ('fast foods','popcorn','images/the_prepaired_department/fast foods/popcorn.jpg','3.29 ounces','$5.98'),
 ('drinks','hot chocolate','images/the_prepaired_department/drinks/hotchocolate.jpg','grande','$3.25'),
 ('drinks','coffee','images/the_prepaired_department/drinks/coffee.jpg','tall','$2.25');

 INSERT INTO the_health_beauty_department ()
 VALUES ('njdskjn');


