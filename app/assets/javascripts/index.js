$(document).ready(function() {

  // VARIABLES
  var longUrl = $('.long-url');
  var infoBox = $('.shortened-link');

  var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
  var regex = new RegExp(expression);

  var errorMessage = 'Wrong URL format ⛔';
  var emptyMessage = 'Submit URL before ⛔';

  var shorterButton = $('.shorter-it-button');

  // LAUNCH FUNCTION
  shorterButton.click(function() {
    shorterLink();
  })

  var shorterLink = function() {

    // INFOBOX CONDITIONS
    if(longUrl.val() === '') {

      infoBox.removeClass('active');
      infoBox.addClass('error');
      infoBox.val(emptyMessage);

      return;
    }

    if(longUrl.val().match(regex)) {

      infoBox.hide();

    } else {

      infoBox.removeClass('active');
      infoBox.addClass('error');
      infoBox.val(errorMessage);

      return;
    }

  };

});
