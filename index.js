// ------------ the js for three horizontal sliders in index.php ------------ //
//getting the right buttons ID to a variable in first gallery
var rightbtn1 = document.getElementById('right1');
rightbtn1.onclick = function () {
  var container = document.getElementById('gallery1');
  //adding the function to the button
  sideScroll(container, 'right', 25, 200, 10);
  };

//getting the left button's ID to a variable in fisrt gallery  
var leftbtn1 = document.getElementById('left1');
leftbtn1.onclick = function () {
  var container = document.getElementById('gallery1');
  //adding the function to the button
  sideScroll(container, 'left', 25, 200, 10);
};

//getting the right button's ID to a varaible in second gallery
var rightbtn2 = document.getElementById('right2');
rightbtn2.onclick = function () {
  var container = document.getElementById('gallery2');
  //adding the function to the button
  sideScroll(container, 'right', 25, 200, 10);
};

//getting the left button's ID to a variable in second gallery
var leftbtn2 = document.getElementById('left2');
leftbtn2.onclick = function () {
  var container = document.getElementById('gallery2');
  //adding the function to the button
  sideScroll(container, 'left', 25, 200, 10);
};

//getting the right button's ID to a variable in third gallery
var rightbtn3 = document.getElementById('right3');
rightbtn3.onclick = function () {
  var container = document.getElementById('gallery3');
  //adding the function to the button
  sideScroll(container, 'right', 25, 200, 10);
};

//getting the left button's ID to a variable in third gallery
var leftbtn3 = document.getElementById('left3');
leftbtn3.onclick = function () {
  var container = document.getElementById('gallery3');
  //adding the function to the button
  sideScroll(container, 'left', 25, 200, 10);
};

//the main function to slide the gallery to left or right
function sideScroll(element, direction, speed, distance, step){
  scrollAmount = 0;
  var slideTimer = setInterval(function(){
    if (direction == 'left'){
      element.scrollLeft -= step;
    }
    else {
      element.scrollLeft += step;
    }
    scrollAmount += step;
    if(scrollAmount >= distance){
      window.clearInterval(slideTimer);
    }
  }, speed);
}

// ------------------- js file for the modal in index.php ------------- // 
// Get the modal
var modal = document.getElementById('modal');

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];


//function to getting the element which is clicked by the user
function onClick(element, src, name, desc, size, price, measurement) {
  //when user clicked making the modal visible
  modal.style.display = "block";

  //filling all the infos of the item in the modal//
  document.getElementById("modal-img").src = src;
  document.getElementById("modal-item-name").innerText = name;
  document.getElementById("modal-description").innerText = desc;
  document.getElementById('modal-amount-price').innerText = size+ " = "+ price;
  document.getElementById('modal-measurement-type').innerText = measurement;
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}


//---------function of the signin modal----------//
var signin_modal = document.getElementById('signin-modal');
function onClick_signin(element) {
  signin_modal.style.display = "block";
}

var signin_close = document.getElementsByClassName('signin-close')[0];
signin_close.onclick = function() {
  signin_modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

