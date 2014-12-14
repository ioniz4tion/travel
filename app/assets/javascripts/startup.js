$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  //turbolinks progress bar
  Turbolinks.enableProgressBar();

  //bx slider initialization
  function doThis(ele, old, newi){
    slider.goToSlide(newi);
    slider1.goToSlide(newi);
    slider2.goToSlide(newi);
  };

  if ($('.weather-bxslider').length || $('.weather-back-bxslider').length) {

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
      infiniteloop: true,
      auto: false,
      onSlideNext: doThis,
      onSlidePrev: doThis,
      onSlideBefore: doThis,
      onSlideAfter: doThis
    });

    var slider2 = $('.weather-back-bxslider').bxSlider({
      width: 340,
      height: 662,
      touchEnabled: false,
      pager: false,
      controls: false,
      infiniteloop: true,
      auto: false,
      onSlideNext: doThis,
      onSlidePrev: doThis,
      onSlideBefore: doThis,
      onSlideAfter: doThis
    })

  } else {
    var slider = $('.bxslider').bxSlider();
  };

});	
