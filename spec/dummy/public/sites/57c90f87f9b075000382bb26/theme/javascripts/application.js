$(document).ready(function() {
});

$(".random_color").each(function() {
  var hue = 'rgb(' + (Math.floor((256-199)*Math.random()) + 200) + ',' + (Math.floor((256-199)*Math.random()) + 200) + ',' + (Math.floor((256-199)*Math.random()) + 200) + ')';
  $(this).css("background-color", hue);
});

$('.thumbnail').hover(
    function(){
      $(this).find('.caption').fadeIn(250); //.fadeIn(250)
    },
    function(){
      $(this).find('.caption').fadeOut(250); //.fadeOut(205)
    }
);
