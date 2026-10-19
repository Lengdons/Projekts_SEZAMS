jQuery(document).ready(function() {	
	$('.useful-btn').click(function(e){
		e.preventDefault();		
		var data = new FormData();
		data.append('useful_submit','useful_submit');	
		data.append('value',$(this).data('value'));	
		data.append('table_name',$(this).data('table-name'));	
		data.append('table_id',$(this).data('table-id'));
		$.ajax({
			type: "POST",
			cache: false,
			contentType: false,
			processData: false,
			dataType: "json",
			data: data,
			success: function(d){
				$('#useful-p').html(d.html);				
			}        
		}); 	
	});
});
