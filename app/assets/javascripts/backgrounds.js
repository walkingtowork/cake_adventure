$(document).ready(function(){
  var dialogue_box = $('#dialogue_box');
  var item_box = $('#item_box');

  dialogue_box.on('click', function() {
    $.ajax({url: "/dialogues/2.js"});

  });

  var image = $('img');

  item_box.on('click', function() {
    $(this).hide();
    image.on('click', show_item_message);
  });

  function show_item_message() {
    item_box.hide();
    var img = $(this);
    item_box.text(img.data('message'));
    item_box.fadeIn();
    image.off('click');
  }






});

