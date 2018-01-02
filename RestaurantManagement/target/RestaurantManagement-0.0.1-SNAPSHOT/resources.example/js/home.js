$(document).ready(function() {

    var mainHeader = $('.fm-main-header');

    // fixed top header when scroll page
    $(window).scroll(function() {

        var scroll = $(this).scrollTop();
        var topDist = 30;

        if (scroll > topDist) {
            mainHeader.addClass('fm-gradient-sticky');
        } else {
            mainHeader.removeClass('fm-gradient-sticky');
        }

        // activate menu category automatically when scroll page
        var scrollPos = $(document).scrollTop();
        $('.liDishCategoryItem').each(function() {
            var dishCategoryArea = $(this).data('href');
           
            if ($(dishCategoryArea).position().top <= scrollPos-250 && $(dishCategoryArea).position().top 
                + $(dishCategoryArea).height() > scrollPos) {
                $(this).children('a').addClass("active");
            } else {
                $(this).children('a').removeClass("active");
            }
           
        });

        // show scroll to top button and vice versa
        if (scroll > 100) {
            $('.scroll-to-top').fadeIn();
        } else {
            $(".scroll-to-top").fadeOut();
        }
    });

    // click event on filter by
    $('.fm-filter-text').on('click', function() {
        if ($('.fm-filters-container').hasClass('hide-element')) {
            $('.fm-filters-container').removeClass('hide-element');
        } else {
            $('.fm-filters-container').addClass('hide-element');
        }
    });

    // scroll to menu div when click on menu category automatically
//    $('.liDishCategoryItem').on('click', function(e) {
//       // e.preventDefault();
//       // e.stopPropagation();
//        var liDishCategoryItemThis = $(this);
//        //$(window).off('scroll');
//       // $(window.disablescroll();
//        if(!$(this).children('a').hasClass('active')){
//        	$(this).children('a').addClass('active');
//        }
//        $('.aDishCategoryItem').each(function() {
//        	if($(this) != liDishCategoryItemThis.children('a')) {
//        		$(this).removeClass('active');
//        	}	
//        })
//       
//
//        var dishCategoryArea = $(this).data('href');     
//      
////        $('html, body').animate({
////          scrollTop: $(dishCategoryArea).offset().top
////        }, 'slow');
//        
////        $('html, body').animate({
////            scrollTop: $(dishCategoryArea).offset().top
////        }, 2000);
//        
//        var target = this.hash,
//        $target = $(target);
//
//    $('html, body').stop().animate( {
//      'scrollTop': $target.offset().top-40
//    }, 900, 'swing', function () {
//      window.location.hash = target;
//    } );
//        
//        //$('body').scrollTo(dishCategoryArea); 
//        
//      //  $(dishCategoryArea).animate({"scrollTop": $(dishCategoryArea).scrollTop() + 100});
//
//
//    });
    
    $('.aDishCategoryItem').bind('click.smoothscroll',function (e) {
        e.preventDefault();
        var target = this.hash,
            $target = $(target);

        $('html, body').stop().animate( {
          'scrollTop': $target.offset().top-120
        }, 900, 'swing', function () {
         // window.location.hash = target;
        } );
     });
    
    // scroll to top
    $('#scrollToTop').bind('click.smoothscroll',function (e) {
        e.preventDefault();
        var target = this.hash,
            $target = $(target);

        $('html, body').stop().animate( {
          'scrollTop': $target.offset().top
        }, 900, 'swing', function () {
         // window.location.hash = target;
        });
     });

    // // scroll to menu div when click on menu category automatically
    // $('a[href^="#"]').on('click', function(e) {
    //     e.preventDefault();
    //     $(document).off("scroll");

    //     $('a').each(function() {
    //         $(this).removeClass('active');
    //     })
    //     $(this).addClass('active');

    //     var target = this.hash,
    //         menu = target;
    //     $target = $(target);
    //     $('html, body').stop().animate({
    //         'scrollTop': $target.offset().top + 2
    //     }, 500, 'swing', function() {
    //         window.location.hash = target;
    //         $(document).on("scroll", onScroll);
    //     });
    // });

    // click on cart to open cart side menu and vice versa
//    $('.cart-button').on('click', function() {
//        if ($('.cart-side-menu').hasClass('cart-side-menu--open')) {
//            $('.cart-side-menu').removeClass('cart-side-menu--open');
//            $('.menu-page').removeClass('menu-page--cart-open');
//        } else {
//            $('.cart-side-menu').addClass('cart-side-menu--open');
//            $('.menu-page').addClass('menu-page--cart-open');
//        }
//    });

    // open change address popup
    $('.fm-header-location-view-menu').on('click', function(e) {
        $('.modal.block').addClass('open');
        $('.overlay').addClass('active');
        e.stopPropagation();
    });

    // disable close address popup when click on popup
    $('.content.new-location-modal.city-selector-box').on('click', function(e) {
        e.stopPropagation();
    });

    // close popup when click outside
    $(document).click(function() {
        // close address popup
        $('.modal.block').removeClass('open');

        // close register popup
        $('#modal-register-email').removeClass('open');

        // close login popup
        $('#modal-login').removeClass('open');
        
        $('.overlay').removeClass('active');
    });

    // click on carousel left
    $('.carousel-nav.left').on('click', function() {
        carouselSlide();
    });

    // click on carousel right
    $('.carousel-nav.right').on('click', function() {
        carouselSlide();
    });

    // auto change carousel image
    window.setInterval(function() {
        /// call your function here
        carouselSlide();
    }, 5000);

    // carousel image change
    var carouselSlide = function carouselSlide() {
        $('#hero>img').toggleClass('active');
        $('#dots>span').toggleClass('active');
    };

    // open register popup
    $('.GTM_open_sign_up_modal_button').on('click', function(e) {
        $('#modal-register-email').addClass('open');
        $('.overlay').addClass('active');
        e.stopPropagation();
    });

    // disable close register popup when click on popup
    $('.content.register').on('click', function(e) {
        e.stopPropagation();
    });

    // open login popup
    $('.GTM_open_login_modal_button').on('click', function(e) {
        $('#modal-login').addClass('open');
        $('.overlay').addClass('active');
        e.stopPropagation();
    });

    // disable close login popup when click on popup
    $('.content.login').on('click', function(e) {
        e.stopPropagation();
    });

    // search location for branch
	  $('#ipSearchBranch').autocomplete({
		serviceUrl: 'getBranch',
		paramName: 'tagName',
		delimiter: ',',
		appendTo: '#divSearchBranch',
		dataType: 'json',
		timeout : 100000,
	    transformResult: function(response) {
	    	
	    	console.log(response);
	    	$('.autocomplete-suggestions').removeAttr('style');
	        return {
	            suggestions: $.map(response, function(item) {
	                return { 
	                	value: item.address, 
	                	id: item.id,
	                };
	            })
	        };
	    },
	    onSelect: function(suggestion) {
	    	console.log(suggestion);
	    	$(this).data('id', suggestion.id);
	    },
	    formatResult: function (suggestion, currentValue) {
	        // Do not replace anything if there current value is empty
	        if (!currentValue) {
	            return suggestion.value;
	        }
	        //var pattern = '(' + utils.escapeRegExChars(currentValue) + ')';
	        // removed <strong> highlight
	        return suggestion.value
	            .replace(/&/g, '&amp;')
	            .replace(/</g, '&lt;')
	            .replace(/>/g, '&gt;')
	            .replace(/"/g, '&quot;');
	    }
	    	  
	    
	});
	  
	// click see menu today
	$('.location-action-buttons').on('click', function() {
		var branchAddress = $('#ipSearchBranch').val();
		var branchId = $('#ipSearchBranch').data('id');
		//console.log(branchId);
		//console.log(branchAddress);
		if(branchAddress) {
			//$('#branchAddress').text(branchAddress);
			//$('#fmSearchBranch').attr('action', '${home}');
			$('#fmSearchBranch').find('input:first').attr('value', branchId);
			$('#fmSearchBranch').submit();
			
			
		}
		$(document).click();
		 
	});
	
	// click single dish to open the dish page
	$('.dishItem').on('click', function() {
		var dishPageUrl = $(this).data('url');
		var dishId = $(this).data('id');
		var dishName = $(this).data('name');
		$('.fmRedirectToDishPage').find('input:first').attr('value', dishId);
		$('.fmRedirectToDishPage').attr('action', dishPageUrl);
		$('.fmRedirectToDishPage').submit();
	});
	
	// click search dish button
	$('#btSearchDish').on('click', function() {
		var dishQuery = $('#ipSearchDish').val();
		console.log(dishQuery);
		$('.dishItem').each(function(index) {
			var dishName = $(this).find('.dishName').text();
			console.log(dishName);
			console.log(dishName.toLowerCase().indexOf(dishQuery));	
//			if (dishName.toLowerCase().indexOf(dishQuery) >= 0) {
//				$(this).hide();
//			}
			$(this).toggle(dishQuery.length === 0 || dishName.toLowerCase().indexOf(dishQuery) >= 0);
			
		});
	});
	
	// toggle dropdown options when click userProfile
	$('#userProfile').on('click', function() {
		$(this).toggleClass('active');
	});
	
	// register account
	$('#btRegister').on('click', function() {
		var name = $('#name').val();
		var phoneNumber = $('#phoneNumber').val();
		var address = $('#address').val();
		var username = $('#username').val();
		var password = $('#password').val();
		
		$('#name').next().toggleClass('enabled', !name);
		$('#phoneNumber').next().toggleClass('enabled', !phoneNumber);
		$('#address').next().toggleClass('enabled', !address);
		$('#username').next().toggleClass('enabled', !username);
		$('#password').next().toggleClass('enabled', !password);
		
		if(name && phoneNumber && address && username && password) {
			var registerHref = $('#register').data('href');
			
			$.ajax({
				type: 'POST',
				contentType: 'application/json',
				url: registerHref,
				dataType: 'json',
				timeout: 100000,
				data: JSON.stringify({
					name: name,
					phoneNumber: phoneNumber,
					address: address,
					username: username,
					password: password
				}),
				success: function(response) {
					console.log(JSON.stringify(response));
					$('#server-error').toggleClass('enabled', response.result == 'error')
					if(response.result == 'success') {
						location.reload();
					}
				},
				error : function(e) {
					console.log('ERROR: ', e);
				},
				done : function(e) {
					console.log('DONE: ', e);
				}
			});
		}
	});
	
	// login
	$('#btLogin').on('click', function() {
		var username = $('#loginUsername').val();
		var password = $('#loginPassword').val();

		$('#loginUsername').next().toggleClass('enabled', !username);
		$('#loginPassword').next().toggleClass('enabled', !password);
		
		if(username && password) {
			$('#login').submit();
//			var loginHref = $('#login').data('href');
//			$.ajax({
//				type: 'POST',
//				url: loginHref,
//				data: $('#login').serialize(),
//				success: function(response) {
//					console.log(JSON.stringify(response));
////					$('#server-error').toggleClass('enabled', response.result == 'error')
////					if(response.result == 'success') {
////						location.reload();
////					}
//				},
//				error : function(e) {
//					console.log('ERROR: ', e);
//				},
//				done : function(e) {
//					console.log('DONE: ', e);
//				}
//			});
		}
	});
	
	// close popup address
	$('.close.toggle-modal-location-address').on('click', function() {
		$(document).click();
	});
	
	// Click add to cart button
	$('.add-to-cart').on('click', function(e) {
		console.log($(this).data('id'));
		var addToCartUrl = $(this).data('url');
		e.stopPropagation();
		
		$.ajax({
			type : 'POST',
			contentType : 'application/json',
			url : addToCartUrl,
			dataType : 'json',
			timeout : 100000,
			data: JSON.stringify({ 
				dishId : $(this).data('id')
			}),
			success : function(response) {
				//console.log(JSON.stringify(response));
				console.log(response.total);
				$('#cart-button').text(response.total);
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
