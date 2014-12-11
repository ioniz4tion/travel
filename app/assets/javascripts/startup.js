$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  //turbolinks progress bar
  Turbolinks.enableProgressBar();

 //bx slider initialization
  $('.bxslider').bxSlider();
  $('.weather-bxslider').bxSlider({
  	touchEnabled: false,
  	pager: false,
  	controls: false
  });
});	