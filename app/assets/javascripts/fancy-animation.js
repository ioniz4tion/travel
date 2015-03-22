window.onload = function() {

	var wInner = $('.w.inner');

	var wInnerAnimate = function() {
		TweenMax.to(wInner, 1, {top: '0', left: '75px', repeat: -1, yoyo: true});
	};

	wInnerAnimate();

};