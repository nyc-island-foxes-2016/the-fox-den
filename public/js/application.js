$(document).on("ready", function() {
  $("#toggle-form-button").on("click", function() {
    $("#main-page-fox-form-container").toggle();
  });
  $("#main-page-fox-form-container form").on("submit", function(event) {
    event.preventDefault();
    debugger;
    $.ajax({
      type: "POST",
      url: "/foxes",
      data: $(this).serialize()
    }).done(function(response) {
      $("body").append(response);
    });
  });
});
