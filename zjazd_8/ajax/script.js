window.addEventListener('load', function() {
  rootElement = document.getElementById("ipsum");
   var request = new XMLHttpRequest();
  request.open("GET", "https://baconipsum.com/api/?type=meat-and-filler");
  request.responseType = 'json';
   request.addEventListener('load', function() {
    for(var i=0; i<this.response.length; i++) {
      var element = document.createElement("P");
      element.innerText = this.response[i];
       rootElement.appendChild(element);
    }
  });
   request.addEventListener('error', function() {
    var element = document.createElement("P");
    element.innerText = "Żądanie nie powiodło się!"
     rootElement.appendChild(element);
  });
   request.send();
});
