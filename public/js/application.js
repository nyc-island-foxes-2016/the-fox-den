$(document).on("ready", function() {
  $("#toggle-form-button").on("click", function() {
    $("#main-page-fox-form-container").toggle();
  });

  $("#main-page-fox-form-container form").on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: "/foxes",
      data: $(this).serialize()
    }).done(function(response) {
      $("#fox-container").append(buildFoxHtml(JSON.parse(response)));
    });
  });

  $("#fox-container").on("click", ".color-change",function(event) {
    event.preventDefault();
    $(this).parent().prev().prev().css("color", getRandomColor());
  })

});

function buildFoxHtml(fox) {
  return ["<h3 id='fox-title-" + fox.id + "'>" + fox.name + "</h3>",
   " <p>" + fox.name + " is a " + fox.color + " fox.",
   "   <ul>",
   "     <li class='color-change'><a href='/foxes/" + fox.id + "'>Color morph!</a></li>",
   "     <li class='view-fox'><a href='/foxes/" + fox.id + "'>View</a></li>",
   "     <li class='edit-fox'><a href='/foxes/" + fox.id + "/edit'>Edit</a></li>",
   "     <li>",
   "     <form action='/foxes/" + fox.id + "' method='POST' class='delete-fox'>",
   "       <input type='hidden' name='_method' value='DELETE'>",
   "       <input type='submit' value='DELETE!'>",
   "     </form>",
   "   </li>",
   "   </ul>",
   " </p>"].join("");
}

function getRandomColor() {
  var letters = '0123456789ABCDEF'.split('');
  var color = '#';
  for (var i = 0; i < 6; i++ ) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
