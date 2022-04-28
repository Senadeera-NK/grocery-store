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
      // including the db's php file
      include("db.php");

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
      echo    "<form method='post' action='signin-process.php'>";
      echo      "<div class='signin-username-block'>";
      echo        "<p>Name</p>";
      echo        "<input type='text' class='signin-username' id='signin-username' name='signin-username'>";
      echo      "</div>";
      echo      "<div class='signin-password-block'>";
      echo        "<p>Password</p>";
      echo        "<input type='password' class='signin-password' id='signin-password' name='signin-password'>";
      echo      "</div>";
      echo     "<button onclick='clickme()'>Sign In</button>";
      echo    "</form>";   
      echo  "</div>";
      echo "</div>";

    //   if(isset($_GET['signin-username']) && isset($_GET['signin-password']))
    //   {
    //     $userpassword = $_GET['signin-password'];
    //     $username = $_GET['signin-username'];
    //     echo "<script>console.log('weeeeeee');</script>";
    //   }

    //  //getting the db connection variable to a declared variable called connection in this page
    //   $connection = $connection;
    //   function check_user_in_table($connection, $user_name, $user_password){
    //     $sql_user = "select user_id, user_name, user_password from users_department";
    //     $exeSQL_user = mysqli_query($connection, $sql_user) or die(mysqli_error($connection));

    //     while($array_user = mysqli_fetch_array($exeSQL_user)){
    //         if ($array_user['user_name'] == $user_name && $array_user['user_password'] == $user_password){
    //             echo "USER IS SIGNED IN";
    //         }
    //     }
    //     echo "USER DOES NOT EXIST IN TABLE";
    //   }
      
  ?>
  <script type="text/JavaScript" src = "index.js"></script>
  </header>
</body>
</html>