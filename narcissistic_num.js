function narcissistic (value) {
	var soln = 0;
	var digits = value.toString().split("");
	for(i = 0; i < digits.length; i++) {
		soln += Math.pow(parseFloat(digits[i], 10), digits.length);
	};
	if (soln == value)
		return true
	else
		return false;
}

console.log (narcissistic (153))