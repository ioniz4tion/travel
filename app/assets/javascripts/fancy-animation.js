$(document).ready(function() {

	var innerGoTo = [50, 25];
	var middleGoTo = [130, 205];
	var outerGoTo = [160, 400];

	$('.logo').mouseenter(function() {

		inner = $('.inner .w').position();
		middle = $('.middle .w').position();
		outer = $('.outer .w').position();

		innerTranslate = [];
		innerTranslate[0] = innerGoTo[0] - inner.left;
		innerTranslate[1] = innerGoTo[1] - inner.top;

		middleTranslate = [];
		middleTranslate[0] = middleGoTo[0] - middle.left;
		middleTranslate[1] = middleGoTo[1] - middle.top;

		outerTranslate = [];
		outerTranslate[0] = outerGoTo[0] - outer.left;
		outerTranslate[1] = outerGoTo[1] - outer.top;

		$('.inner .w').css({
			'left' : innerTranslate[0] + 'px',
			'top' : innerTranslate[1] + 'px'
		});

		$('.middle .w').css({
			'left' : middleTranslate[0] + 'px',
			'top' : middleTranslate[1] + 'px'
		});

		$('.outer .w').css({
			'left' : outerTranslate[0] + 'px',
			'top' : outerTranslate[1] + 'px'
		});

		// console.log(inner);
		// console.log(middle);
		// console.log(outer);

	});

	$('.logo').mouseleave(function() {
		$('.inner .w, .middle .w, .outer .w').css({
			'left' : '50%',
			'top' : '50%'
		});
	});

});