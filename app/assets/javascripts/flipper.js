$(document).ready(function() {

	var $flipper = $('.flipper'),
			$flipperBtn = $('#flipperBtn'),
			$flipperClose = $('#flipperClose'),
			$front = $('.flipper .front'),
			$back = $('.flipper .back'),
			$weatherMore = $('.flipper .weather-more'),
			flipped = false;

	var flipperFlip = function() {

		if (flipped == false) {

			$flipper.css({
				"-ms-transform"     : "rotateY(180deg)",
				"-moz-transform"    : "rotateY(180deg)",
				"-webkit-transform" : "rotateY(180deg)",
				"-o-transform"      : "rotateY(180deg)",
				"transform"         : "rotateY(180deg)"
			});

			flipped = true;

		};

	};

	var flipperFlipBack = function() {

		if (flipped == true) {

			$flipper.css({
				"-ms-transform"     : "rotateY(0deg)",
				"-moz-transform"    : "rotateY(0deg)",
				"-webkit-transform" : "rotateY(0deg)",
				"-o-transform"      : "rotateY(0deg)",
				"transform"         : "rotateY(0deg)"
			});

			flipped = false;

		};

	};

	$flipperBtn.click(function() {
		flipperFlip();
	});

	$flipperClose.click(function() {
		flipperFlipBack();
	});

});