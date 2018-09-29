window.addEventListener('load', function(){
  var elements = document.getElementsByClassName('blue');
  var activeElement = null;

  for (var i = 0; i < elements.length; i++) {
    elements[i].addEventListener('click', function(e) {
      if(activeElement != null) {
        activeElement.classList.remove('active')
      }

      if(event.target != activeElement) {
        event.target.classList.add('active');
        activeElement = event.target;
      } else {
        activeElement = null;
      }

      e.target.classList('active')
      activeElement = e.target
    })
  }
});
