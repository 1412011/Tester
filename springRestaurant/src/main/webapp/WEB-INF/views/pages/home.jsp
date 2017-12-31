
<%@page isELIgnored="false"%>
<div class="gradient fm-main-header ">
        <nav>
            <img style="height:60px;width:139px;cursor: pointer;" src="resources/images/header-logo.svg" alt="FreshMenu">
            <ul style="justify-content: flex-start;">
                <li class="fm-header-location-view-menu" style="display: table;">
                    <div class="ng-isolate-scope">
                        <div class="bar">
                            <div class="view-menu">
                                <!-- ngIf: _getLocation() -->
                                <div class="upperHeading ">Viewing Menu for</div>
                                <!-- end ngIf: _getLocation() -->
                                <div class="arrow"><span>Ditric 1, Ho Chi Minh City, VN</span></div>

                            </div>
                        </div>
                        <!-- ngIf: show -->
                    </div>
                </li>

            </ul>
            <div class="cart-button GTM_open_cart_button">
                <span class="ng-binding">
                    
                </span>
            </div>
        </nav>

        <!-- Search -->
        <div id="fm-search" align="right">   
            <form class="form-inline">
                <input class="form-control mr-sm-2" id="inputsearch" type="search" placeholder="Search" aria-label="Search">
              </form>
        </div>
         <!-- End Search -->

         <!-- Cart -->
<!--        <div id="fm-cart-home">   
             <div class="box">

                        <form method="post" action="">
                            <div class="table-responsive">
                                <table class="table" id="table-cart">
                                    <thead>
                                        <tr>
                                            <th colspan="3">Product</th>
                                            <th>Quantity</th>
                                            <th>Unit price</th>
                                            <th>Discount</th>
                                            <th>Total</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="3"><a href="#">White Blouse Armani</a>
                                            </td>
                                            <td>
                                                <input type="number" value="2" class="form-control" min="1">
                                            </td>
                                            <td>$123.00</td>
                                            <td>$0.00</td>
                                            <td>$246.00</td>
                                            <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><a href="#">Black Blouse Armani</a>
                                            </td>
                                            <td>
                                                <input type="number" value="1" class="form-control">
                                            </td>
                                            <td>$200.00</td>
                                            <td>$0.00</td>
                                            <td>$200.00</td>
                                            <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="5">Total</th>
                                            <th colspan="2">$446.00</th>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                             /.table-responsive 
                                     <button class="btn btn-default"><i class="fa fa-refresh"></i> Update basket</button> 
                                     <button type="submit" class="btn btn-primary">Proceed to checkout <i class="fa fa-chevron-right"></i>
                                    </button> 
                                    <input type="submit" value="Proceed to checkout >>">

                        </form>

                    </div>
                     /.box 
        </div>-->
         <!-- End Cart  -->
    </div>

    <header ng-show="menu.serviceability.serviceable==true" class="">
        <div class="hero-container">
            <div id="hero" class="with-collection-nav preloaded" style="max-height: 563px;">
                <div>
                    <div class="sk-circle">
                        <div class="sk-circle1 sk-child"></div>
                        <div class="sk-circle2 sk-child"></div>
                        <div class="sk-circle3 sk-child"></div>
                        <div class="sk-circle4 sk-child"></div>
                        <div class="sk-circle5 sk-child"></div>
                        <div class="sk-circle6 sk-child"></div>
                        <div class="sk-circle7 sk-child"></div>
                        <div class="sk-circle8 sk-child"></div>
                        <div class="sk-circle9 sk-child"></div>
                        <div class="sk-circle10 sk-child"></div>
                        <div class="sk-circle11 sk-child"></div>
                        <div class="sk-circle12 sk-child"></div>
                    </div>
                </div>
                <img class="hidden" src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/7475f603-f0ca-4777-8130-80c8d7dfa8e6.jpg">
                <img style="cursor:pointer" src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/7475f603-f0ca-4777-8130-80c8d7dfa8e6.jpg" class="item">
                <img style="cursor:pointer" src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/a1c81c68-24da-42f0-aa21-389254a66e0a.jpg" class="item active">
                <div id="dots" class="dots"><span class="active"></span><span class=""></span></div>
            </div>
            <div class="carousel-nav left"></div>
            <div class="carousel-nav right"></div>
        </div>
    </header>

    <section class="menu">
        <div class="fm-menu-main-container">

            <div class="fm-menu-right-container">
                <div id="main" class="twoGrid">
                    <h2 style="margin-top: 0px;">
                            <span class="fm-category-header ng-binding">
                            Mains and Sides
                        </span>
                        <div class="fm-collection-description ng-binding" >
                            Chef made meals, inspired by cuisines from across the world, using fresh ingredients and no preservatives.
                        </div>
                      </h2>
                    <div>
                        <div class="list clearfix" id="fm-category-collection-Mains_and_Sides">
                            <div class="item ng-scope twoGrid">
                                <!-- 'in-cart': (inCart(product.id)>=0), -->
                                <div class="content out-cart">
                                    <!-- ngIf: !lazyLoadEnabled -->
                                    <div class="fm-image-container ng-scope">
                                        <a class="fm-image preloaded" count="0" preload-bg-image="//d12nlatdsuu5f7.cloudfront.net/f71ca8c7-3bea-4bb2-9856-905b924a86dd.jpg" alt="Tex-Mex Cottage Cheese Fajita (Veg)" style="background-image: url('resources/images/dish1.jpg');">
                                            <div class="spinner">
                                                <div class="sk-circle">
                                                    <div class="sk-circle1 sk-child"></div>
                                                    <div class="sk-circle2 sk-child"></div>
                                                    <div class="sk-circle3 sk-child"></div>
                                                    <div class="sk-circle4 sk-child"></div>
                                                    <div class="sk-circle5 sk-child"></div>
                                                    <div class="sk-circle6 sk-child"></div>
                                                    <div class="sk-circle7 sk-child"></div>
                                                    <div class="sk-circle8 sk-child"></div>
                                                    <div class="sk-circle9 sk-child"></div>
                                                    <div class="sk-circle10 sk-child"></div>
                                                    <div class="sk-circle11 sk-child"></div>
                                                    <div class="sk-circle12 sk-child"></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- end ngIf: !lazyLoadEnabled -->
                                    <!-- ngIf: lazyLoadEnabled -->
                                    
                                 
                                    <div class="fm-product-detail">
                                        <div class="fm-badge-container">
                                            <div class="badge-text ng-binding ng-scope">MEAL OF THE DAY</div>
                                        </div>
                                        <div class="info" count="0">
                                            <h4 style="margin-bottom: 0px;" itemprop="name">
                                                    Nguyen Hoang Anh
                                                </h4>
                                            <div class="fm-item-description" style="display: block;" itemprop="review" itemscope="" itemtype="http://schema.org/Review">
                                            </div>
                                            <div class="vegCuisineContainer hasAvailableFromText">
                                                <div class="cuisine-icon-border veg">
                                                    <div class="cuisine-icon-dot">
                                                    </div>
                                                </div>
                                                <span itemprop="category">Tex-Mex</span>
                                            </div>
                                            <span class="delivery ng-binding ng-scope hide-element">
                                                    Available from 11:00AM
                                                 </span>
                                            <!-- end ngIf: !checkTimings(product.timings, true) -->
                                        </div>
                                        <div class="fm-actions" count="0">
                                            <div class="price" itemscope="" itemtype="http://schema.org/Offer">
                                                <span class="fm-discount-price ng-binding ng-scope">
                                                        $195
                                                    </span>
                                                <!-- end ngIf: product.marketPrice && product.marketPrice > product.sellingPrice -->
                                                <span itemprop="price" class="ng-binding">$180</span>
                                                <span class="fm-discount-price-percent ng-binding ng-scope">
                                                        8% OFF
                                                    </span>
                                                <!-- end ngIf: product.marketPrice && product.marketPrice > product.sellingPrice -->
                                            </div>
                                            <div class="button add no-animate ng-scope">
                                                <div class="ng-scope">Add to cart</div>
                                            </div>
                                        </div>
                                        <div class="extra-info" ng-click=" $event.stopPropagation();">
                                            <div class="favorites-container ng-binding favourites-container-shadow">
                                                <span class="fa fa-heart-o"></span> 1591 favs
                                                <div class="favourite-tooltip ng-hide" style="display: none;">
                                                    <div class="favourite-message">
                                                        Yay! Added this dish to your favourite list.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="offer-text">
                                            </div>
                                        </div>
                                    </div>
                        
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <!--End category dish-->
            </div>
        </div>
    </section>

    <div class="overlay" ng-hide="isProductDetailsPopupOpened"></div>
    <div class="overlay" ng-hide="isProductDetailsPopupOpened"></div>
   
    <!--cart menu side-->
    <section class="cart-side-menu ng-scope" ng-class="showCart ? 'cart-side-menu--open' : ''" style="">
        <div class="cart" ng-class="{'cart--limit-height': upsaleProducts.length}">
            <div class="header">
                <span class="header__cart">Your Cart</span>
                <span class="back">
                    Close
                </span>
            </div>
            <div class="fm-delivery-fee-msg ng-binding" ng-class="{'fm-delivery-fee-msg--show': validation.message &amp;&amp; validation.message != ''}">
            </div>
            <div class="items ng-hide" ng-show="cart.items.length">
                <!-- ngRepeat: item in cart.items -->
                <div class="item ng-scope" ng-repeat="item in cart.items" style="">
                    <div class="close">×</div>
                    <div class="cuisine-icon-border non-veg" ng-class="{'veg':  item.productDTO.categories[0].name == 'Veg', 'non-veg': item.productDTO.categories[0].name == 'Non Veg', 'egg': item.productDTO.categories[0].name == 'Contains Egg'}" style=" position: absolute;left: 0px;margin-top: 2px;">
                        <div class="cuisine-icon-dot">
                        </div>
                    </div>
                   <span class="title ng-binding ng-scope" ng-if="item.productDTO.subTitle.length > 0">Kasturi Chicken in Mangalore Gassi</span>
<!--                     <div class="pre-order ng-binding ng-scope" ng-if="!checkTimings(item.productDTO.timings, true)">
                        Available only after 11:00AM
                    </div> -->
                    <!-- end ngIf: !checkTimings(item.productDTO.timings, true) -->
                    <div ng-show="item.productDTO.addons.length" class="addons ng-hide">
                        <!-- ngRepeat: addon in item.productDTO.addons -->
                    </div>
                    <div class="actions">
                        <!-- -->
                        <!-- ngIf: !item.productDTO.soldOut && checkTimings(item.productDTO.timings, true) && !kitchenClosed -->
                        <!-- ngIf: !item.productDTO.soldOut && (!checkTimings(item.productDTO.timings, true) || kitchenClosed) -->
                        <div class="button pre-order ng-scope" ng-disabled="item.productDTO.soldOut || (validation.cartErrorDTO.errorCode == '421' &amp;&amp; validation.cartErrorDTO.error[item.productId]) || menu.serviceability.serviceable == false" ng-if="!item.productDTO.soldOut &amp;&amp; (!checkTimings(item.productDTO.timings, true) || kitchenClosed)">
                            <!-- ngIf: getProductQuantity(item.productDTO)>0 -->
                            <div ng-if="getProductQuantity(item.productDTO)>0" ng-click="removeFromCart(item.productDTO,1);$event.stopPropagation();fireGAEvent('Menu', 'click', 'remove_from_cart')" class="ng-scope">-</div>
                            <!-- end ngIf: getProductQuantity(item.productDTO)>0 -->
                            <!-- ngIf: getProductQuantity(item.productDTO)>0 -->
                            <div class="count ng-binding ng-scope" ng-if="getProductQuantity(item.productDTO)>0">1</div>
                            <!-- end ngIf: getProductQuantity(item.productDTO)>0 -->
                            <!-- ngIf: getProductQuantity(item.productDTO)>0 -->
                            <div ng-if="getProductQuantity(item.productDTO)>0" ng-click="addToCart(item.productDTO,1);$event.stopPropagation();fireGAEvent('Menu', 'click', 'pre_order')" class="ng-scope">+</div>
                            <!-- end ngIf: getProductQuantity(item.productDTO)>0 -->
                        </div>
                        <!-- end ngIf: !item.productDTO.soldOut && (!checkTimings(item.productDTO.timings, true) || kitchenClosed) -->
                        <span class="price">
                        <span ng-show="!checkoutCartLoading0 &amp;&amp; item.totalPrice" class="ng-binding">$ 220</span>
                        <div ng-show="checkoutCartLoading0 || !item.totalPrice" class="ng-hide">
                            <i class="fa fa-circle-o-notch fa-spin hide-element"></i>
                        </div>
                        </span>
                    </div>
                </div>
            </div>

            <!-- Button Place order  -->
            <div class="proceed ng-hide" ng-show="cart.items.length">
                <div class="free-items ng-hide" ng-show="cart.fi.length">
                    <!-- ngRepeat: item in cart.fi -->
                    <!--<div class="thank-you">-->
                    <!--A thank you from us to you for your loyalty and an order value of ?{{cart.paymentDetails.totalAmount}}.-->
                    <!--</div>-->
                </div>
                <button ng-click="redirectToCheck($event); fireGAEvent(&quot;Cart&quot;, &quot;click&quot;, &quot;place_order&quot;, cart.paymentDetails.totalAmount)" class="btn btn--red ng-binding ng-hide" ng-show="cart.items.length" ng-disabled="cartHasSoldOutProducts() || redirectingToCheckout" ng-class="{'disabled': cartHasSoldOutProducts() || redirectingToCheckout}">
                    Place Order &nbsp; · &nbsp; $ 400
                    <i class="fa fa-circle-o-notch pull-right fa-spin ng-hide hide-element" ng-show="redirectingToCheckout"></i>
                </button>
            </div>
            <!-- End button Place Order -->

            <!-- ngIf: cart.items.length == 0 -->
            <div class="ng-scope hide-element" ng-if="cart.items.length == 0" style="">
                <img ng-src="pages/menu/resources/images/ghost1.1.svg" src="pages/menu/resources/images/ghost1.1.svg">
                <h3>Your cart is empty.</h3>
                <h4>Add some delicious food available on our menu to checkout.</h4>
                <button class="btn btn--red" ng-click="closeCart(); fireGAEvent('Cart', 'click', 'browse_food')">Browse Food</button>
            </div>
            <!-- end ngIf: cart.items.length == 0 -->
        </div>
        <div class="recommended ng-hide" ng-show="upsaleProducts.length">
            <div class="anything">Anything Else?</div>
            <div class="upsale-products">
                <!-- ngRepeat: product in upsaleProducts -->
            </div>
        </div>
    </section>

    <!--scroll on top button-->'
    <div>
        <a href="#mainController" class="scroll-to-top scroll-to-top-for-hide" deluminate_imagetype="unknown" style="">
        </a>
    </div>