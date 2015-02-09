// Hide nav on on scroll down
// var didScroll;
// var lastScrollTop = 0;
// var delta = 5;
// var navbarHeight = $('nav').height();

$(document).ready(function() {
	var didScroll;
	var lastScrollTop = 0;
	var delta = 5;
	var navbarHeight = $('nav').outerHeight();
  console.log(navbarHeight);

  $(window).scroll(function(event){
	  didScroll = true;
	});

	setInterval(function() {
	  // if (didScroll && $(window).width() >= 1001) {
	    hasScrolled();
	    didScroll = false;
	  // }
	}, 250);

	function hasScrolled() {
	  var st = $(this).scrollTop();
	  
	  // Make sure they scroll more than delta
	  if(Math.abs(lastScrollTop - st) <= delta)
	    return;
	  
	  // If they scrolled down and are past the navbar, add class .nav-up.
	  // This is necessary so you never see what is "behind" the navbar.
	  if (st > lastScrollTop && st > navbarHeight){
	    // Scroll Down
	    $('nav').addClass('nav-up');
	  } else {
	    // Scroll Up
	    if(st + $(window).height() < $(document).height()) {
	      $('nav').removeClass('nav-up');
	    }
	  }
	  
	  lastScrollTop = st;
	}
});