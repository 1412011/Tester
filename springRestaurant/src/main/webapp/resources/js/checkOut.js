

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



});

function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: -33.8688, lng: 151.2195},
      zoom: 13
    });
    var input = document.getElementById('searchInput');
    //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    var autocomplete = new google.maps.places.Autocomplete(input);
    autocomplete.bindTo('bounds', map);

    var infowindow = new google.maps.InfoWindow();
    var marker = new google.maps.Marker({
        map: map,
        anchorPoint: new google.maps.Point(0, -29)
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
}

