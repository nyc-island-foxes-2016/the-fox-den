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
      $("#fox-container").append(response);
    });
  });

  $("#fox-container").on("click", ".color-change",function(event) {
    event.preventDefault();
    $(this).parent().prev().prev().css("color", getRandomColor());
  })

});

function getRandomColor() {
  var letters = '0123456789ABCDEF'.split('');
  var color = '#';
  for (var i = 0; i < 6; i++ ) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
