$(document).ready(function(){	
    $(".submit").on("click", function(token) {
		$('#error').addClass('d-none');
	   $('#contactForm').parsley().validate();
        if ($('#contactForm').parsley().isValid()) {
            $(".submit").html("Processing");
            $("#contactForm").submit();
        } else {
            console.log('Not valid.');
			$('#error').removeClass('d-none');
        }
    });
});

function onSubmit() {
    // Check captcha and parsleyjs on submit
        $('#error').addClass('d-none');
		$('#contactForm').parsley().validate();
        if ($('#contactForm').parsley().isValid()) {
            $(".submit").html("Processing");
            $("#contactForm").submit();
        } else {
            console.log('Not valid.');
			$('#error').removeClass('d-none');
        }
};