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
      echo   "<li id='user_signin' onclick='onClick_signin(this)' >Sign In</a></li>";
      echo "</ul>";

      // signin - modal
      echo "<div class='signin-modal' id='signin-modal'>";
      echo  "<div class='signin-modal-content'>";
      echo    "<span class='signin-close'>&times;</span>";
      echo    "<h2>Sign In</h2>";
      echo    "<div class='signin-username-block'>";
      echo      "<p>Name</p>";
      echo      "<input type='text' class='signin-username' id='signin-username'>";
      echo    "</div>";
      echo    "<div class='signin-password-block'>";
      echo      "<p>Password</p>";
      echo      "<input type='password' class='signin-password' id='signin-password'>";
      echo    "</div>";
      echo    "<button class='signin-btn' id='signin-btn'>Sign In</button>";
      echo  "</div>";
      echo "</div>";
  ?>
  <script type="text/JavaScript" src = "index.js"></script>
  </header>
</body>
</html>