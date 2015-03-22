// <<<<<<< HEAD
// $(document).ready(function() {

	// var tween = new TweenMax.to('.w.inner', 1, {top: '-75px', ease:Linear.easeNone});
	
	// var innerGoTo = [69, 79];
	// var middleGoTo = [165, 205];
	// var outerGoTo = [153, 331];
	// var animateCheck = false;
// =======
$(document).ready(function() {

	var innerGoTo = [69, 79];
	var middleGoTo = [165, 205];
	var outerGoTo = [153, 331];
	var animateCheck = false;


	var tl = new TimelineMax();
	var w = document.getElementsByClassName('w');

	tl.insert( new TweenMax.to(w[0], 1, {left: "-=150", repeat: -1,yoyo: true}));

	//TweenMax.to(w[0], 1, {x: "-=75", y: "-=75", repeat: -1, yoyo: true});
// >>>>>>> 1e98a41993d3c551469a17f4b83c7f1b542d3dc4

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

<<<<<<< HEAD
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
=======
	// // $('.logo').mouseleave(function() {

	// 	// setTimeout(function() {
	// 	// 	$('.inner .w, .middle .w, .outer .w').css({
	// 	// 		'left' : '50%',
	// 	// 		'top' : '50%'
	// 	// 	});

	// 	// 	$('.w').css({
	// 	// 		'font-size' : '25px',
	// 	// 		    '-ms-animation-play-state' : 'running',
	// 	// 		   '-moz-animation-play-state' : 'running',
	// 	// 		'-webkit-animation-play-state' : 'running',
	// 	// 		     '-o-animation-play-state' : 'running',
	// 	// 		        'animation-play-state' : 'running'
	// 	// 	});
	// 	// }, 1000);
		
	// 	// $('.text span').css('right', '100%');
>>>>>>> 1e98a41993d3c551469a17f4b83c7f1b542d3dc4

	// 	//animateCheck = false;
	// 	// $('.logo .eleganticon').css({
	// 	// 	'font-size' : '75px',
	// 	// 	'opacity' : '1'
	// 	// });

<<<<<<< HEAD
	// });

	// setInterval(function () {
	// 	var logoHover = $('.logo').is(':hover');
	// 	if (logoHover == false && animateCheck == true) {
=======
	// // });

	// // setInterval(function () {
	// // 	var logoHover = $('.logo').is(':hover');
	// // 	if (logoHover == false && animateCheck == true) {
>>>>>>> 1e98a41993d3c551469a17f4b83c7f1b542d3dc4

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
		
<<<<<<< HEAD
	// 	$('.text span').css('right', '100%');
	// 	//animateCheck = false;

	// 	}
	// 	if (logoHover == true) {
=======
	// 	// $('.text span').css('right', '100%');
	// 	// //animateCheck = false;

	// 	// }
	// 	// if (logoHover == true) {
>>>>>>> 1e98a41993d3c551469a17f4b83c7f1b542d3dc4
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

<<<<<<< HEAD
// });
=======
});
>>>>>>> 1e98a41993d3c551469a17f4b83c7f1b542d3dc4
