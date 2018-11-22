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
  var reversed = string;

  for (var i = 0; i < string.length; i++) {
    reversed[i] = string[string.length-i];
  }
  return reversed;
}

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out

// 7. Write a function called 'removeOdd' that removes all ODD number from an array

// 8. Write a function called 'removeEven' that removes all EVEN number from an array

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".
