window.onload = function() {

	var tl = new TimelineMax();
	var t2 = new TimelineMax();
	var rotate = new TimelineMax();
	var w = document.getElementsByClassName('w');
	var text = $('.text span');

	tl.to(w[0], 0, {x: -75, y: -75, xPercent: -50, yPercent: -50})
	  .to(w[1], 0, {x: 111, y: 111, xPercent: -50, yPercent: -50})
	  .to(w[2], 0, {x: -147, y: -147, xPercent: -50, yPercent: -50})
	  .insert(new TweenMax.to(w[0], 2, {x: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 1}))
	  .insert(new TweenMax.to(w[0], 2, {y: 75, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {x: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut}))
	  .insert(new TweenMax.to(w[1], 3.75, {y: -111, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 3.75/2}))
	  .insert(new TweenMax.to(w[2], 5, {x: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut, delay: 2.5}))
	  .insert(new TweenMax.to(w[2], 5, {y: 147, yoyo: true, repeat: -1, ease: Sine.easeInOut}));


	tl.play(4);

};
i = 0;

var mouse = {x: 0, y: 0};

document.addEventListener('mousemove', function(e){ 
    mouse.x = e.clientX || e.pageX; 
    mouse.y = e.clientY || e.pageY 
}, false);
setInterval(function () {

	//if(Math.random() < .3) {
	  var span = document.createElement("span");
	  span.innerHTML = "$";
	  span.setAttribute("class", "dollar");
	  span.setAttribute("id", "dollar" + i);

	  $('#calculator').append(span);

	  var sign = Math.random() < 0.5 ? -1 : 1;
	  var sign2 = Math.random() < 0.5 ? -1 : 1;

	  $('#dollar' + i).css({top: mouse.y - 10, left: mouse.x - 10});
	  TweenMax.to($('#dollar' + i), 2.5, {x: Math.random() * sign * 150 + 50, y: Math.random() * sign2 * 150 + 50, scale: .3, opacity: 0});

		i++;

	//}
}, 75);
	function start() {
		t1.play();
		alert("test");
	};

	t2.to(w[0], 1, {x: -67, y: -57, ease: Sine.easeInOut}, "w")
	  .to(w[1], 1, {x: -45, y: -2, ease: Sine.easeInOut}, "w")
	  .to(w[2], 1, {x: -126, y: 53, ease: Sine.easeInOut}, "w")
		.to(text, 1, {right: 0, ease: Power2.easeInOut});
	t2.eventCallback("onReverseComplete", start);
	// t2.eventCallback("onReverseCompleteParams",[t1]);

	//rotate.to(w[0], 1, {y: "+=75", yoyo: true, repeat: -1, ease: Sine.easeInOut})
	tl.play(4);
	t2.pause();

	$('.logo').mouseenter(function() {
		tl.pause();
		t2.play();
	});

	$('.logo').mouseleave(function() {
		// tl.delay(2.5).play();
		t2.reverse();
	});

}
