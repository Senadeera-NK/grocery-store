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

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- adding bootstrap js doc -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->

  <!-- adding bootstrap css doc -->
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> --> 

  <!-- adding the src file -->
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <form method="post" action="searched.php">
    <select name="store-sections" id="store-sections">
      <option class="store-section-option" selected disabled>select a department</option>
      <option class = "store-section-option" value="All">All</option>
      <option class = "store-section-option" value="The Beer & Wine Department">The Beer & Wine Department</option>
      <option class = "store-section-option" value="The Produce Department">The Produce Department</option>
      <option class = "store-section-option" value="The Meat Department">The Meat Department</option>
      <option class = "store-section-option" value="The Seafood Department">The Seafood Department</option>
      <option class = "store-section-option" value="The Health & Beauty Department">The Health & Beauty Department</option>
      <option class = "store-section-option" value="The Prepared Food Department">The Prepared Food Department</option>
    </select>
    <input type="search" name="search" id="search" placeholder="Search...">
    <input type="submit" name="search-btn" onclick="searched_modal(this)" value="search">
  </form>
</body>
</html>

<?php 

echo "<section class='searched-main-section' id='searched-main-section'>";
 include("searched.php");  
echo "</section>";

 echo "<section class='main-section' id='main-section'>";
//creating sql variables and populating those with  sql statements to retrieve necessary data from the relevant db tables
  $sql_produce = "select `id`, `type`, `name`, `size`, `price`, `path`, `desc`, `measurement` from the_produce_department;";
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
  
  echo "<h3 class='home-topics'>the produce department</h3>";

  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id = 'left1' alt='left'>";
  echo "<div class='gallery' id = 'gallery1'>";
  // getting all the items from mentioned sql

  while ($array_produce = mysqli_fetch_array($exeSQL_produce))
  { 
    //dcalring array's needed data to variables
    $item_id = $array_produce['id'];
    $item_name = $array_produce['name'];
    $item_src = $array_produce['path'];
    $item_desc = $array_produce['desc'];
    $item_measurement = $array_produce['measurement'];
    $item_size = $array_produce['size'];
    $item_price = $array_produce['price'];

    //adding the js onclick function with those declared variable to output those as needed in the modal
    echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
  
         echo "<img class='gallery-item-img' src =".$array_produce['path'].">";
         echo "<p class='gallery-item-name'>".$array_produce['name']."</p>";
         echo "<p class='gallery-item-size-rice'>".$array_produce['size']." "." = "." ".$array_produce['price']."</p>";
    echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id='right1' alt='right'>";
  echo "</div>";

  echo "<hr>";
//----------2nd slider begins------------//
  echo "<h3 class='home-topics'>the prepared department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left2' alt='left'>";
  echo "<div class='gallery' id = 'gallery2'>";
  // getting all the items from mentioned sql
 // getting all the items from mentioned sql

 while ($array_prepared = mysqli_fetch_array($exeSQL_prepared))
 { 
   //dcalring array's needed data to variables
   $item_id = $array_prepared['id'];
   $item_name = $array_prepared['name'];
   $item_src = $array_prepared['path'];
   $item_desc = $array_prepared['desc'];
   $item_measurement = $array_prepared['measurement'];
   $item_size = $array_prepared['size'];
   $item_price = $array_prepared['price'];

   //adding the js onclick function with those declared variable to output those as needed in the modal
   echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
 
        echo "<img class='gallery-item-img' src =".$array_prepared['path'].">";
        echo "<p class='gallery-item-name'>".$array_prepared['name']."</p>";
        echo "<p class='gallery-item-size-rice'>".$array_prepared['size']." "." = "." ".$array_prepared['price']."</p>";
   echo "</div>";
 }
 echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right2' alt='right'>";
  echo "</div>";

  echo "<hr>";
  // ---------- 3rd slider begins-----------//
  echo "<h3 class='home-topics'>the meat department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left3' alt='left'>";
  echo "<div class='gallery' id = 'gallery3'>";
  // getting all the items from mentioned sql

  while ($array_meat = mysqli_fetch_array($exeSQL_meat))
  { 
    //dcalring array's needed data to variables
    $item_id = $array_meat['id'];
    $item_name = $array_meat['name'];
    $item_src = $array_meat['path'];
    $item_desc = $array_meat['desc'];
    $item_measurement = $array_meat['measurement'];
    $item_size = $array_meat['size'];
    $item_price = $array_meat['price'];

    //adding the js onclick function with those declared variable to output those as needed in the modal
    echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
  
         echo "<img class='gallery-item-img' src =".$array_meat['path'].">";
         echo "<p class='gallery-item-name'>".$array_meat['name']."</p>";
         echo "<p class='gallery-item-size-rice'>".$array_meat['size']." "." = "." ".$array_meat['price']."</p>";
    echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right3' alt='right'>";
  echo "</div>";

  echo "<hr>";
  // ---------- 4th slider begins-----------//
  echo "<h3 class='home-topics'>the seafood department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left4' alt='left'>";
  echo "<div class='gallery' id='gallery4'>";
  // getting all the items from mentioned sql

  while ($array_seafood = mysqli_fetch_array($exeSQL_seafood))
  { 
    //dcalring array's needed data to variables
    $item_id = $array_seafood['id'];
    $item_name = $array_seafood['name'];
    $item_src = $array_seafood['path'];
    $item_desc = $array_seafood['desc'];
    $item_measurement = $array_seafood['measurement'];
    $item_size = $array_seafood['size'];
    $item_price = $array_seafood['price'];

    //adding the js onclick function with those declared variable to output those as needed in the modal
    echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
  
         echo "<img class='gallery-item-img' src =".$array_seafood['path'].">";
         echo "<p class='gallery-item-name'>".$array_seafood['name']."</p>";
         echo "<p class='gallery-item-size-rice'>".$array_seafood['size']." "." = "." ".$array_seafood['price']."</p>";
    echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right4' alt='right'>";
  echo "</div>";
  // ---------- 4th slider ends-----------//
  echo "<hr>";
  // ---------- 5th slider begins-----------//
  echo "<h3 class='home-topics'>the wine beer department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left5' alt='left'>";
  echo "<div class='gallery' id='gallery5'>";
  // getting all the items from mentioned sql

  while ($array_wine_beer = mysqli_fetch_array($exeSQL_wine_beer))
  { 
    //dcalring array's needed data to variables
    $item_id = $array_wine_beer['id'];
    $item_name = $array_wine_beer['name'];
    $item_src = $array_wine_beer['path'];
    $item_desc = $array_wine_beer['desc'];
    $item_measurement = $array_wine_beer['measurement'];
    $item_size = $array_wine_beer['size'];
    $item_price = $array_wine_beer['price'];

    //adding the js onclick function with those declared variable to output those as needed in the modal
    echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
  
         echo "<img class='gallery-item-img' src =".$array_wine_beer['path'].">";
         echo "<p class='gallery-item-name'>".$array_wine_beer['name']."</p>";
         echo "<p class='gallery-item-size-rice'>".$array_wine_beer['size']." "." = "." ".$array_wine_beer['price']."</p>";
    echo "</div>";
  }
  echo "</div>";
  // right side arrow of the slider
  echo "<img src='images/arrow.jpg' class='right' id ='right5' alt='right'>";
  echo "</div>";
  // ---------- 5th slider ends-----------//
  echo "<hr>";
  // ---------- 6th slider begins-----------//
  echo "<h3 class='home-topics'>the health & beauty department</h3>";
  echo "<div class = 'gallery-wrapper'>";
  echo "<img src='images/arrow.jpg' class='left' id='left6' alt='left'>";
  echo "<div class='gallery' id='gallery6'>";
  // getting all the items from mentioned sql

  while ($array_health_beauty = mysqli_fetch_array($exeSQL_health_beauty))
  { 
    //dcalring array's needed data to variables
    $item_id = $array_health_beauty['id'];
    $item_name = $array_health_beauty['name'];
    $item_src = $array_health_beauty['path'];
    $item_desc = $array_health_beauty['desc'];
    $item_measurement = $array_health_beauty['measurement'];
    $item_size = $array_health_beauty['size'];
    $item_price = $array_health_beauty['price'];

    //adding the js onclick function with those declared variable to output those as needed in the modal
    echo "<div class='gallery-item' onclick='onClick(this, \"$item_src\", \"$item_name\", \"$item_desc\", \"$item_size\", \"$item_price\", \"$item_measurement\")' >";
  
         echo "<img class='gallery-item-img' src =".$array_health_beauty['path'].">";
         echo "<p class='gallery-item-name'>".$array_health_beauty['name']."</p>";
         echo "<p class='gallery-item-size-rice'>".$array_health_beauty['size']." "." = "." ".$array_health_beauty['price']."</p>";
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

    //----------DEVELOPING = The modal for profile ----------//
echo "<div class='profile-modal' id='profile-modal'>";
echo  "<div class='profile-modal-content' id='profile-modal-content'>";
echo   "<section class='profile-info' id='profile-info'>";
echo     "<img src='images/profile-logo.jpg'>";
echo     "<p>name</p>";
echo     "<p>Email</p>";
echo   "</section>";
echo   "<ul class='profile-list' id='profile-list'>";
echo    "<li>Change Password</li>";
echo    "<li>Change Profile</li>";
echo    "<li>Settings</li>";
echo   "</ul>";
echo   "<input type='button' value='Sign Out'>";
echo  "</div>";
echo "</div>";

//-----------The modal for cart-------------------//
echo "<div class='cart-modal' id='cart-modal'>";
echo    "<div class='cart-modal-content' id='cart-modal-content'>";
echo      "<ul class='cart-items-block' id='cart-items-block'>";

echo        "<li class='cart-item-block' id='cart-item-block'>";
echo          "<ul class='cart-item-info'>";
echo            "<li><img src='images/the_produce_department/vegetables/cucumbers.jpg' class='cart-item-img' id='cart-item-img'></li>";
echo          "<li class='cart-item-name'>cucumbers</li>";
echo          "<li class='cart-item-quantity'>9 <span class='item-amount-measurement'>kg</span></li>";
echo          "<li class='cart-item-price'>Rs.100.00</li>";
echo          "<li><img src='images/trash-bin.png' class='cart-item-remove-img' id='cart-item-remove-img'></li>";
echo          "</ul>";
echo        "</li>";

echo        "<li class='cart-item-block' id='cart-item-block'>";
echo          "<ul class='cart-item-info'>";
echo            "<li><img src='images/the_produce_department/vegetables/cucumbers.jpg' class='cart-item-img' id='cart-item-img'></li>";
echo          "<li class='cart-item-name'>cucumbers</li>";
echo          "<li class='cart-item-quantity'>9 <span class='item-amount-measurement'>kg</span></li>";
echo          "<li class='cart-item-price'>Rs.100.00</li>";
echo          "<li><img src='images/trash-bin.png' class='cart-item-remove-img' id='cart-item-remove-img'></li>";
echo          "</ul>";
echo        "</li>";

echo      "</ul>";
echo    "</div>";
echo "</div>";

//---------- alert box ---------//
echo "<div class='alert-modal' id='alert-modal'>";
echo    "<div class='alert-modal-content' id='alert-modal-content'>";
echo    "<span class='alert-close'>&times;</span>";
echo      "<p class='alert-modal-msg' id='alert-modal-msg'></p>";
echo      "<button class='alert-close-btn' id='alert-close-btn' onclick='onclick_alert_close(this)'> close </button>";
echo    "</div>";
echo "</div>";

//header.php file functions, which related to form should include in here or else, only the header file loading without index.php main file
    //function to invoke if the signin button has clicked
    if (array_key_exists('signin-btn', $_POST)){

      //getting textfields' user enter value using global variable 'POST', local variables
      $username = $_POST['signin-username'];
      $userpassword = $_POST['signin-password'];

      //invoking a js function if the username field is empty
      if (empty($username)){
        echo '<script type="text/JavaScript">empty_username();</script>';
      }
      //invoking a js function if the password field is empty
      else if(empty($userpassword)){
        echo '<script type="text/JavaScript">empty_userpassword();</script>';
      }
      //invoking a js function if both fields are empty
      else if(empty($username && $userpassword)){
        echo '<script type="text/JavaScript">empty_textfields();</script>';
      }
      //if all fields are filled invoking several function as suitable
      else{
        //SQL statement to retrieve entered user's needed informations
        $SQL_user = "select user_id, user_name, user_password from users_department where user_name = '$username' && user_password = '$userpassword'";

        //if the db has successfully invoked and SQL statement has been successfully executed..
        if($result = mysqli_query($connection, $SQL_user)) {

          //getting the no of rows that retreived after the execution
          $result_rows = mysqli_num_rows($result);

          //if there are no rows has been retreived, means that user doesnt exist in table
          if ($result_rows == 0){
            echo '<script type="text/JavaScript">user_not_exists();</script>';
          }
          //if rows exists
          else{
            //fetching the SQL's retrievedd data to an array
            while($result_array = mysqli_fetch_array($result)){
              //if the retrieved password does not match
              if(!($result_array['user_password'] == $userpassword)){
                echo '<script type="text/JavaScript">password_not_matched();</script>';
              }
              //if all data matched
              else{
                //getting those arrays needed data to SESSION array
                $_SESSION['user_id'] = $result_array['user_id'];
                $_SESSION['user_name'] = $result_array['user_name'];
                $_SESSION['user_password'] = $result_array['user_password'];

                //declaring new variables to the sessions's array items
                $user_id = $_SESSION['user_id'];
                $user_name = $_SESSION['user_name'];
                $user_password = $_SESSION['user_password'];

                //invoking the function that related to successfully signed in
                echo "<script type='text/JavaScript'>user_found('$user_name');</script>";
              }
            }
          }
        }
      }     
    }

// ****------ POST method of 'user shopping cart' should be included ----------//
    //alert boxes for errors
    include("alert-modal.php");

?>
<!-- adding the js file for three horizontal sliders -->
<script type="text/JavaScript" src = "index.js"></script>

<!-- including the footer of the website -->
<?php
include('footer.php');
?>