function enter_nums() {
  var numbers = [];
  var num_string = prompt("Enter your numbers:").split(" ");
  for (i of num_string){
    i = parseInt(i);
    numbers.push(i);
  }
  return numbers
}

// Basic Function
// addition
function addition(numbers) {
  var answer = 0;
  for (number of numbers) {
    answer = answer + number;
  }
  return answer;
}

// subtraction
function subtraction(numbers) {
  var answer = numbers.splice(0,1);
  for (number of numbers) {
    answer = answer - number;
  }
  return answer;
}

// multiplication
function multiplication(numbers) {
  var answer = numbers.splice(0,1);
  for (number of numbers) {
    answer = answer * number;
  }
  return answer;
}

// division
function division(numbers) {
  var answer = numbers.splice(0,1);
  for (number of numbers) {
    answer = answer / number;
  }
  return answer;
}


// Advanced Functions
// powers

// sqrt



// Main
do{

  var option = prompt("Would you like (1)Basic Functions or (2)Advanced Functions>");
  if (option == 1) {
    do {
      var func_choice = prompt("Do you want (A)ddition, (S)ubtraction, (M)ultiplication, or (D)ivision?");
    } while (func_choice.toLowerCase() != "a" && func_choice.toLowerCase() != "s" && func_choice.toLowerCase() != "m" && func_choice.toLowerCase() != "d" );

    var numbers = enter_nums();
    switch (func_choice) {
      case "a":
        var answer = addition(numbers);
        console.log(answer) ;
        break;
      case "s":
        var answer = subtraction(numbers);
        console.log(answer);
        break;
      case "m":
        var answer = multiplication(numbers);
        console.log(answer);
        break;
      case "d":
        var answer = division(numbers);
        console.log(answer);
        break;
      default:

    }




  }else if(option == 2){
    do {
      var func_choice = prompt("Do you want (P)ower or (S)quare Root?");
    } while (func_choice.toLowerCase() != "p" && func_choice.toLowerCase() != "s");

    if (func_choice.toLowerCase() == "p"){
      var numbers = enter_nums();
      var result = Math.pow(numbers[0],numbers[1]);
      console.log(result);
    }
    if (func_choice.toLowerCase() == "s"){
      var numbers = enter_nums();
      var result = Math.sqrt(numbers[0]);
      console.log(result);
    }
  }else{

  }

}while (option != 1 && option != 2)
