$(document).ready(function() {
  var carouselCount = $('.test').length;
  var currentCarousel = 0;

  function autoSlide() {
    setTimeout(function() {
      var nextCarousel = currentCarousel % carouselCount + 1;
      $('.test').carousel('pause'); // Pause all carousels
      $('.magnet' + nextCarousel).carousel('next'); // Start the next carousel
      currentCarousel = nextCarousel;
      autoSlide();
    }, 3000);
  }

  autoSlide();
});