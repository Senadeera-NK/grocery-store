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
    echo    "<form method='post' action='index.php'>";
    echo      "<div class='signin-username-block'>";
    echo        "<p>Name</p>";
    echo        "<input type='text' class='signin-username' id='signin-username' name='signin-username'>";
    echo      "</div>";
    echo      "<div class='signin-password-block'>";
    echo        "<p>Password</p>";
    echo        "<input type='password' class='signin-password' id='signin-password' name='signin-password'>";
    echo      "</div>";
    echo     "<input type='submit' name='signin-btn' value='Sign In' class='signin-btn'>";
    echo    "</form>";   
    echo  "</div>";
    echo "</div>";
    
    // //function to invoke if the signin button has clicked
    // if (array_key_exists('signin-btn', $_POST)){

    //   //getting textfields' user enter value using global variable 'POST', local variables
    //   $username = $_POST['signin-username'];
    //   $userpassword = $_POST['signin-password'];

    //   //invoking a js function if the username field is empty
    //   if (empty($username)){
    //     echo '<script type="text/JavaScript">empty_username();</script>';
    //   }
    //   //invoking a js function if the password field is empty
    //   else if(empty($userpassword)){
    //     echo '<script type="text/JavaScript">empty_userpassword();</script>';
    //   }
    //   //invoking a js function if both fields are empty
    //   else if(empty($username && $userpassword)){
    //     echo '<script type="text/JavaScript">empty_textfields();</script>';
    //   }
    //   //if all fields are filled invoking several function as suitable
    //   else{
    //     //SQL statement to retrieve entered user's needed informations
    //     $SQL_user = "select user_id, user_name, user_password from users_department where user_name = '$username' && user_password = '$userpassword'";

    //     //if the db has successfully invoked and SQL statement has been successfully executed..
    //     if($result = mysqli_query($connection, $SQL_user)) {

    //       //getting the no of rows that retreived after the execution
    //       $result_rows = mysqli_num_rows($result);

    //       //if there are no rows has been retreived, means that user doesnt exist in table
    //       if ($result_rows == 0){
    //         echo '<script type="text/JavaScript">user_not_exists();</script>';
    //       }
    //       //if rows exists
    //       else{
    //         //fetching the SQL's retrievedd data to an array
    //         while($result_array = mysqli_fetch_array($result)){
    //           //if the retrieved password does not match
    //           if(!($result_array['user_password'] == $userpassword)){
    //             echo '<script type="text/JavaScript">password_not_matched();</script>';
    //           }
    //           //if all data matched
    //           else{
    //             //getting those arrays needed data to SESSION array
    //             // echo '<script type="text/JavaScript">user_found();</script>';
    //             $_SESSION['user_id'] = $result_array['user_id'];
    //             $_SESSION['user_name'] = $result_array['user_name'];
    //             $_SESSION['user_password'] = $result_array['user_password'];
    //           }
    //         }
    //       }
    //     }
    //   }     
    // }
    ?>
  </header>
</body>
</html>