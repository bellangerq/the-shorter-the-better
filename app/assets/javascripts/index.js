$(document).ready(function() {

  // VARIABLES
  var longUrl = $('.long-url');
  var alertError = $('.alert-error');

  var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
  var regex = new RegExp(expression);

  var errorMessage = 'Wrong URL format ⛔';
  var emptyMessage = 'Submit URL before ⛔';

  var shorterButton = $('.shorter-it-button');

  var shortURLInput = $('.short-url');

  // LAUNCH FUNCTION
  shorterButton.click(function() {
    shorterLink();
  })

  var shorterLink = function(e) {

    // INFOBOX CONDITIONS
    if(longUrl.val() === '' || typeof(longUrl.val()) === 'undefined') {
      console.log('Input is empty');
      alertError.show();
      alertError.val(emptyMessage);
      return;

    } else if (!(longUrl.val().match(regex))) {
      console.log('Input doesn\'t mach the regex');
      alertError.show();
      alertError.val(errorMessage);
      return;

    } else {
      alertError.hide();
    }

  };

  // SELECT INPUT TEXT
  shortURLInput.select();

});
