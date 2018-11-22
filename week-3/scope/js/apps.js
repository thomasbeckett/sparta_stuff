// var outsideVar = "I'm outside"
//
// doSomething()
//
// function anotherThing() {
//   var insideVar = "Im inside";
// }
//
// function doSomething() {
//   console.log(outsideVar);
//   console.log(insideVar);
// }

//firstFunction();
// secondFunction();
//
// function firstFunction() {
//   console.log("I am number 1");
// }
//
// function secondFunction() {
//   firstFunction();
//   console.log("2nd best");
// }

joinStrings("hello, ","world")

function joinStrings(string1,string2) {
  var combined_string = string1 + string2;

  function printString(string){
    console.log(string);
  }
  printString(combined_string);
}
