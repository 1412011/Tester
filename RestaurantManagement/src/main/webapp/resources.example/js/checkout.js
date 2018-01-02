

$(document).ready(function() {

	// click on delivery
	$('#deliveryLaterBtn').on('click', function() {
		$('#deliveryNowBtn').removeClass('active');
		$(this).addClass('active');

		$('.delivery-time').removeClass('hide-element');
		$('.delivery-time.delivery-time-now').addClass('hide-element');
		
	});

	$('#deliveryNowBtn').on('click', function() {
		$(this).addClass('active');
		$('#deliveryLaterBtn').removeClass('active');

		$('.delivery-time').addClass('hide-element');
		$('.delivery-time.delivery-time-now').removeClass('hide-element');
	});

	// click on payment tab
	$('#paymentOption1').on('click', function() {
		$('.checkout-basic-form.checkout-cards-form').removeClass('hide-element');
		$('#placeOrderCardBtn').removeClass('hide-element');
		$('#placeOrderCashBtn').addClass('hide-element');


	});

	$('#paymentOption8').on('click', function() {
		$('.checkout-basic-form.checkout-cards-form').addClass('hide-element');
		$('#placeOrderCardBtn').addClass('hide-element');
		$('#placeOrderCashBtn').removeClass('hide-element');

		
	});

	// google map
	$('#checkout-address-button').click();
	$('.checkout-accordion-button').on('click', function() {

	});
	
	// press remove one dish
	$('.remove').on('click', function() {
		var id = $(this).data('id');
		$(this).parents('.item').remove();
		//updateTotalPriceAndPlaceOrderBtn();
		var quantity = 0;
		
		sendUpdatedDish(id, quantity);
		//updateTotalPriceAndPlaceOrderBtn();
	});
	
	// change quantity product event
	$('.slQuantity').on('change', function() {
		var quantity = $(this).val();
		var id = $(this).data('id');
		
//		console.log(quantity);
//		console.log(id);
		sendUpdatedDish(id, quantity);
	});
	
	// calculate the total price
	function updateTotalPriceAndPlaceOrderBtn() {
		var totalPrice = 0;
		if($('.slQuantity').length > 0) {
			$('.slQuantity').each(function(i, dishObj) {
				totalPrice += $(dishObj).data('price') * $(dishObj).val();
			});
		}
		console.log(totalPrice);
		$('.totalPrice').text(totalPrice);
		//$('#placeOrder').toggle(totalPrice > 0);
		//$('.msg').toggle(totalPrice <= 0);
		//$('.total').toggle(totalPrice > 0);
		if(totalPrice == 0){
			location.reload();
		}

	};
	
	// send updated dish to server
	function sendUpdatedDish(id, quantity) {
		var curUrl = $('.totalPrice').data('url');
		$.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : curUrl + '/updateCart',
			dataType : 'json',
			timeout : 100000,
			data: JSON.stringify({ 
				dishId: id,
				dishQuantity: quantity
			}),
			success : function(response) {
				console.log(JSON.stringify(response));
				updateTotalPriceAndPlaceOrderBtn();
			},
			error : function(e) {
				console.log('ERROR: ', e);
			},
			done : function(e) {
				console.log('DONE: ', e);
			}
		});
	};
	
	// click saveDeliveryAddress button
	$('#saveDeliveryAddress').on('click', function() {
		$('.checkout-accordion-button.collapsed').click();
	});
	
	// click placeOrder button
	$('#placeOrder').on('click', function() {
		var deliveryAddress = !$('#cbDefaultAddress').prop('checked') && $('#searchAddress').val() || '';
		var placeOrderUrl = $(this).data('url');
		var deliveryDatetime = $('#datepicker').val();
		var defaultAddress = $('#cbDefaultAddress').prop('checked') && $('#defaultAddress').text() || '';
		
		var homeUrl = $(this).data('home-url');
		console.log(homeUrl);
//		console.log($('#cbDefaultAddress').prop('checked'));
//		console.log(deliveryAddress);
//		console.log(defaultAddress);
		var finalAddress = defaultAddress || deliveryAddress;
//		console.log('real address: ' +  realAddress);
		//console.log( $('#defaultAddress').text());
		$.ajax({
			type: 'POST',
			contentType: 'application/json',
			url: placeOrderUrl,
			dataType: 'json',
			timeout: 100000,
			data: JSON.stringify({
				deliveryAddress: finalAddress,
				deliveryDatetime: deliveryDatetime
			}),
			success: function(response) {
//				console.log(JSON.stringify(response));
//				var x = window.confirm("Order successfully! Do you want to go home page for another order?")
//				if (x)
//				    window.location = homeUrl;
				alert('Order successfully!');
				window.location = homeUrl;
			},
			error : function(e) {
				console.log('ERROR: ', e);
			},
			done : function(e) {
				console.log('DONE: ', e);
			}
		});
	});
	
	// set up datepicker choose delivery datetime
	$( "#datepicker" ).appendDtpicker({
		closeOnSelected: true,
		ampm: true
	});
	
	// click on default address
	$('#cbDefaultAddress').on('change', function() {
//		console.log('click');
//		console.log(this.checked);
		$('#googleMapAddress').toggle(!$(this).prop('checked'));
	});
	

});

function initMap() {
	
    
	var defaultPoint = {lat: 10.762789, lng: 106.682546};
	
	var map = new google.maps.Map(document.getElementById('map'), {
      center: defaultPoint,
      zoom: 13
    });
    var input = document.getElementById('searchAddress');
    
    //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    var autocomplete = new google.maps.places.Autocomplete(input);
    autocomplete.bindTo('bounds', map);

    var infowindow = new google.maps.InfoWindow();
    var marker = new google.maps.Marker({
        map: map,
        anchorPoint: new google.maps.Point(0, -29),
        position: defaultPoint,
        draggable: true
    });
    
    var geocoder = new google.maps.Geocoder;
	geocoder.geocode({
		'location' : defaultPoint
	}, function(results, status) {
		if (status === 'OK') {
			if (results[0]) {
				//console.log(JSON.stringify(results[0]));
				input.value = results[0].formatted_address;
			} else {
				console.log('No results found');
			}
		} else {
			console.log('Geocoder failed due to: ' + status);
		}
	});

    autocomplete.addListener('place_changed', function() {
        infowindow.close();
        marker.setVisible(false);
        var place = autocomplete.getPlace();
        if (!place.geometry) {
            window.alert("Autocomplete's returned place contains no geometry");
            return;
        }
  
        // If the place has a geometry, then present it on a map.
        if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
        } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);
        }
        marker.setIcon(({
            url: place.icon,
            size: new google.maps.Size(71, 71),
            origin: new google.maps.Point(0, 0),
            anchor: new google.maps.Point(17, 34),
            scaledSize: new google.maps.Size(35, 35)
        }));
        marker.setPosition(place.geometry.location);
        marker.setVisible(true);
    
        var address = '';
        if (place.address_components) {
            address = [
              (place.address_components[0] && place.address_components[0].short_name || ''),
              (place.address_components[1] && place.address_components[1].short_name || ''),
              (place.address_components[2] && place.address_components[2].short_name || '')
            ].join(' ');
        }
    
        infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
        infowindow.open(map, marker);
    });
    
    google.maps.event.addListener(marker, 'dragend', function(marker){
        var latLng = marker.latLng; 
        currentLatitude = latLng.lat();
        currentLongitude = latLng.lng();
        //console.log(currentLatitude);
        //console.log(currentLongitude);
        var geocoder = new google.maps.Geocoder;
		geocoder.geocode({
			'location' : latLng
		}, function(results, status) {
			if (status === 'OK') {
				if (results[0]) {
					//console.log(JSON.stringify(results[0]));
					input.value = results[0].formatted_address;
				} else {
					console.log('No results found');
				}
			} else {
				console.log('Geocoder failed due to: ' + status);
			}
		});
     }); 

	 
}


