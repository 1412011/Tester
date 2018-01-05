<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="home" scope="application"></c:url>
<div class="gradient fm-main-header ">
        <nav>
            <a href="${pageContext.request.contextPath}"><img style="height:60px;width:139px;cursor: pointer;" src="resources/images/header-logo.svg" alt="FreshMenu"></a>
            <ul style="justify-content: flex-start;">
                <li class="fm-header-location-view-menu" style="display: table;">
                    <div class="ng-isolate-scope">
                        <div class="bar">
                            <div class="view-menu">
                                <!-- ngIf: _getLocation() -->
                                <div class="upperHeading ">Viewing Menu for</div>
                                <!-- end ngIf: _getLocation() -->
<!--                                <div class="arrow"><span>Ditric 1, Ho Chi Minh City, VN</span></div>-->
                                    <div class="center-selected">
                                        <select name="sources" id="sources" class="custom-select sources" placeholder="Source Type">
                                        <c:forEach var = "branches" items="${listbranch}">
                                            <c:set var="idbranchselected" value="${idbranch}"/>
                                            <option value="${branches.id}" <c:if test = "${branches.id == idbranchselected}">selected</c:if>>
                                                ${branches.name}
                                            </option>
                                        </c:forEach>
                                        </select>
                                      </div>

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

        <div id="fm-search" align="right">   
            <form class="form-inline">
                <input class="form-control mr-sm-2" id="inputsearch" onkeyup="handle()" data-info="" type="search" placeholder="Search" aria-label="Search">
              </form>
        </div>
        
    </div>

    <header class="">
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
                <c:if test="${not empty listDishOnBranch}">
                <div id="main" class="twoGrid">
                    <h2 style="margin-top: 0px;">
                            <span class="fm-category-header ng-binding">
                            Menu Dish Side
                        </span>
                        <div class="fm-collection-description ng-binding" >
                            Chef made meals, inspired by cuisines from across the world, using fresh ingredients and no preservatives.
                        </div>
                      </h2>
                    <div>
                        <div class="list clearfix" id="fm-category-collection-Mains_and_Sides">
                           <c:forEach var="dish" items="${listDishOnBranch }">
                            <div class="item ng-scope twoGrid">
                                <!-- 'in-cart': (inCart(product.id)>=0), -->
                                <div class="content out-cart">
                                    <!-- ngIf: !lazyLoadEnabled -->
                                    <div class="fm-image-container ng-scope">
                                        <a class="fm-image preloaded" count="0" preload-bg-image="//d12nlatdsuu5f7.cloudfront.net/f71ca8c7-3bea-4bb2-9856-905b924a86dd.jpg" alt="Tex-Mex Cottage Cheese Fajita (Veg)" 
                                           style="background-image: url('resources/images/${dish.image}.jpg');">
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
                                                    ${dish.name}
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
<!--                                            <span class="delivery ng-binding ng-scope hide-element">
                                                    Available from 11:00AM
                                                 </span>-->
                                            <!-- end ngIf: !checkTimings(product.timings, true) -->
                                        </div>
                                        <div class="fm-actions" count="0">
                                            <div class="price" itemscope="" itemtype="http://schema.org/Offer">
<!--                                                <span class="fm-discount-price ng-binding ng-scope">
                                                        ${dish.price}
                                                    </span>-->
                                                <!-- end ngIf: product.marketPrice && product.marketPrice > product.sellingPrice -->
                                                <span itemprop="price" class="ng-binding">${dish.price}</span>
<!--                                                <span class="fm-discount-price-percent ng-binding ng-scope">
                                                        8% OFF
                                                    </span>-->
                                                <!-- end ngIf: product.marketPrice && product.marketPrice > product.sellingPrice -->
                                            </div>
                                            <div class="button add no-animate ng-scope" data-id="${dish.id }">
                                                <div class="ng-scope">
                                                    Add to cart
                                                </div>
                                            </div>
                                        </div>
                                        <div class="extra-info" ng-click=" $event.stopPropagation();">
                                            <div class="favorites-container ng-binding favourites-container-shadow">
<!--                                                <span class="fa fa-heart-o"></span> 1591 favs-->
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
                           </c:forEach>
                        </div>
                    </div>
                </div>
                </c:if>
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
           
<!--            items-->
            <div class="items ng-hide" ng-show="cart.items.length">
              <c:forEach var="items" items="${listcart}">
                <!-- ngRepeat: item in cart.items -->
                <div class="item ng-scope" ng-repeat="item in cart.items" style="">
                    <div class="close" data-id="${items.id}">×</div>
                    <div class="cuisine-icon-border non-veg" ng-class="{'veg':  item.productDTO.categories[0].name == 'Veg', 'non-veg': item.productDTO.categories[0].name == 'Non Veg', 'egg': item.productDTO.categories[0].name == 'Contains Egg'}" style=" position: absolute;left: 0px;margin-top: 2px;">
                        <div class="cuisine-icon-dot">
                        </div>
                    </div>
                   <span class="title ng-binding ng-scope" ng-if="item.productDTO.subTitle.length > 0">${items.name}</span>
<!--                     <div class="pre-order ng-binding ng-scope" ng-if="!checkTimings(item.productDTO.timings, true)">
                        Available only after 11:00AM
                    </div> -->
                    <!-- end ngIf: !checkTimings(item.productDTO.timings, true) -->
                    <div class="addons ng-hide">
                        <!-- ngRepeat: addon in item.productDTO.addons -->
                    </div>
                    <div class="actions">
                        <!-- -->
                        <div class="button pre-order-- ng-scope">
<!--                            <div class="decre-order-dish ng-scope" data-id="${items.id}">-</div>
                            <div class="count ng-binding ng-scope"><span class="items-quantity">${items.quantity}</span></div>
                            <div class="incre-oder-dish ng-scope" data-id="${items.id}">+</div>-->
                            
                            <button class="button-pre button-decre" data-id="${items.id}">-</button>
                            <button class="button-pre button-quantity-${items.id}" disabled >${items.quantity}</button>
                            <button class="button-pre button-incre" data-id="${items.id}">+</button>
                        </div>
                        <!-- end ngIf: !item.productDTO.soldOut && (!checkTimings(item.productDTO.timings, true) || kitchenClosed) -->
                        <span class="price">
                        <span ng-show="!checkoutCartLoading0 &amp;&amp; item.totalPrice" class="ng-binding">$ ${items.price}</span>
                        <div ng-show="checkoutCartLoading0 || !item.totalPrice" class="ng-hide">
                            <i class="fa fa-circle-o-notch fa-spin hide-element"></i>
                        </div>
                        </span>
                    </div>
                </div>
                           </c:forEach>
            </div>
     
            <c:if test ="${not empty listcart}">
            <!-- Button Place order  -->
            <div class="proceed ng-hide" ng-show="cart.items.length">
<!--                <div class="free-items ng-hide" ng-show="cart.fi.length">
                     ngRepeat: item in cart.fi 
                    <div class="thank-you">
                    A thank you from us to you for your loyalty and an order value of ?{{cart.paymentDetails.totalAmount}}.
                    </div>
                </div>-->
                <button class="btn btn--red ng-binding ng-hide" ng-class="{'disabled': cartHasSoldOutProducts() || redirectingToCheckout}">
                    <span class="place-oder-btn">Order Here &nbsp; · &nbsp; $ <span id ="span-total-here">${totalpricehome}</span></span>
                    <i class="fa fa-circle-o-notch pull-right fa-spin ng-hide hide-element" ng-show="redirectingToCheckout"></i>
                </button>
            </div>
            <div class="proceed ng-hide" >
<!--                <div class="free-items ng-hide" >
                     ngRepeat: item in cart.fi 
                    <div class="thank-you">
                    A thank you from us to you for your loyalty and an order value of ?{{cart.paymentDetails.totalAmount}}.
                    </div>
                </div>-->
                <button class="btn btn--yellow ng-binding ng-hide"  ng-class="{'disabled': cartHasSoldOutProducts() || redirectingToCheckout}">
                    <span class="place-oder-btn">Order Home &nbsp; · &nbsp; $ <span id ="span-total-home">${totalpricehome}</span></span>
                    <i class="fa fa-circle-o-notch pull-right fa-spin ng-hide hide-element" ng-show="redirectingToCheckout"></i>
                </button>
            </div>
            </c:if>
            <!-- End button Place Order -->
            <c:if test ="${empty listcart}">
            <!-- ngIf: cart.items.length == 0 -->
            <div class="ng-scope hide-element"  style="">
                <img ng-src="pages/menu/resources/images/ghost1.1.svg" src="pages/menu/resources/images/ghost1.1.svg">
                <h3>Your cart is empty.</h3>
                <h4>Add some delicious food available on our menu to checkout.</h4>
                <button class="btn btn--red" ng-click="closeCart(); fireGAEvent('Cart', 'click', 'browse_food')">Browse Food</button>
            </div>
            </c:if>
            <!-- end ngIf: cart.items.length == 0 -->
        </div>
        <div class="recommended ng-hide" ng-show="upsaleProducts.length">
            <div class="anything">Anything Else?</div>
            <div class="upsale-products">
                <!-- ngRepeat: product in upsaleProducts -->
            </div>
        </div>
    </section>

    <!--scroll on top button-->
    <div>
        <a href="#mainController" class="scroll-to-top scroll-to-top-for-hide" deluminate_imagetype="unknown" style="">
        </a>
    </div>
    