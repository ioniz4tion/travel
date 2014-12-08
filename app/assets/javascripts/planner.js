$(document).ready(function() {
	var currentQuestion = 1;
	var questionNumber = $('.question').length;

	$("#next").click(function(event) {
		event.preventDefault();
		if (currentQuestion == questionNumber) {
			$("#questions").submit();
		}
		if (currentQuestion < questionNumber) {
			currentQuestion++;
			$("#q" + (currentQuestion - 1)).addClass("left-away").fadeOut(300,function(){
				$("#q" + (currentQuestion)).fadeIn().removeClass("right-away");
				if (currentQuestion == questionNumber) {
					$("#next").addClass("continue").text("Continue");
				}
				$("#previous").removeClass("grey-left");
				$("#current").text(currentQuestion);
			});
		}
	});

	$("#previous").click(function(event) {
		event.preventDefault();
		if (currentQuestion > 1) {
			currentQuestion--;
			$("#q" + (currentQuestion + 1)).addClass("right-away").fadeOut(300,function(){
				$("#q" + (currentQuestion)).fadeIn().removeClass("left-away");
				if (currentQuestion == 1) {
					$("#previous").addClass("grey-left");
				}
				$("#next").removeClass("continue").text("Next");
				$("#current").text(currentQuestion);
			});
		} 
	})

	$(".answer").click(function() {
		var color = $(this).attr('data-color');
		$("#q" + currentQuestion + " .answer").removeClass("selected")
		.removeClass("red-select blue-select green-select");
		$(this).addClass("selected").addClass(color + "-select");
	});
});