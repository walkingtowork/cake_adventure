$(document).ready(function(){
  var textbox = $('#textbox');

  var image = $('img');
  var conversation = $('conversation');

  textbox.on('click', function() {
    $(this).hide();
    image.on('click', show_item_message);
  });

  function show_item_message() {
    textbox.hide();
    var img = $(this);
    textbox.text(img.data('message'));
    textbox.fadeIn();
    image.off('click');
  }






});

