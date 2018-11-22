// CHAPTER ONE //
alert("You are Ollie, a likeable young guy in search of love. Our story begins when Ollie comes across an attractive young woman on Tinder...");

var swipe_choice = prompt("Will you swipe left or right?: (1)Right (2)Left");

// Write an if/else statement to check which way you swipe - if Right, execute the first alert, otherwise, execute the second with the throw
if (swipe_choice == 1){
  alert("She swiped right, too! It's a match! Now don't screw this up...");
}else if (swipe_choice == 2){
  alert("Hmm, perhaps Ollie's standards are a little high... GAME OVER")
  throw "StandardsTooHighError";
}else{
  alert("What");
  throw "Invalid";
}




// CHAPTER TWO //
alert("She messages you and asks for a date! But she wants you to pick the type of restaurant.")

var food_choice = prompt("What kind of food will you choose?: (1)Italian (2)Curry (3)Pub grub");

// Write an if/else if/else statement to check which food you choose - if it's Italian, execute the first alert, if it's Curry, execute the second with the throw, or if it's Pub grub, execute the third
if(food_choice == 1){
  alert("Ah, molto bella!");

}
else if(food_choice == 2){
  alert("Curry on a first date!? What were you thinking? GAME OVER");
  throw "RiskyFoodError";
}
else if(food_choice == 3){
  alert("Lovely jubbly.");
}else{
  alert("What");
  throw "Invalid";
}



// CHAPTER THREE //
var drunk_guess = prompt("You meet at the restaurant and after an hour, everything seems to be going fine! However, you notice your date might have had a bit much to drink... what do you think? (Enter true or false)");

alert("Whatever you say! Oh no, now she's asking how old you think she is! Maybe she's had too much drink to really notice what you say...")
var age_guess = prompt("What age will you say?");

// Write an if/else statement including the or operator - if your age_guess is under 30 OR your drunk_guess is true, execute the first alert, but if NEITHER of those conditions are met, execute the second with the throw
if(age_guess < 30 || drunk_guess == "true"){
  alert("She smiles and shrugs. 'I'll never tell!' Phew, that was a close one!")
}else{
  alert("Uh, I think you might have miscalculated somewhere... GAME OVER")
  throw "OffensiveError";
}


// CHAPTER FOUR //
alert("The rest of the evening goes wonderfully and soon, the bill arrives. Yikes! £100!?")
var pay_choice = prompt("What will you do?: (1)Say you left your wallet at home. (2)Offer to pay.");
var money_in_wallet = parseInt(prompt("Wait... how much money do you actually have?"));

// Write an if/else statement including the and operator - if your pay_choice is to Offer to pay AND the money_in_wallet is over or equal to 100, execute the first alert, but if EITHER of those conditions isn't met, execute the second with the throw
if (pay_choice == 2 && money_in_wallet >= 100) {
  alert("How very gallant of you! She seems impressed...")
}else {
  alert("Sorry, nobody likes a cheapskate.")
  throw "Don'tBeSoTightError";
}

// CHAPTER FIVE //
alert("The date has gone wonderfully and now it's time to seal the deal with your patented closing line.")
var conversation_choice = prompt("What will you you say?: (1)I'd LOVE to listen to you talk about work. (2)Sure, I'll take your Mum to the airport anytime. (3)I'm really into commitment. (4)Please go out with me. I'm very lonely.");

// Write a switch statement with cases for options 1, 2, 3 and 4 to match each alert and then a default statement for the fifth alert
switch (conversation_choice) {
  case "1":
    alert("That's exactly what she wants to talk about! YOU WIN!");
    break;
  case "2":
    alert("Helping out Mum? Always a good idea! YOU WIN!");
    break;
  case "3":
    alert("Precisely what every woman wants to hear! YOU WIN!");
    break;
  case "4":
    alert("A bit desparate, but it worked! YOU WIN!");
    break;
  default:
    alert("...surprisingly, that seems to have worked. YOU WIN!");

}
