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
  <footer>
    <script type="text/JavaScript" src = "index.js"></script>
    <?php
    // including the db's php file
    include("db.php");

    //-------- footer navigation bar starts -----------//
    echo "<ul>";
    echo   "<li><a href='index.php'>Home</a></li>";
    echo   "<li><a href='cashier.php'>Cashier</a></li>";
    echo   "<li><a href='aboutus.php'>About Us</a></li>";
    echo "</ul>";
    //-------- footer navigation bas ends ------------//

    //-------- footer social media & footer desc bar starts -----------//
    echo "<ul>";
    echo    "<li><a href='http://twitter.com'><img src='images/twitter.png'></a></li>";
    echo    "<li><a href='http://facebook.com'><img src='images/facebook.png'></a></li>";
    echo    "<li><a href='http://instagram.com'><img src='images/instagram.png'></a></li>";
    echo    "<li><a href='http://linkedin.com'><img src='images/linkedin.png'></a></li>";
    echo "</ul>";
    echo "<h5>&copy; 2013-2022 WPEngine. Inc. All rights reserved.</h5>";
    echo "<h5>WP ENGINE&reg;, VELOCITIZE&reg;, TORQUE&reg;, EVERCACHE&reg;, and the cog logo service marks are owned by WPEngine. Inc.</h5>";
    //-------- footer social media & footer desc bar ends -----------//
    ?>
  </footer>
</body>
</html>