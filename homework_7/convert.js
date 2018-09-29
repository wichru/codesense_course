a = ['1', '10', '100']
b = ['3', '6', 'asdfs']

function covert(n) {
  var result = n.map(function(n){
    return parseInt(n, 10);
  });
  console.log(result)
}
covert(a)
covert(b)
