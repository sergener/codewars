//UNFINISHED

var getDouble = function (n) {
    return n + n;
};


var createIterator = function (func, n) { 
  var soln;
  for (i = 0; i < n; i++){
    	soln = func(soln)
    };
  return soln;
};

var doubleIterator = createIterator(getDouble, 1);

console.log(doubleIterator(3))

