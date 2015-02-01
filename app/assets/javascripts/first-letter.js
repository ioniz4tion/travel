$(document).ready(function() {

	$('.each-word').html(function() {
    // Very crude regex I threw together in 2 minutes
    return $(this).text().replace(/\b([a-z])/gi, '<span class="first-letter">$1</span>')
	});

})