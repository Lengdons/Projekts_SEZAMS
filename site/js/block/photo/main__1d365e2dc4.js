var $grid = $('.grid').masonry({
  // options
  columnWidth: '.grid-sizer',
  itemSelector: '.grid-item',
  percentPosition: true,
  gutter: 25  
});

$grid.imagesLoaded().progress( function() {
  $grid.masonry('layout');
});

$(window).resize(function(){
    $grid.masonry('layout');
});

jQuery(document).ready(function() {	
	$('.photo-pagination').click(function(e){
		e.preventDefault();		
		var data = new FormData();
		data.append('load_photo','load_photo');	
		data.append('per_page',$(this).data('per-page'));	
		data.append('page',$(this).data('page'));
		var block=$(this).data('block');
		$.ajax({
			type: "POST",
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			data: data,
			success: function(d){
				$('.grid[data-block="'+block+'"]').html('<div class="grid-sizer"></div>'+d.html);
				$grid.masonry('reloadItems');
				$grid.imagesLoaded().progress( function() {
				  $grid.masonry('layout');
				});
				$('.photo-pagination').addClass('d-none');
				if(d.prev!=null)
					$('.photo-pagination.prev').data('page',d.prev).removeClass('d-none');
				if(d.next!=null)
					$('.photo-pagination.next').data('page',d.next).removeClass('d-none');
			}        
		}); 	
	});	
});