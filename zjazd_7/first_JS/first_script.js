window.addEventListener('load', function() {
  var welcome_tag = document.getElementById("welcome");
  welcome_tag.innerText = "Witaj Grzesiek!";
   var hello_button = document.getElementById("hello_button");
  hello_button.addEventListener('click', function() {
    alert("Witaj");
  });
});
