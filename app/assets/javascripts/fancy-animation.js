window.onload = function() {

	var t1 = new TimelineMax();
	var t2 = new TimelineMax();
	var rotate = new TimelineMax();
	var w = document.getElementsByClassName('w');
	var text = $('.text span');

	t1.to(w[0], 0, {x: -75, y: -75, xPercent: -50, yPercent: -50})
	  .to(w[1], 0, {x: 111, y: 111, xPercent: -50, yPercent: -50})
	  .to(w[2], 0, {x: -147, y: -147, xPercent: -50, yPercent: -50})
	  .insert(new TweenMax.to(w[0], 2, {x: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 1}))
	  .insert(new TweenMax.to(w[0], 2, {y: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {x: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {y: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 3.75/2}))
	  .insert(new TweenMax.to(w[2], 5, {x: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 2.5}))
	  .insert(new TweenMax.to(w[2], 5, {y: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut}));

	t1.play(4);

	
	function start(t1) {
		t1.play();
		t2.clear();
		t2.to(w[0], 1, {x: -67, y: -57, ease: Sine.easeInOut}, "w")
	  .to(w[1], 1, {x: -45, y: -2, ease: Sine.easeInOut}, "w")
	  .to(w[2], 1, {x: -126, y: 53, ease: Sine.easeInOut}, "w")
		.to(text, 1, {right: 0, ease: Power2.easeInOut});
		t2.pause();
	};
	t2.eventCallback("onReverseComplete", start);
	t2.eventCallback("onReverseCompleteParams",[t1]);

	start(t1);	

	$('.logo').mouseenter(function() {
		t1.pause();
		t2.play();
	});

	$('.logo').mouseleave(function() {
		t2.reverse();
	});
};