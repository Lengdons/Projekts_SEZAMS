var font_size="15";

$(document).ready(function() {
    $("body").css("font-size",font_size+"px");

    $('#close-btn').click(function() {
        $('#search-overlay').fadeOut();
    });
    $('.search-btn').click(function() {
        $('#search-overlay').fadeIn();
		$('#search-text').focus();
    });
	
	$('#search-button').click(function(e){
		e.preventDefault();
		window.location.href=web_url+'?search='+$('#search-text').val();
	});	

    $('.font-controls .font-size a').click(function(){
        size=$(this).data("size");
        $("body").css("font-size",size+"px");
        $('.font-controls .font-size a').removeClass("active");
        $(this).addClass("active");
        $.ajax({
            type: "POST",
            url: web_url+"?font-size="+size
        });
    });
	
	if(localStorage['contrast']){	
		if(localStorage['contrast']=="black" || localStorage['contrast']=="yellow"){
			$(".site-logo").attr("src",web_url+"img/logo-white.svg");
			
			if ($(".sidebar-nav-icon img").length){
				$(".sidebar-nav-icon img").attr("src",web_url+"img/round-right.svg");
			}	
			
			if ($(".map-pagination").length){
				$(".map-pagination img").attr("src",web_url+"img/round-right.svg");
			}	
		}else{
			$(".site-logo").attr("src",web_url+"img/logo.svg");	
			
			if ($(".sidebar-nav-icon img").length){
				$(".sidebar-nav-icon img").attr("src",web_url+"img/round-right-blue.svg");
			}
			
			if ($(".map-pagination img").length){
				$(".map-pagination img").attr("src",web_url+"img/round-right-blue.svg");
			}	
		}
	}
	
	$(".control").removeClass("active");
	$(".control[data-class="+localStorage['contrast']+"]").addClass("active");

    $('.contrast-controls .control').click(function(){
        contrast=$(this).data("class");
		localStorage['contrast'] = contrast;
        $("html").removeClass("black");
        $("html").removeClass("blue");
        $("html").removeClass("yellow");
        $("html").removeClass("yellow2");
        $("html").addClass(contrast);
        $('.contrast-controls .dropdown-item').removeClass("active");
		
		if(contrast=="black" || contrast=="yellow"){
			$(".site-logo").attr("src",web_url+"img/logo-white.svg");

			if ($(".sidebar-nav-icon img").length){
				$(".sidebar-nav-icon img").attr("src",web_url+"img/round-right.svg");
			}

			if ($(".map-pagination").length){
				$(".map-pagination img").attr("src",web_url+"img/round-right.svg");
			}				
		}else{
			$(".site-logo").attr("src",web_url+"img/logo.svg");	
			
			if ($(".sidebar-nav-icon img").length){
				$(".sidebar-nav-icon img").attr("src",web_url+"img/round-right-blue.svg");
			}			
			if ($(".map-pagination img").length){
				$(".map-pagination img").attr("src",web_url+"img/round-right-blue.svg");
			}				
		}
		
        $(this).addClass("active");
        $.ajax({
            type: "POST",
            url: web_url+"?contrast="+contrast
        });
    });

	var isScrolling = false;
	var animDuration = 100;
	var animSpeed = 200;

	$(window).on("scroll", function() {
		if (!isScrolling) {
			var windowsize = $(window).width();
			if (windowsize < 769){
				animDuration = 400;
				animSpeed = 500;
			}			
			
			isScrolling = true;

			setTimeout(function() {
				const animateElement = $(".color-border");
				const minStop1 = 50, maxStop1 = 70;
				const minStop2 = 70, maxStop2 = 95;

				let colorStop1 = parseFloat(animateElement.data('stop1')) || 65;
				let colorStop2 = parseFloat(animateElement.data('stop2')) || 92;

				let randomChange1 = (Math.random() > 0.5 ? 2 : -3);
				let randomChange2 = (Math.random() > 0.5 ? 2 : -3);
				let newColorStop1 = Math.min(maxStop1, Math.max(minStop1, colorStop1 + randomChange1));
				let newColorStop2 = Math.min(maxStop2, Math.max(minStop2, colorStop2 + randomChange2));

				// Animate to the new color stops
				animateElement.animate({ textDecorationThickness: newColorStop1, containIntrinsicWidth: newColorStop2 }, {
					start: function() {
						// Set initial color stops
						animateElement.css({
							textDecorationThickness: colorStop1 + "px",
							containIntrinsicWidth: colorStop2 + "px"
						});
					},
					step: function(now, fx) {
						if (fx.prop === "textDecorationThickness") {
							animateElement.data('stop1', now);
						} else if (fx.prop === "containIntrinsicWidth") {
							animateElement.data('stop2', now);
						}

						$(this).css('border-image', `-webkit-linear-gradient(left, #0c1f41 ${animateElement.data('stop1')}%, #be1e2d ${animateElement.data('stop1')}%, #be1e2d ${animateElement.data('stop2')}%, #fbb040 ${animateElement.data('stop2')}%)1`);
					},
					duration:animDuration
				});

				isScrolling = false;
			}, animSpeed);
		}
	});
});