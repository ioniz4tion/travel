$(document).ready(function() {
	var currentQuestion = 1;
	var questionNumber = $('.question').length;

	$("#next").click(function(event) {
		event.preventDefault();
		if (currentQuestion < questionNumber) {
			$("#q" + currentQuestion).addClass("left-away").fadeOut(300,function(){
				$("#q" + (currentQuestion + 1)).fadeIn().removeClass("right-away");
				currentQuestion++;
				if (currentQuestion == questionNumber) {
					$("#next").addClass("grey-right");
				}
				$("#previous").removeClass("grey-left");
				$("#current").text(currentQuestion);
			});
		}		
	});

	$("#previous").click(function(event) {
		event.preventDefault();
		if (currentQuestion > 1) {
			$("#q" + currentQuestion).addClass("right-away").fadeOut(300,function(){
				$("#q" + (currentQuestion - 1)).fadeIn().removeClass("left-away");
				currentQuestion--;
				if (currentQuestion == 1) {
					$("#previous").addClass("grey-left");
				}
				$("#next").removeClass("grey-right");
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