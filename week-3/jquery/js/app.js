$(function(){
  // $("#count").html("5");

  // $("li").eq(3).addClass("done");
  listCount();
  addButtonListener();
  // $("#list").append("<li class=\"done\">Feed the fish</li>")
  var items = ["feed the fish <button type=\"button\" name=\"button\" class=\"markdon btn btn-primary btn-sm\">Mark as done</done>","make a cup of tea <button type=\"button\" name=\"button\" class=\"markdon btn btn-primary btn-sm\">Mark as done</done>","learn JQuery <button type=\"button\" name=\"button\" class=\"markdon btn btn-primary btn-sm\">Mark as done</done>"];
  $("#newitem").click(function(){
    var item = randomItem();
    addListItem(item);
    listCount();
  });

  $("#removeitem").click(function(){
    removeListItem()
    listCount();
  });

  function addButtonListener(){
    var buttons = $(".markdon")
    for (button of buttons) {
      $(".markdon").click(done)
    }
  };

  function randomItem(){
    var random = Math.floor(Math.random()*items.length);

    return items[random];
  }


  function addListItem(itemtext){
    $("#list").append("<li class=\"todo list-unstyled\">" + itemtext + "</li>");
    addButtonListener();
  };


  function removeListItem(){
    $("li").last().remove();
  };

  function listCount(){
    $("#count").html($(".todo").length);
  };

  function done(){
    $(this).parent().addClass("done");
    $(this).parent().removeClass("todo");
    $(this).remove();
    listCount();
  }
});
