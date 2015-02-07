$(document).ready(function() {
	$('nav button').click(function() {
		$('.nav-arrow').toggleClass('open');
		$('.nav-mobile').toggleClass('open');
	});
});