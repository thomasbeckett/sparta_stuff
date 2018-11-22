//Functions
function compare(wep1,wep2) {
  wep = wep1 + wep2;
  switch (wep) {
    case "rr":
      return 0;
    case "rp":

      return 2;
    case "rs":

      return 1;
    case "pr":

      return 2;
    case "pp":

      return 0;
    case "ps":

      return 2;
    case "sr":

      return 2;
    case "sp":

      return 1;
    case "ss":

      return 0;
    default:
      return 0;
  }
}

function randomCPU() {
  weapons = ["r","p","s"];
  wep = weapons[(Math.floor(Math.random()*3))];
  console.log(wep);
  return wep;
}

while(true){
  user_points = 0;
  cpu_points = 0;
// While user_points < 3 and cpu_points < 3
  while (user_points < 3 && cpu_points < 3) {

  // Choose weapon
    var user_weapon = prompt("Enter (R)ock, (P)aper, or (S)cissors")

    var cpu_weapon = randomCPU();
    // Compare choices
    if (compare(user_weapon,cpu_weapon) == 1){
      alert("User wins");
      user_points += 1;
    }else if (compare(user_weapon,cpu_weapon) == 2){
      alert("CPU wins");
      cpu_points += 1;
    }else{
      alert("Draw");
    }
    //another game?
    }
    if(user_points == 3){
      alert("You won!");
    }else{
      alert("You lost!");
    }

    if (prompt("Play again? (yes)/(no)") == "no"){
      break;
    }

}
