jQuery(document).ready(function() {		
	load();	
});
function load(){
	$('.related-pagination').click(function(e){
		e.preventDefault();	
		var data = new FormData();
		data.append('load_related','load_related');	
		data.append('page',$(this).data('page'));
		data.append('topics',$(this).closest('.related-list').data('topics'));
		$.ajax({
			type: "POST",
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			data: data,
			success: function(d){
				$('.related-list').html(d.html);
				load();				
			}        
		}); 
	});
}