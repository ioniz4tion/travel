$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  //turbolinks progress bar
  Turbolinks.enableProgressBar();

  //bx slider initialization
  function doThis(ele, old, newi){
    slider.goToSlide(newi);
    slider1.goToSlide(newi);
  };

  var slider = $('.bxslider').bxSlider({
    onSlideNext: doThis,
    onSlidePrev: doThis,
    onSlideBefore: doThis,
    onSlideAfter: doThis        
  });
  
  var slider1 = $('.weather-bxslider').bxSlider({
  	width: 360,
    height: 340,
    touchEnabled: false,
  	pager: false,
  	controls: false,
    onSlideNext: doThis,
    onSlidePrev: doThis,
    onSlideBefore: doThis,
    onSlideAfter: doThis
  });
});	
