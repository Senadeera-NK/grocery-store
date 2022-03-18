<?php
// $pagename = "Grocery Store";
// echo "<title>".$pagename."</title>";
// echo "<h2>".$pagename."</h2>";
// echo "<hr>Success I can see the PHP page !!!";
echo "<link rel=stylesheet type=text/css href='index.css'>";
echo "<body>";
include('header.html');

echo "<form>";
echo "<select name='grocery-sections' id='grocery-sections'>";
echo "<option value='all'>All</option>";
echo "<option value='produce'>The produce department</option>";
echo "<option value='meat'>The meat department</option>";
echo "<option value='seafood'>The seafood department</option>";
echo "<option value='beer&wine'>The beer & wine section</option>";
echo "<option value='health&beauty'>The health & beauty department</option>";
echo "<option value='preparedFood'>The deli/prepared foods department</option>";
echo "<option value='frontEnd'>The front end</option>";
echo "</select>";
echo "<input type='text' placeholder='search...'>";
echo "<button type='submit'>search</button>";
echo "</form>";

echo "<div class='row-1'>";
echo "<h2 class='row-title'>recently added</h2>";
echo "</div>";
echo "<div class='row-2'>";
echo "<h2 class='row-title'>the meat departmant</h2>";
echo "</div>";
echo "<div class='row-3'>";
echo "<h2 class='row-title'>you shopped</h2>";
echo "</div>";
include('footer.html');
echo "</body>";
?>