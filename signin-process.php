<!-- adding the js file to call on functions later in PHP -->
<script type="text/JavaScript" src="index.js"></script>


<?php
session_start();

//including the php file of db
include("db.php");

//capturing entered 2 variables in the form using $_POST gloable variable and assigning each of them to different variables
$username = $_POST['signin-username'];
//converting the name to lowercase to insensitive lowercases.
$username = strtolower($username);

$userpassword = $_POST['signin-password'];

if (empty($username && $userpassword)){
  echo "<p>username and userpassword has not been entered !!!</p>";
}


else{

  //SQL query to get the entered user's details if the specified user exists in the table
  $SQL_user = "select user_id, user_name, user_password from users_department where user_name = '$username' && user_password = '$userpassword'";

  if ($result = mysqli_query($connection, $SQL_user)){

    //getting how many no of rows resulted by the SQL query
    $result_rows = mysqli_num_rows($result);

    if ($result_rows == 0){
      echo "<p>no result found !!! </p>";
    }

    else {
      while ($result_array = mysqli_fetch_array($result)){

        if (!($result_array['user_password'] == $userpassword)){

          echo "<p>user's password didnt't match !!!</p>";
        }
        else {
          echo "<p>user found !!!</p>";

          $_SESSION['user_name'] = $result_array['user_name'];
          $_SESSION['user_password'] = $result_array['user_password'];
          $_SESSION['user_id'] = $result_array['user_id'];

          echo "<p>user ID:".$_SESSION['user_id']."</p>";
          echo '<script type="text/JavaScript">php_checking();</script>';

        }
      }
    }
  }
  else {
    echo "<p>connection failed !!!</p>";
  }
}
?>

