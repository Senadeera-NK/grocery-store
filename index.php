<?php
// $pagename = "Grocery Store";
// echo "<title>".$pagename."</title>";
// echo "<h2>".$pagename."</h2>";
// echo "<hr>Success I can see the PHP page !!!";
echo "<link rel=stylesheet type=text/css href='index.css'>";
echo "<body>";
include('header.html');?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <form action="get">
    <select name="store-sections" id="store-sections">
      <option class = "store-section-option" value="all">All</option>
      <option class = "store-section-option" value="Beer&Wine">The Beer & Wine Department</option>
      <option class = "store-section-option" value="produce">The Produce Department</option>
      <option class = "store-section-option" value="meat">The Meat Department</option>
      <option class = "store-section-option" value="seafood">The Seafood Department</option>
      <option class = "store-section-option" value="healthy&beauty">The Health & Beauty Department</option>
      <option class = "store-section-option" value="prepared">The Deli/Prepared Food Department</option>
    </select>
    <input type="search" name="search" id="search" placeholder="Search...">
    <button type="submit">search</button>
  </form>
</body>
</html>

<?php 
  echo "<h3 class='home-topics'>recently added</h3>";
  echo "<div class='slide-gallery'>";
    echo "<div class='gallery-item'>";
      echo "<div class='gallery-image'>";
        echo "<img src = 'images/potato.jpg'>";
      echo "</div>";
      echo "<div class = 'hidden-item-info'>";
        echo "<p>Potato</p>";
        echo "<p>1kg -> Rs.200.00</p>";
      echo "</div>";
    echo "</div>";
  echo "</div>";
  echo "<hr>";
  echo "<h3 class='home-topics'>you shopped</h3>";
  echo "<hr>";
  echo "<h3 class='home-topics'>the produce department</h3>";
?>
<?php
include('footer.html');
?>