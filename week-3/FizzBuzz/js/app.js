// FizzBuzz function
import { fizzBuzz } from "../../functions-lab/app.js";

// function FizzBuzz(number) {
//   switch (0) {
//     case (number % 5) + (number % 3):
//     return "FizzBuzz";
//     case number % 3:
//     return "Fizz";
//     case number % 5:
//     return "Buzz";
//     break;
//     default:
//     return number;
//   }
// }

function rangeLoop(min,max) {
  for (i = min; i <= max; i++) {
    console.log(fizzBuzz(i));
  }
}

// Accept range of values
var min = parseInt(prompt("Enter the starting number:"));
var max = parseInt(prompt("Enter the end number:"));

var range1 = rangeLoop(min,max);
