<?php
// $pagename = "Grocery Store";
// echo "<title>".$pagename."</title>";
// echo "<h2>".$pagename."</h2>";
// echo "<hr>Success I can see the PHP page !!!";

session_start();
//including db.php file to connect to db
include ("db.php");

echo "<link rel=stylesheet type=text/css href='index.css'>";
echo "<body>";
include('header.html');?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <form action="get">
    <select name="store-sections" id="store-sections">
      <option class = "store-section-option" value="all">All</option>
      <option class = "store-section-option" value="Beer&Wine">The Beer & Wine Department</option>
      <option class = "store-section-option" value="produce">The Produce Department</option>
      <option class = "store-section-option" value="meat">The Meat Department</option>
      <option class = "store-section-option" value="seafood">The Seafood Department</option>
      <option class = "store-section-option" value="healthy&beauty">The Health & Beauty Department</option>
      <option class = "store-section-option" value="prepared">The Deli/Prepared Food Department</option>
    </select>
    <input type="search" name="search" id="search" placeholder="Search...">
    <button type="submit">search</button>
  </form>
</body>
</html>

<?php 

//creating sql variables and populating those with  sql statements to retrieve necessary data from the relevant db tables
  $sql_produce = "select produce_id, produce_type, produce_name, produce_size, produce_price, produce_path from the_produce_department";

  $sql_meat = "select meat_id, meat_type,meat_name, meat_size, meat_price, meat_path from the_meat_department";

  $sql_seafood = "select seafood_id, seafood_type, seafood_name, seafood_size, seafood_price, seafood_path from the_seafood_department";

  $sql_prepared = "select prepared_id, prepared_type, prepared_name, prepared_size, prepared_price, prepared_path from the_prepared_department";

  $sql_wine_beer = "select winebeer_id, winebeer_type, winebeer_name, wine_beer_size, wine_beer_price, wine_beer_path from the_wine_beer_department";

  $sql_health_beauty = "select healthbeauty_id, healtbeauty_type, healthbeauty_name, health_beauty_size, health_beauty_price, health_beauty_path from the_health_beauty_department";

  //executing those created sql statements and checking the db connection,if it's not connected succesfully it'll show an error message
  

  echo "<h3 class='home-topics'>recently added</h3>";
  echo "<div class='slide-gallery'>";
    echo "<div class='gallery-item'>";
      echo "<div class='gallery-image'>";
        echo "<img src = 'images/potato.jpg'>";
      echo "</div>";
      echo "<div class = 'hidden-item-info'>";
        echo "<p>Potato</p>";
        echo "<p>1kg -> Rs.200.00</p>";
      echo "</div>";
    echo "</div>";
  echo "</div>";
  echo "<hr>";
  echo "<h3 class='home-topics'>you shopped</h3>";
  echo "<hr>";
  echo "<h3 class='home-topics'>the produce department</h3>";
?>
<?php
include('footer.html');
?>