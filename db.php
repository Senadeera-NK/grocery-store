<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpassword = '';
$dbname = 'grocery_store';

//creating a db connection
$connection = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);

//if the db connection fails...
if (!$connection)
{
  //display an error message and exist.
  die ('Could not connect: '.mysqli_connect_error($connection));
}

//else if db connection successfull...
else
{
  //output success message
  echo "successfully connected !";
}

?>