document.addEventListener("DOMContentLoaded", function(){

  var boxes = document.getElementsByTagName("td");
  var turncount = 0;
  var k = 0;
  var xArray = [];
  var oArray = [];
  var win = 0;
  var xWins = 0;
  var oWins = 0;
  
  addPieceListener();
  addResetListener();

  document.getElementById("xWins").innerHTML = xWins;
  document.getElementById("yWins").innerHTML = oWins;


  function addPieceListener(){
    for(box of boxes){
      box.addEventListener("click", addPiece);
    };

  };

  function addResetListener(){
    var resetButton = document.getElementById("reset");
    resetButton.addEventListener("click", resetBoard);
  }

  function addPiece(){

    if (this.innerHTML.length == 0 && win == 0) {
      if(turncount % 2 == 0){
        this.classList.add("X");
        this.innerHTML = "X";
        turncount++;
        document.getElementsByClassName("playerTurn")[0].innerHTML = "It is O's turn";
        xArray.push(this.getAttribute("data-num"));
        if(checkWin(xArray) == 0){
          console.log("X win");
          document.getElementsByClassName("playerTurn")[0].innerHTML = "X WIN";
          win = 1;
          xWins++;
          document.getElementById("xWins").innerHTML = xWins;
        }
      }else{
        this.classList.add("O");
        this.innerHTML = "O";
        turncount++;
        document.getElementsByClassName("playerTurn")[0].innerHTML = "It is X's turn";
        oArray.push(this.getAttribute("data-num"));
        if(checkWin(oArray) == 0){
          console.log("O win");
          document.getElementsByClassName("playerTurn")[0].innerHTML = "O WIN!";
          win = 1;
          oWins++;
          document.getElementById("yWins").innerHTML = oWins;
        }
      };
    };
    if (win == 0 && turncount >=9) {
      document.getElementsByClassName("playerTurn")[0].innerHTML = "Its a Draw";
    }
    if (win == 1) {
      document.getElementById("reset").innerHTML = "Play Again"
    }
  };

  function checkWin(array){
    var winConditions =
    [[0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]];
    var i = 0;
    var prev = null;
    var compare = [];
    if (array.length >= 3) {
      array.sort();
      for(condition of winConditions){
        compare = array.concat(condition);
        console.log(compare);
        compare.sort();
        for (element of compare) {
          if(parseInt(element) == prev){
            i++
            if (i == 3) {
              return 0;
            }
          }
          prev = element;
        }
        prev = null;
        i = 0;
      }

    }

  }

  function resetBoard(){
      for(box of boxes){
        box.classList.remove("X");
        box.classList.remove("O");
        box.innerHTML = "";
        turncount=0;
        document.getElementsByClassName("playerTurn")[0].innerHTML = "It is X's turn";
      }
      xArray = [];
      oArray = [];
      win = 0;
      document.getElementById("reset").innerHTML = "Reset Board"
    };


});
