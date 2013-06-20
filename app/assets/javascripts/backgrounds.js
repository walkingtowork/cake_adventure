$(document).ready(function(){
  var image = $('img');
  var description = $('#description');

  image.on('click', show_image_info);

  function show_image_info() {
    description.hide();
    var img = $(this);
    description.text(img.data('message'));
    description.fadeIn();

  }
});

