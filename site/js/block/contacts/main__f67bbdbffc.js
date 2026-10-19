jQuery(document).ready(function() {
	var $window = $(window);
	
	$('.units').click(function(e){
		e.preventDefault();		
		var data = new FormData();
		data.append('load_contacts','load_contacts');	
		data.append('unit_id',$(this).data('id'));	
		data.append('block_id',$(this).data('block'));	
		
		$('.units').removeClass('current');
		$(this).addClass('current');
		
		$.ajax({
			type: "POST",
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			data: data,
			success: function(d){
				var windowsize = $window.width();
				if (windowsize <= 768) {
				  $('html, body').animate({
					scrollTop: $(".main-content").offset().top - 120
				  }, {
					duration: 10,
					easing: "linear" // Use linear easing
				  });
				}				
				$('.contacts-div').fadeOut( 200, function(){
					$('.contacts-div').html(d.html);
					$('.contacts-div').fadeIn(200);

				});			
				//$('.contacts-div').html(d.html);				
			}        
		}); 	
	});
	
});
