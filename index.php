<?php
// $pagename = "Grocery Store";
// echo "<title>".$pagename."</title>";
// echo "<h2>".$pagename."</h2>";
// echo "<hr>Success I can see the PHP page !!!";

session_start();
//including db.php file to connect to db
include ("db.php");

echo "<script type='text/javascrcipt' src='index.js'></script>";
echo "<body>";

//including 'header' file to the page
include('header.html');?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- adding the src file -->
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
  $sql_health_beauty = "select healthbeauty_id, healthbeauty_type, healthbeauty_name, health_beauty_size, health_beauty_price, health_beauty_path from the_health_beauty_department";

  //executing those created sql statements and checking the db connection,if it's not connected succesfully it'll show an error message
  $exeSQL_produce = mysqli_query($connection, $sql_produce) or die(mysqli_error($connection));
  $exeSQL_meat = mysqli_query($connection, $sql_meat) or die(mysqli_error($connection));
  $exeSQL_seafood = mysqli_query($connection, $sql_seafood) or die(mysqli_error($connection));
  $exeSQL_prepared = mysqli_query($connection, $sql_prepared) or die(mysqli_error($connection));
  $exeSQL_wine_beer = mysqli_query($connection, $sql_wine_beer) or die(mysqli_error($connection));
  $exeSQL_health_beauty = mysqli_query($connection, $sql_health_beauty) or die(mysqli_error($connection));

  //trying to get all executed items to arrays
  // $array_meat = mysqli_fetch_array($exeSQL_meat);
  // $array_seafood = mysqli_fetch_array($exeSQL_seafood);
  // $array_prepared = mysqli_fetch_array($exeSQL_prepared);
  // $array_wine_beer = mysqli_fetch_array($exeSQL_wine_beer);
  // $array_health_beauty = mysqli_fetch_array($exeSQL_health_beauty);
  
  echo "<h3 class='home-topics'>recently added</h3>";

  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id = 'left1' alt='left'>";
  echo "<div class='gallery' id = 'gallery1'>";
  // getting all the items from mentioned sql
  while ($array_produce = mysqli_fetch_array($exeSQL_produce))
  {
    echo "<div class='gallery-item'>";
         echo "<img src =".$array_produce['produce_path'].">";
         echo "<p>".$array_produce['produce_name']."</p>";
         echo "<p>".$array_produce['produce_size']." "." = "." ".$array_produce['produce_price']."</p>";
     echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id='right1' alt='right'>";
  echo "</div>";

  echo "<hr>";
//----------2nd slider begins------------//
  echo "<h3 class='home-topics'>you shopped</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left2' alt='left'>";
  echo "<div class='gallery' id = 'gallery2'>";
  // getting all the items from mentioned sql
  while ($array_seafood = mysqli_fetch_array($exeSQL_seafood))
  {
    echo "<div class='gallery-item'>";
         echo "<img src =".$array_seafood['seafood_path'].">";
         echo "<p>".$array_seafood['seafood_name']."</p>";
         echo "<p>".$array_seafood['seafood_size']." "." = "." ".$array_seafood['seafood_price']."</p>";
     echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right2' alt='right'>";
  echo "</div>";

  echo "<hr>";
  // ---------- 3rd slider ends-----------//
  echo "<h3 class='home-topics'>the produce department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left3' alt='left'>";
  echo "<div class='gallery' id = 'gallery3'>";
  // getting all the items from mentioned sql
  while ($array_meat = mysqli_fetch_array($exeSQL_meat))
  {
    echo "<div class='gallery-item' onclick='onClick(this)' >";
         echo "<img src =".$array_meat['meat_path'].">";
         echo "<p>".$array_meat['meat_name']."</p>";
         echo "<p>".$array_meat['meat_size']." "." = "." ".$array_meat['meat_price']."</p>";
     echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right3' alt='right'>";
  echo "</div>";

  //The Modal 
echo "<div id='modal' class='modal'>";

  //Modal content 
echo "<div class='modal-content'>";
echo    "<span class='close'>&times;</span>";
echo    "<p>Some text in the Modal..</p>";
echo  "</div>";

echo "</div>";
?>
<!-- adding the js file for three horizontal sliders -->
<script type="text/javascript" src = "index.js"></script>

<?php
include('footer.html');
?>