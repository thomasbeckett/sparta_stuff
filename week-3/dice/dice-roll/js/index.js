document.addEventListener("DOMContentLoaded" ,function(){

  var squares = document.getElementsByClassName("innerSquare");
  console.log(squares);

  var num = Math.ceil((Math.random()*6))

  console.log(num);
  console.log(squares);
  switch (num) {
    case 1:
      squares[4].classList.add("dot");
      break;
    case 2:
      squares[2].classList.add("dot");
      squares[6].classList.add("dot");
      break;
    case 3:
      squares[2].classList.add("dot");
      squares[4].classList.add("dot");
      squares[6].classList.add("dot");
      break;
    case 4:
      squares[0].classList.add("dot");
      squares[2].classList.add("dot");
      squares[6].classList.add("dot");
      squares[8].classList.add("dot");
      break;
    case 5:
      squares[0].classList.add("dot");
      squares[2].classList.add("dot");
      squares[4].classList.add("dot");
      squares[6].classList.add("dot");
      squares[8].classList.add("dot");
      break;
    case 6:
      squares[0].classList.add("dot");
      squares[2].classList.add("dot");
      squares[3].classList.add("dot");
      squares[5].classList.add("dot");
      squares[6].classList.add("dot");
      squares[8].classList.add("dot");
      break;
    default:

  }
  var dice = document.getElementById("dice")

  dice.addEventListener("click", function(){
    document.location.reload();
    stopPropagation();
    });


});
