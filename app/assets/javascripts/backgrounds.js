$(document).ready(function(){
  var dialogue_box = $('#dialogue_box');
  var item_box = $('#item_box');

  dialogue_box.on('click', function() {
    var dlg = $(this);
    $.ajax({url: dlg.data('next_url')});

  });

  var image = $('img');

  item_box.on('click', function() {
    $(this).hide();
    image.on('click', show_item_message);
  });

});

function show_item_message() {
  var item_box = $('#item_box');
  item_box.hide();
  var img = $(this);
  item_box.text(img.data('message'));
  item_box.fadeIn();
  $('img').off('click');
}