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
    <?php
      echo "<ul>";
      echo   "<li><a href=''>Home</a></li>";
      echo   "<li><a href=''>Cashier</a></li>";
      echo   "<li><a href=''>About Us</a></li>";
      echo   "<li id='user_login' onclick='onClick_signin(this)' >Sign In</a></li>";
      echo "</ul>";

      //------------the model for signin----------//
      echo "<div id='signin-modal' class='signin-modal'>";
      echo  "<div class='modal-content'>";
      echo   "<span class='signin-close'>&times;</span>";
      echo    "<h2>Sign In</h2>";
      echo    "<p>Name</p>";
      echo    "<input type='text' id='userName'>";
      echo    "<p>Email</p>";
      echo    "<input type='text' id='userEmail'>";
      echo    "<button id='signin-btn' class='signin-btn'>Sign In</button>";
      echo  "</div>";
      echo "</div>";
  ?>
  <script type="text/JavaScript" src = "index.js"></script>
  </header>
</body>
</html>