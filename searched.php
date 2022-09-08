<?php
// $pagename = "Grocery Store";
// echo "<title>".$pagename."</title>";
// echo "<h2>".$pagename."</h2>";
// echo "<hr>Success I can see the PHP page !!!";

session_start();
//including db.php file to connect to db
include ("db.php");
echo "<body>";

//including 'header' file to the page
echo "<div id='include-header'></div>";
include("header.php");
?>

  <link rel="stylesheet" href="index.css">

<?php 

  $user_option = $_POST['store-sections'];
  $search_item = $_POST['search'];

  $sql_produce = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_produce_department";
  $sql_meat = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_meat_department";
  $sql_seafood = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_seafood_department";
  $sql_prepared = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_prepared_department";
  $sql_wine_beer = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_wine_beer_department";
  $sql_health_beauty = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_health_beauty_department";

  //executing those created sql statements and checking the db connection,if it's not connected succesfully it'll show an error message
  $exeSQL_produce = mysqli_query($connection, $sql_produce) or die(mysqli_error($connection));
  $exeSQL_meat = mysqli_query($connection, $sql_meat) or die(mysqli_error($connection));
  $exeSQL_seafood = mysqli_query($connection, $sql_seafood) or die(mysqli_error($connection));
  $exeSQL_prepared = mysqli_query($connection, $sql_prepared) or die(mysqli_error($connection));
  $exeSQL_wine_beer = mysqli_query($connection, $sql_wine_beer) or die(mysqli_error($connection));
  $exeSQL_health_beauty = mysqli_query($connection, $sql_health_beauty) or die(mysqli_error($connection));

  $sql_all_item_names = "select `name` from ".$user_option;

  $exeSQL_option;
  if ($user_option == 'All'){
    $exeSQL_option = "";
  }
  else if($user_option == "The Beer & Wine Department"){
    $exeSQL_option = $exeSQL_wine_beer;
  }
  else if($user_option == "The Produce Department"){
    $exeSQL_option = $exeSQL_produce;
  }
  else if($user_option == "The Meat Department"){
    $exeSQL_option = $exeSQL_meat;
  } 
  else if($user_option == "The Seafood Department"){
    $exeSQL_option = $exeSQL_seafood;
  } 
  else if($user_option == "The Health & Beauty Department"){
    $exeSQL_option = $exeSQL_health_beauty;
  }
  else if($user_option == "The Prepared Food Department"){
    $exeSQL_option = $exeSQL_prepared;
  }

    // ---------- 6th slider begins-----------//
    echo "<h3 class='home-topics'>".$user_option."</h3>";
    echo "<div class = 'gallery-wrapper'>";
    echo "<img src='images/arrow.jpg' class='left' id='left6' alt='left'>";
    echo "<div class='gallery' id='gallery6'>";

    // getting all the items from mentioned sql
  
    while ($array_option = mysqli_fetch_array($exeSQL_option))
    { 
      //dcalring array's needed data to variables
      $item_id = $array_option['id'];
      $item_name = $array_option['name'];
      $item_src = $array_option['path'];
      $item_desc = $array_option['desc'];
      $item_measurement = $array_option['measurement'];
      $item_size = $array_option['size'];
      $item_price = $array_option['price'];
  
      //adding the js onclick function with those declared variable to output those as needed in the modal
      echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
    
           echo "<img class='gallery-item-img' src =".$array_option['path'].">";
           echo "<p class='gallery-item-name'>".$array_option['name']."</p>";
           echo "<p class='gallery-item-size-rice'>".$array_option['size']." "." = "." ".$array_option['price']."</p>";
      echo "</div>";
    }
    echo "</div>";
    // right side arrow of the slider
    echo "<img src='images/arrow.jpg' class='right' id ='right6' alt='right'>";
    echo "</div>";
    // ---------- 6th slider ends-----------//
    echo "</section>";
  
    //------The Modal for item-----------// 
  echo "<div id='modal' class='modal'>";
    //Modal content 
  echo "<div class='modal-content'>";
  echo    "<span class='close'>&times;</span>";
  echo    "<div class='modal-content-left' id = 'modal-content-left'>";
  echo      "<img id='modal-img' src = ''>";
  echo    "</div>";
  echo    "<div class='modal-content-right' id = 'modal-content-right'>";
  echo    "<h2 id = 'modal-item-name'></h2>";
  echo      "<div class = 'modal-description' id = 'modal-description'>";
  echo      "</div>";
  echo      "<div class= 'modal-amount-price' id='modal-amount-price'> </div>";
  echo      "<div class='modal-amount-measurement'>";
  echo        "<p> Amount <input type='number' id='modal-amount' name='modal-amount' class='modal-amount'/> <span id = 'modal-measurement-type'></span> </p>";
  echo      "</div>";
  echo      "<button id='add-cart-btn' class='add-cart-btn' name='add-cart-btn' onclick='onclick_add_to_cart(this)'>Add Cart</button>";
  echo    "</div>";
  echo  "</div>";
  echo "</div>";

  echo $search_item;
?>

<?php 
// ****------ POST method of 'user shopping cart' should be included ----------//
    //alert boxes for errors
    include("alert-modal.php");
?>
<!-- adding the js file for three horizontal sliders -->
<script type="text/JavaScript" src = "index.js"></script>

<!-- including the footer of the website
 <?php
// include('footer.html');
?> --> 