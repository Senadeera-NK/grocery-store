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

//-----------The modal for alert boxes-------------------//
echo "<div class='alert-modal' id='alert-modal'>";
echo    "<div class='alert-modal-content' id='alert-modal-content'>";
echo    "<span class='alert-close'>&times;</span>";
echo      "<p class='alert-modal-msg' id='alert-modal-msg'></p>";
echo      "<button class='alert-close-btn' id='alert-close-btn' onclick='onclick_alert_close(this)'> close </button>";
echo    "</div>";
echo "</div>";
    
    ?>
  </header>
</body>
</html>