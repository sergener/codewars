function countWords(str) {
	  var strChars = str.replace(/[^\w+^'-\s]/g, "");
	  var strLead = strChars.replace(/^\s+|\s+$/g, "");
	  var strSpace = strLead.replace(/[\s\n\r]+/g, ",");
	  if(strSpace === "")
	  	return 0
	  else
	  	return strSpace.split(",").length
}

console.log(countWords("Dear   Victoria, I love'''  to press %%%  space butt'on!!!/."))
console.log(countWords("Hello, World!"))
console.log(countWords(" Arthur "))
console.log(countWords("!!!"))



// function countWords(str) {
//   return (str.match(/[^\s]+/g) || []).length;
// }
