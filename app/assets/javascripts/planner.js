//planner page code

$(document).ready(function() {
	var currentQuestion = 1;
	var questionNumber = $('.question').length;

	$("#nxt").click(function(event) {
		event.preventDefault();
		if (currentQuestion == questionNumber) {
			$("#questions").submit();
		}
		if (currentQuestion < questionNumber) {
			currentQuestion++;
			$("#q" + (currentQuestion - 1)).addClass("left-away").fadeOut(300,function(){
				$("#q" + (currentQuestion)).fadeIn().removeClass("right-away");
				if (currentQuestion == questionNumber) {
					$("#nxt").addClass("continue");
				}
				$("#prvs").removeClass("disabled");
				$("#current").text(currentQuestion);
			});
		}
	});

	$("#prvs").click(function(event) {
		event.preventDefault();
		if (currentQuestion > 1) {
			currentQuestion--;
			$("#q" + (currentQuestion + 1)).addClass("right-away").fadeOut(300,function(){
				$("#q" + (currentQuestion)).fadeIn().removeClass("left-away");
				if (currentQuestion == 1) {
					$("#prvs").addClass("disabled");
				}
				$("#nxt").removeClass("continue");
				$("#current").text(currentQuestion);
			});
		} 
	})

	$(".answer").click(function() {
		var color = $(this).attr('data-cshoolor');
		$("#q" + currentQuestion + " .answer").removeClass("selected")
		.removeClass("red-select blue-select green-select");
		$(this).addClass("selected").addClass(color + "-select");
	});

	//suggest page code

	// $("#another").click(function() {
	// 	$("#cities").addClass("show");
	// 	$("body").addClass("no-overflow");
	// });

	$(".down").click(function() {
		$("#cities").removeClass("show");
		$("body").removeClass("no-overflow");
	});

	$(".choose").click(function() {
		$("#cities").removeClass("show");
		$("body").removeClass("no-overflow");
		choose = parseInt(this.id.replace("choose",""));
		request(choose);		
	});

	$("#suggest-continue").click(function() {
		$("#suggest").submit();
	});

	var request = function(choose) {
		$.ajax({url:"/planner/suggest/another", data: {choose: choose}, success:function(data){
			data = JSON.parse(data);
			$(".city-name").text(data[1]);
			$(".package-image").attr("src", data[2]);
			$("#city_id").val(data[0]);

		}});
	}

	// hotel page code

	$('.hotel-card button').click(function() {
		var idValue = $(this).attr('id'),
				buttonId = $(this).attr('id'),
				idValue = idValue.replace('show','');

		
		$('#card' + idValue).toggleClass('flipper-open');
		$('#hotel-card' + idValue).toggleClass("selected-card");
		$('#' + buttonId + ' span').toggleClass('flipper-open');
		$('#card' + idValue).toggleClass("fliptest").show();
		console.log(idValue);
	});

	$("button").click(function() {
		event.preventDefault();
	});

	$('.hotel-card').click(function() {
		$(this).toggleClass("selected-card");
	});

	$('#another').click(function() {
		$('.others-container').toggleClass('open');
	});

	$('.others a').click(function() {
		var imgSource = $('.others img').attr('src');
		var h2Source = $('.others .name').text();
		var pSource = $('.others p').text();

		$('.price-img img').attr('src', imgSource);
		$('.description h2').text(h2Source);
		$('.description p').text(pSource);
	});
});