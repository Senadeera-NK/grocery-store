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
  <!-- <form method="get" action="searched.php">
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
    <input type="submit" name="search-btn" onclick="searched_modal(this)" value="search">
  </form> -->
</body>
</html>

<?php 

echo $result = $_GET['search'];
if ($result == ""){
  
}


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
