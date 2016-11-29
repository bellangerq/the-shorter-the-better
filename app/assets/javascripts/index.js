// $(document).ready(function() {
//
//   // LAUNCH MAIN FUNCTION ON CLICK
//   var button = $('.button');
//   button.click(function() {
//     shorterLink();
//   })
//
//   var shorterLink = function(link) {
//
//     // VARIABLES
//     var inputIn = $('.input');
//     var inputInVal = inputIn.val();
//     var shortenedLink = $('.shortened-link');
//
//     var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
//     var regex = new RegExp(expression);
//
//     var validMessage = 'URL shortened ✅';
//     var errorMessage = 'Wrong URL format ⛔';
//     var emptyMessage = 'Submit URL before ⛔';
//
//
//     // CONDITION
//     if(inputIn.val().match(regex)) {
//
//       // SWITCH CLASSES
//       shortenedLink.removeClass('error');
//       shortenedLink.addClass('active');
//
//       // CHANGE ALERT MESSAGE
//       shortenedLink.val(validMessage);
//
//       // CHANGE ALERT MESSAGE
//       inputIn.val('http://bit.ly/2gDjkoe');
//       inputIn.select();
//
//     } else if (inputIn.val() === ''){
//
//       // SWITCH CLASSES
//       shortenedLink.removeClass('active');
//       shortenedLink.addClass('error');
//
//       // CHANGE ALERT MESSAGE
//       shortenedLink.val(emptyMessage);
//
//       return;
//
//     } else {
//
//       // SWITCH CLASSES
//       shortenedLink.removeClass('active');
//       shortenedLink.addClass('error');
//
//       // CHANGE ALERT MESSAGE
//       shortenedLink.val(errorMessage);
//
//       return;
//     }
//
//     // COPY SHORT URL TO CLIPBOARD: https://clipboardjs.com/
//     var shorturl = new Clipboard('.button');
//   };
//
// });
