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
        $('#fm-collection-nav a').each(function() {
            var currLink = $(this);
            var refElement = $(currLink.attr("href"));
            if (refElement.length) {
                if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
                    $('#fm-collection-nav a').removeClass("active");
                    currLink.addClass("active");
                } else {
                    currLink.removeClass("active");
                }
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
    $('li>a[href^="#"]').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        //$(window).off('scroll');
       // $(window.disablescroll();

        $('a').each(function() {
            $(this).removeClass('active');
        })
        $(this).addClass('active');

        var target = this.hash,
            menu = target;
        $target = $(target);
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top + 2
        }, 500, 'swing', function() {
            window.location.hash = target;
            //$(window).on('scroll');
            //$(document).on("scroll", onScroll);
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
    $('.cart-button').on('click', function() {
        if ($('.cart-side-menu').hasClass('cart-side-menu--open')) {
            $('.cart-side-menu').removeClass('cart-side-menu--open');
            $('.menu-page').removeClass('menu-page--cart-open');
        } else {
            $('.cart-side-menu').addClass('cart-side-menu--open');
            $('.menu-page').addClass('menu-page--cart-open');
        }
    });

    $('.back').on('click', function() {
        if ($('.cart-side-menu').hasClass('cart-side-menu--open')) {
            $('.cart-side-menu').removeClass('cart-side-menu--open');
            $('.menu-page').removeClass('menu-page--cart-open');
        } else {
            $('.cart-side-menu').addClass('cart-side-menu--open');
            $('.menu-page').addClass('menu-page--cart-open');
        }
    });
    
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
    $('.GTM_open_sign_up_modal_.backutton').on('click', function(e) {
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


});