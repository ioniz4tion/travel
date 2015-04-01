$(document).ready(function() {

	$('nav button:not(.nav-btn)').click(function() {
		$('.nav-arrow').toggleClass('open');
		$('.nav-mobile').toggleClass('open');
	});

	$('.dest-mobile .package-name').click(function() {
		$(this).next().toggleClass('open');
	});

	$('.nav-btn').click(function() {
		$('.dest-mobile').toggleClass('hidden');
		$('.about-mobile').toggleClass('hidden');
	})

});