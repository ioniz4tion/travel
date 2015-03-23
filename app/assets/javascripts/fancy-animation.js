window.onload = function() {

	var tl = new TimelineMax();
	var rotate = new TimelineMax();
	var w = document.getElementsByClassName('w');

	tl.to(w[0], 0, {x: -75, y: -75, xPercent: -50, yPercent: -50})
	  .to(w[1], 0, {x: 111, y: 111, xPercent: -50, yPercent: -50})
	  .to(w[2], 0, {x: -147, y: -147, xPercent: -50, yPercent: -50})
	  .insert(new TweenMax.to(w[0], 2, {x: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 1}))
	  .insert(new TweenMax.to(w[0], 2, {y: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {x: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {y: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 3.75/2}))
	  .insert(new TweenMax.to(w[2], 5, {x: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 2.5}))
	  .insert(new TweenMax.to(w[2], 5, {y: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut}));

	//rotate.to(w[0], 1, {y: "+=75", yoyo: true, repeat: -1, ease: Sine.easeInOut})
	tl.play(4);

}