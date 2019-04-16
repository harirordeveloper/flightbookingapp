# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.tabing ul li a').click(function(e) {
   e.stopPropagation();
   e.preventDefault();
   var tabcont = $(this).attr('href');
   console.log(tabcont);
   $('.tabing a').removeClass('active');
   $(this).addClass('active');
   $('.tab1').hide();
   $(tabcont).show();
});