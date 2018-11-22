function addListItem(item){
  var newli = document.createElement("li");
  newli.innerHTML = item;
  document.getElementById("list").appendChild(newli);
}

function countListItems() {
  var lis = document.getElementsByTagName("li");
  document.getElementById("count").innerHTML = lis.length;
}

function formText() {
  var text = document.getElementById("new_item").innerHTML;
}
//
// for (var j = 0; j < new_item.length; j++) {
//   addListItem(new_item[j]);
// }

var listButton = document.getElementById("add_item");
listButton.addEventListener("click", function(){
  var text = document.getElementById("new_item").value;
  document.getElementById("new_item").value = "";
  event.preventDefault();
  addListItem(text);
  countListItems();
} );
countListItems();
