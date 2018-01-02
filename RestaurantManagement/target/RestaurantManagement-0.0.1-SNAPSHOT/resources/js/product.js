$(document).ready(function() {
	
	// 
//	$('.cart-button').on('click', function() {
//		var url = $(this).data('url');
//		//console.log(url);
//		
//		window.location.href = url;
//	});
	
	// Click add to cart button
	$('#addToCart').on('click', function() {
		console.log($(this).data('id'));
		$.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : 'addToCart',
			dataType : 'json',
			timeout : 100000,
			data: JSON.stringify({ 
				dishId : $(this).data('id')
			}),
			success : function(response) {
				console.log(JSON.stringify(response));
			},
			error : function(e) {
				console.log('ERROR: ', e);
			},
			done : function(e) {
				console.log('DONE: ', e);
			}
		});
	});
});