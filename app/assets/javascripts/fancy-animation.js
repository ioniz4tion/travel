// $(document).ready(function() {

	var tween = new TweenMax.to('.w.inner', 1, {top: '-75px', ease:Linear.easeNone});
	
	// var innerGoTo = [69, 79];
	// var middleGoTo = [165, 205];
	// var outerGoTo = [153, 331];
	// var animateCheck = false;

	// $('.logo').mouseenter(function() {

	// 	inner = $('.inner .w').position();
	// 	middle = $('.middle .w').position();
	// 	outer = $('.outer .w').position();

	// 	innerTranslate = [];
	// 	innerTranslate[0] = innerGoTo[0] - inner.left;
	// 	innerTranslate[1] = innerGoTo[1] - inner.top;

	// 	middleTranslate = [];
	// 	middleTranslate[0] = middleGoTo[0] - middle.left;
	// 	middleTranslate[1] = middleGoTo[1] - middle.top;

	// 	outerTranslate = [];
	// 	outerTranslate[0] = outerGoTo[0] - outer.left;
	// 	outerTranslate[1] = outerGoTo[1] - outer.top;

	// 	$('.inner .w').css({
	// 		'left' : innerTranslate[0] + 'px',
	// 		'top' : innerTranslate[1] + 'px'
	// 	});

	// 	$('.middle .w').css({
	// 		'left' : middleTranslate[0] + 'px',
	// 		'top' : middleTranslate[1] + 'px'
	// 	});

	// 	$('.outer .w').css({
	// 		'left' : outerTranslate[0] + 'px',
	// 		'top' : outerTranslate[1] + 'px'
	// 	});

	// 	$('.w').css({
	// 		'font-size' : '45px',
	// 		    '-ms-animation-play-state' : 'paused',
	// 		   '-moz-animation-play-state' : 'paused',
	// 		'-webkit-animation-play-state' : 'paused',
	// 		     '-o-animation-play-state' : 'paused',
	// 		        'animation-play-state' : 'paused'
	// 	});

	// 	setTimeout(function() {
	// 		$('.text span').css('right', '0');
	// 		// $('.logo .eleganticon').css({
	// 		// 	'font-size' : '200px',
	// 		// 	'opacity' : '0.5'
	// 		// });
	// 	}, 1000);

	// 	animateCheck = true;

	// 	// console.log(inner);
	// 	// console.log(middle);
	// 	// console.log(outer);

	// });

	// $('.logo').mouseleave(function() {

	// 	setTimeout(function() {
	// 		$('.inner .w, .middle .w, .outer .w').css({
	// 			'left' : '50%',
	// 			'top' : '50%'
	// 		});

	// 		$('.w').css({
	// 			'font-size' : '25px',
	// 			    '-ms-animation-play-state' : 'running',
	// 			   '-moz-animation-play-state' : 'running',
	// 			'-webkit-animation-play-state' : 'running',
	// 			     '-o-animation-play-state' : 'running',
	// 			        'animation-play-state' : 'running'
	// 		});
	// 	}, 1000);
		
	// 	$('.text span').css('right', '100%');

	// 	//animateCheck = false;
	// 	// $('.logo .eleganticon').css({
	// 	// 	'font-size' : '75px',
	// 	// 	'opacity' : '1'
	// 	// });

	// });

	// setInterval(function () {
	// 	var logoHover = $('.logo').is(':hover');
	// 	if (logoHover == false && animateCheck == true) {

	// 		/*setTimeout(function() {
	// 		$('.inner .w, .middle .w, .outer .w').css({
	// 			'left' : '50%',
	// 			'top' : '50%'
	// 		});*/

	// 		/*$('.w').css({
	// 			'font-size' : '25px',
	// 			    '-ms-animation-play-state' : 'running',
	// 			   '-moz-animation-play-state' : 'running',
	// 			'-webkit-animation-play-state' : 'running',
	// 			     '-o-animation-play-state' : 'running',
	// 			        'animation-play-state' : 'running'
	// 		});
	// 	}, 1000);*/
		
	// 	$('.text span').css('right', '100%');
	// 	//animateCheck = false;

	// 	}
	// 	if (logoHover == true) {
	// 		//inner = $('.inner .w').position();
	// 	//middle = $('.middle .w').position();
	// 	//outer = $('.outer .w').position();

	// 	// //innerTranslate = [];
	// 	// innerTranslate[0] = innerGoTo[0] - inner.left;
	// 	// innerTranslate[1] = innerGoTo[1] - inner.top;

	// 	// middleTranslate = [];
	// 	// middleTranslate[0] = middleGoTo[0] - middle.left;
	// 	// middleTranslate[1] = middleGoTo[1] - middle.top;

	// 	// outerTranslate = [];
	// 	// outerTranslate[0] = outerGoTo[0] - outer.left;
	// 	// outerTranslate[1] = outerGoTo[1] - outer.top;

	// 	/*$('.inner .w').css({
	// 		'left' : innerTranslate[0] + 'px',
	// 		'top' : innerTranslate[1] + 'px'
	// 	});

	// 	$('.middle .w').css({
	// 		'left' : middleTranslate[0] + 'px',
	// 		'top' : middleTranslate[1] + 'px'
	// 	});

	// 	$('.outer .w').css({
	// 		'left' : outerTranslate[0] + 'px',
	// 		'top' : outerTranslate[1] + 'px'
	// 	});*/
	// 			$('.w').css({
	// 		'font-size' : '45px',
	// 		    '-ms-animation-play-state' : 'paused',
	// 		   '-moz-animation-play-state' : 'paused',
	// 		'-webkit-animation-play-state' : 'paused',
	// 		     '-o-animation-play-state' : 'paused',
	// 		        'animation-play-state' : 'paused'
	// 	});

	// 	}
	// }, 100);

// });