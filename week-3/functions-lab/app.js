// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply (num1,num2) {
  return num1 * num2;
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result

function addThree(num1, num2, num3){
  return num1 + num2 + num3;
}

// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers

function smallestNumber(num1, num2){
  if(num1>num2){
    return num2;
  }else{
    return num1;
  }
}
// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers

function maxOfThree(num1, num2, num3){
  if(num1>num2 && num1>num3){
    return num1;
  }
  else if (num1<num2 && num2>num3) {
    return num2;
  }else{return num3;}

}

// 5. Write a function called 'reverseString' that returns the reverse a string

function reverseString(string){
  var reversed = "";

  for (var i = string.length-1; i >=0; i--) {
    reversed += string[i]
  }
  return reversed;
}

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out

function disemvowel(string){
  var vowels = ["a", "e", "i", "o", "u"];
  for (var i = 0; i < vowels.length+1; i++) {
    string = string.replace(vowels[i],"");
  }
  return string;
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array

function removeOdd(num) {
  for (var i = num.length; i >= 0; i--) {
    if(num[i] % 2 != 0){
      num.splice(i,1);
    }
  }
  return num;
}

// 8. Write a function called 'removeEven' that removes all EVEN number from an array

function removeEven(num) {
  for (var i = num.length; i >= 0; i--) {
    if(num[i] % 2 == 0){
      num.splice(i,1);
    }
  }
  return num;
}

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length

function longestString(strings){
  var longest;
  for (var i = 0; i < strings.length; i++) {
    for (var j = 0; j < strings.length; j++) {
      if(strings[i].length>strings[j].length){
        longest = strings[i];
      }
    }
  }
  return longest;
}

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

function allElementsExceptFirstThree(array) {
  array.splice(0,3);
  return array;
}

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

function convertArrayToAnObject(array) {
  obj = {};
  for (var i = 0; i < array.length; i+=2) {
    obj[array[i]] = array[i+1];
  }
  return obj;
}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".

export function fizzBuzz(num) {
  // if (num % 3 == 0){
  //   if (num % 5 == 0){
  //     return "FizzBuzz";
  //   }else{
  //     return "Fizz";
  //   }
  // }
  // else if (num % 5 == 0){
  //   return "Buzz";
  // }
  // else{
  //   return num;
  // }

  switch (0) {
    case (num % 5) + (num % 3):
      return "FizzBuzz";
    case num % 3:
      return "Fizz";
    case num % 5:
      return "Buzz";
      break;
    default:
      return num;

  }
}

export {fizzBuzz}
