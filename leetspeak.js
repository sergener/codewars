function toLeetSpeak(str) {
  for (var i in leetAlphabet) {
    var regex = new RegExp(i, 'g');
    str = str.replace(regex, alphabet[i]);
  }
  return str;
}

var leetAlphabet = {
  A : '@',
  B : '8',
  C : '(',
  D : 'D',
  E : '3',
  G : '6',
  H : '#',
  I : '!',
  L : '1',
  O : '0',
  S : '$',
  T : '7',
  Z : '2'
}

// function toLeetSpeak(str) {
//   var strArr = str.split("");
//   var str = [];
//   for (var i = 0; i < strArr.length; i++) {
//   	if (strArr[i] == " ") {
//   		str.push(strArr[i])
//   	}
//   	else
//     	{var letter = strArr[i];
//     	str.push(leetAlphabet[letter])
//     };
//   };
//   return str.join("");
// }


// var leetAlphabet = {
//   A : '@',
//   B : '8',
//   C : '(',
//   D : 'D',
//   E : '3',
//   F : 'F',
//   G : '6',
//   H : '#',
//   I : '!',
//   J : 'J',
//   K : 'K',
//   L : '1',
//   M : 'M',
//   N : 'N',
//   O : '0',
//   P : 'P',
//   Q : 'Q',
//   R : 'R',
//   S : '$',
//   T : '7',
//   U : 'U',
//   V : 'V',
//   W : 'W',
//   X : 'X',
//   Y : 'Y',
//   Z : '2'
// }

console.log(toLeetSpeak("HELLO WORLD"))