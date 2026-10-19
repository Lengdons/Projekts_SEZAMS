$(document).ready(function() {
    if ($(".glide").length){
        new Glide('.glide',{
            type: 'carousel',
            //autoplay: 5000,
            animationDuration: 1000,
            gap: 0,
        }).mount()
    }
	
	$('.jarallax-banner').jarallax({
		speed: 0.4,
	});	
});