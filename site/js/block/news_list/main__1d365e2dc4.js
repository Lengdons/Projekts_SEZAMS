// Replaced AJAX paging with GET paging so that users can navigate back to a page from an article.

// jQuery(document).ready(function() {	
// 	$('.news-list-pagination').click(function(e){
// 		e.preventDefault();		
// 		var data = new FormData();
// 		data.append('load_news_list','load_news_list');	
// 		data.append('topic',$(this).data('topic'));	
// 		data.append('per_page',$(this).data('per-page'));	
// 		data.append('page',$(this).data('page'));
// 		var block=$(this).data('block');
// 		$.ajax({
// 			type: "POST",
// 			cache: false,
// 			contentType: false,
// 			processData: false,
// 			dataType: "json",
// 			data: data,
// 			success: function(d){
// 				$('.block-news-list[data-block="'+block+'"]').html(d.html);
// 				loadddd();
// 				$('.news-list-pagination').addClass('d-none');
// 				if(d.prev!=null)
// 					$('.news-list-pagination.prev').data('page',d.prev).removeClass('d-none');
// 				if(d.next!=null)
// 					$('.news-list-pagination.next').data('page',d.next).removeClass('d-none');
// 			}        
// 		}); 	
// 	});
// 	loadddd();
// });

// function loadddd(){
// 	var blurDivs=document.querySelectorAll(".blur-load");
// 	blurDivs.forEach(div => {console.log('ok');
// 		var img = div.querySelector("img")
		
// 		function loaded(){
// 			div.classList.add("loaded")
// 		}
// 		if(img.complete){
// 			loaded();
// 		}
// 		else
// 		{
// 			img.addEventListener("load",loaded)
// 		}
// 	})		
// }