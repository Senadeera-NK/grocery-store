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


//-------------------signin modal------------------------//
//getting the signin modal to a variable
var signin_modal = document.getElementById('signin-modal');

//getting both username, password entering textfields to variables
var signin_username_textfield = document.getElementById('signin-username');
var signin_password_textfield = document.getElementById('signin-password');

//declaring a function to show up the modal when "signin" clicked
function onClick_signin(element) {
  signin_modal.style.display = "block";

   //showing nothing in textfields(removing all before entered values in textfields)
   signin_username_textfield.value = null;
   signin_password_textfield.value = null;

}

//getting the signin(x) to a variable
var signin_close = document.getElementsByClassName('signin-close')[0];


//declaring a function to close the signin modal when (x) clicked
signin_close.onclick = function() {
  //stop displaying the modal
  signin_modal.style.display = "none";

}


//----------------------- signin btn in modal ----------------------------//
function signin_btn_modal(element) {
  console.log('signin btn clicked in modal');

}

// ---------------------- signin (submit) button related ------------------------//
function empty_username(){
  console.log('empty user name');

}
function empty_userpassword(){
  console.log('empty user password');

}
function empty_textfields(){
  console.log('empty textfields');

}
function user_not_exists(){
  console.log('user does not exists');

}
function password_not_matched(){
  console.log('password does not match');

}

//function to invoke when user is signed in successfully
function user_found(name){

  //changing the "sign in" logo and function to signed in function, when mouse hover user name will display as a tooltip
  document.getElementById('user_signin').innerHTML = '<abbr title='+ name +'><img src="images/profile-logo.jpg"></abbr>';

  //TODO
  
  //change the sign_in id to make it's own profile popup modal and stop popping the signin popup modal

  document.getElementById('user_signin').onclick = function(){
    document.getElementById('user_signin').id = 'profile-modal';

  }

  document.getElementById('user_signin').onclick = function(){
    profile.getElementById('profile-modal').style.display = "block";
  }
}
// ----------- item add to cart button function STARTS ---------------//
// ------- getting the amount input for an item to a variable ------//
var item_amount = document.getElementById('modal-amount');
function onclick_add_to_cart(element) {
  if (item_amount.value.length == 0) {
    alert('empty item amount');
  }
  var item_name = document.getElementById('modal-item-name');
  var item_price_all = document.getElementById('modal-amount-price');
  var item_price = "";

   for (var i=8; i <= item_price_all.innerHTML.length - 1; i++){
     item_price += (item_price_all.innerHTML[i]);
   }
   console.log(item_price);
  console.log('item name ='+item_name.innerHTML+", item price = "+item_price+" ,item amount ="+item_amount.value);
}
// ----------- item add to cart button function ENDS ------------//

// ---------------- cart modal functions STARTS ---------------------------//
// -------- getting cart-modal to a variable ------------//
var cart_modal = document.getElementById('cart-modal')

//declaring a function to show up the modal when "shopping cart" clicked
function onclick_shopping_cart(element) {
  cart_modal.style.display = "block";
}



//getting the cart-modal-close(x) to a variable
var cart_modal_close = document.getElementsByClassName('cart-modal-close')[0];
//declaring a function to close the cart-modal when (x) clicked
cart_modal_close.onclick = function() {
  //stop displaying the modal
  cart_modal.style.display = "none";
}
// ---------------- cart modal functions ENDS ---------------------------//





// ----------- close button for modals(x) STARTS -----------------//
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
 else if(event.target == signin_modal) {
    signin_modal.style.display = "none";
  }
 else if(event.target == cart_modal) {
    cart_modal.style.display = "none";
 }
}
// ----------- close button for modals(x) ENDS -----------------//
