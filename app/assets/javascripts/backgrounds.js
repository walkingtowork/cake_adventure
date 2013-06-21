$(document).ready(function(){
  var textbox = $('#textbox');

  var image = $('img');
  var conversation = $('conversation');




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

