<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Grocery Store</title>
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <header>
    <script type="text/JavaScript" src = "index.js"></script>
    <?php
    // including the db's php file
    include("db.php");

    //-------- navigation bar starts -----------//
    echo "<ul>";
    echo   "<li><a href='index.php'>Home</a></li>";
    echo   "<li><a href='cashier.php'>Cashier</a></li>";
    echo   "<li><a href='aboutus.php'>About Us</a></li>";
    echo   "<div class='float-right'>";
    echo   "<li id='user_signin' onclick='onClick_signin(this)' >Sign In</li>";
    echo   "<li id='shopping-cart' class='shopping-cart' onclick='onclick_shopping_cart(this)'><img src='images/shopping-cart.jpg'></li>";
    echo   "</div>";
    echo "</ul>";
    //-------- navigation bas ends ------------//

    // -------- signin - modal starts ----------//
    echo "<div class='signin-modal' id='signin-modal'>";
    echo  "<div class='signin-modal-content'>";
    echo    "<span class='signin-close'>&times;</span>";
    echo    "<h2>Sign In</h2>";
    echo    "<form method='post' action='index.php'>";
    echo      "<div class='signin-username-block'>";
    echo        "<p>Name</p>";
    echo        "<input type='text' class='signin-username' id='signin-username' name='signin-username'>";
    echo      "</div>";
    echo      "<div class='signin-password-block'>";
    echo        "<p>Password</p>";
    echo        "<input type='password' class='signin-password' id='signin-password' name='signin-password'>";
    echo      "</div>";
    echo     "<input type='submit' name='signin-btn' onclick='signin_btn_modal(this)' value='Sign In' class='signin-btn'>";
    echo    "</form>";   
    echo  "</div>";
    echo "</div>";
    // ---------- siginin - modal ends -----------//
    ?>
  </header>
</body>
</html>