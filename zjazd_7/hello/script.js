function welcome() {
  var name = document.getElementById('name').value;
  alert("Witaj," + name + "!");
}

window.addEventListener('load', function() {
  var button = document.getElementById('press')
  button.addEventListener('click', welcome)
});
