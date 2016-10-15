$(document).ready(function() {

  var button = $('.button');

  var shorterLink = function(link) {

    var inputIn = $('.input');
    var shortenedLink = $('.shortened-link');

    var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
    var regex = new RegExp(expression);

    var validMessage = 'Short URL copied ✅';
    var errorMessage = 'Wrong URL format ⛔';

    if(inputIn.val().match(regex)) {

      shortenedLink.removeClass('error');
      shortenedLink.addClass('active');

      shortenedLink.val(validMessage);

      inputIn.val('https://goo.gl/CfZjja');

    } else {

      shortenedLink.removeClass('active');
      shortenedLink.addClass('error');

      shortenedLink.val(errorMessage);

    }
  };

  button.click(function() {
    shorterLink();
  })


});


// if link is correct (get regex url), do:
// it should:
// - get submitted url location
//
// - pop shortened link
// - pop 'copied' word appear and slide top
//
// if not, do:
// - appear error message in shortened link
// - make the input border red
