document.addEventListener("DOMContentLoaded" ,function(){
  // console.log(document.body);


  var buttons = document.getElementsByClassName("myButton");

  for (button of buttons) {
    button.addEventListener("click", function(){
      console.log(this.value + " was clicked");
    });
  };
});
