window.onload = function() {

	var tl = new TimelineMax();
	var w = document.getElementsByClassName('w');

	tl.to(w[0], 0, {x: -75, xPercent: -50, y: -75, yPercent: -50})
	  .to(w[1], 0, {x: -111, xPercent: -50})
	  .to(w[2], 0, {x: -147, xPercent: -50})
	  .insert(new TweenMax.to(w[0], 1, {x: 75, yoyo: true, repeat: -1, ease: Circ.easeInOut}))
	  .insert(new TweenMax.to(w[0], 1, {yoyo: true, repeat: -1, ease: Circ.easeInOut}))
	  .insert(new TweenMax.to(w[0], 1, {y: 75, yoyo: true, repeat: -1, ease: Circ.easeInOut}))

}