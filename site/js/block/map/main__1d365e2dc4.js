jQuery(document).ready(function() {
    const container = document.getElementById("pin-carousel");
    const options = {
         Dots: false,
         Navigation: {
            prevTpl:
              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 41.5 41.5"><defs><style>.a{fill:none;stroke:#fff;stroke-miterlimit:10;stroke-width:1.5px;}</style></defs><line class="a" x1="11.53165" y1="20.75" x2="31.11534" y2="20.75"/><polyline class="a" points="19.762 27.98 12.532 20.75 19.762 13.52"/><circle class="a" cx="20.75" cy="20.75" r="20"/></svg>',
            nextTpl:
              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 41.5 41.5"><defs><style>.a{fill:none;stroke:#fff;stroke-miterlimit:10;stroke-width:1.5px;}</style></defs><line class="a" x1="29.96835" y1="20.75" x2="10.38466" y2="20.75"/><polyline class="a" points="22.738 13.52 29.968 20.75 22.738 27.98"/><circle class="a" cx="20.75" cy="20.75" r="20"/></svg>',
          },
    };
    
    new Carousel(container, options);

    Fancybox.bind('[data-fancybox="pin-gallery"]', {
        // Your custom options
      });

	$('[data-bs-toggle="popover"]').popover();
	$('[data-bs-toggle="popover"]').click(function(e){
		$('[data-bs-toggle="popover"]').popover('hide');
		e.preventDefault();
	});
		
	const pins = document.querySelectorAll('.map-popover');

	pins.forEach(pin => {
	  pin.addEventListener('inserted.bs.popover', () => {
		$('.close-button').click(function(){
			$('[data-bs-toggle="popover"]').popover('hide');
		});
	  });
	});
});