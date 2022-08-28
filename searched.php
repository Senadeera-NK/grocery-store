<?php
// session_start();
//including db.php file to connect to db
include ("db.php");
?>
<!-- adding css -->
<link rel="stylesheet" href="index.css" type="text/css">

<!-- searched results -->
<?php 
  echo $result = $_GET['search'];
  echo $result;
?>

<!-- adding the js file for three horizontal sliders -->
<script type="text/JavaScript" src = "index.js"></script>
