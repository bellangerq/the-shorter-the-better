$(document).ready(function() {

  var button = $('.button');

  var shorterLink = function(link) {

    var inputValue = $('.input');
    var shortenedLink = $('.shortened-link');

    var validMessage = 'Short URL copied ✅';
    var errorMessage = 'Wrong URL format ⛔';

    if(inputValue.val() === 'hello') {

      shortenedLink.removeClass('error');
      shortenedLink.addClass('active');

      shortenedLink.val(validMessage);

      inputValue.val('https://goo.gl/CfZjja');
      console.log(inputValue.val());

    } else {

      shortenedLink.removeClass('active');
      shortenedLink.addClass('error');

      shortenedLink.val(errorMessage);

      // set shortenedLink value as error msg

    }

    // if link is correct (get regex url), do:
    // it should:
    // - get submitted url
    // - get submitted url location
    //
    // - pop shortened link
    // - pop 'copied' word appear and slide top
    //
    // if not, do:
    // - appear error message in shortened link
    // - make the input border red
  };

  button.click(function() {
    shorterLink();
  })


});
