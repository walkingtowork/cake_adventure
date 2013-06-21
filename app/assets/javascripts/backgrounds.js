$(document).ready(function(){
  var image = $('img');

  var textbox = $('#textbox');

  image.on('click', show_item_message);

  textbox.on('click', function() {
    $(this).hide();
  });

  function show_item_message() {
    textbox.hide();
    var img = $(this);
    textbox.text(img.data('message'));
    textbox.fadeIn();



  }






});

