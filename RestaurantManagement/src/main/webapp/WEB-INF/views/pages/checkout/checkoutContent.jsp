<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />


<section id="container">
	<div class="main">
		<h4>CUSTOMER INFORMATION</h4>
		<div id="accordion" role="tablist" aria-multiselectable="true">
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<div class="">
							<button class="checkout-accordion-button collapsed"
								id="checkout-address-button" data-toggle="collapse"
								data-parent="#accordion" aria-expanded="userInfoFetched"
								aria-controls="checkout-address-section"
								data-target="#checkout-address-section">
								<span class="checkout-addresses-header">
									<p>Deliver to</p>
									<p class="sub">Choose delivery address</p>
								</span> <i class="ion-chevron-up"></i> <i class="ion-chevron-down"></i>
							</button>
						</div>
					</h4>
				</div>
				<div id="checkout-address-section" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo">
					<!-- Google map -->
					<input id="cbDefaultAddress" type="checkbox"> <span
						id="defaultAddress">${defaultAddress }</span> <br /> <br />
					<div id="googleMapAddress" style="width: 100%; height: 100%">
						<!--  <input id="searchInput" class="controls" type="text" placeholder="Enter a location"> -->
						<div id="map"></div>
						<div class="fm-gmua-input-container">
							<div class="fm-gmua-input">
								<input id="searchAddress" type="text"
									style="border: none !important;"
									placeholder="Search your location...">
							</div>
						</div>
					</div>
					<div>
						<div class="location-address">
							<button id="saveDeliveryAddress" type="button"
								class="btn btn-block btn-submit-auth-modal">SAVE AND
								CONTINUE</button>
						</div>
						<div class="location-address"></div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<div class="">
							<button class="collapsed checkout-accordion-button"
								id="checkout-payment-button" data-toggle="collapse"
								data-parent="#accordion" aria-expanded="false"
								aria-controls="checkout-payment-section"
								data-target="#checkout-payment-section">
								<span class="checkout-payment-header">
									<p>Payment Method</p>
									<p class="checkout-payment-options-header sub">Online,
										Wallet or Cash on Delivery</p>
								</span> <i class="ion-chevron-up"></i> <i class="ion-chevron-down"></i>
							</button>
						</div>
					</h4>
				</div>
				<!--  dummy form for cards tokenize call -->
				<div id="pseudo-cards-tokenize" class="">
					<form method="POST" enctype="application/json"
						id="pseudo-cards-tokenize-form" class=" "></form>
				</div>
				<div id="checkout-payment-section" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree">
					<div style="padding: 30px 4% 0px 4%;">
						<!-- ngIf: offerPaymentOptions && offerPaymentOptions.length > 0 && cart.paymentDetails.payableAmount > 0 -->
						<div id="payment-options-container">
							<div class="fm-payment-method-header">Payment Methods</div>
							<div class="row" id="payment-outer-options">
								<div class="payment-options ">
									<div on="paymentItem.paymentGroup">
										<div
											class="radio custom-radio-button col-xs-12 has-more-options payment-options-inner-container "
											id="fmCASH">
											<input type="radio" id="paymentOption8" value="CASH"
												name="paymentMethod"> <label for="paymentOption8"
												class=""> Cash <br>
											</label> <br>
											<c:if test="${not empty cartList }">
												<button id="placeOrder" data-url="${home }placeOrder"
													data-home-url="${home }" type="submit"
													class="btn btn-submit-auth-modal pull-left GTM_continue_to_payment_button"
													style="margin-bottom: 20px; width: auto;">
													<span class="">PLACE ORDER</span>
												</button>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="secure-gateways">
			<small>100% secure payments with</small>
			<div class="card-type">
				<img
					src="${resource }pages/checkout/devices/default/images/mastercard.jpg">
				<img
					src="${resource }pages/checkout/devices/default/images/visa.jpg">
			</div>
		</div>
	</div>
	<div class="side">
		<h4>ORDER SUMMARY</h4>
		<div id="info">
			<div class="cart">
				<header class="list choose-delivery-window">
					<div style="margin-top: 6px">
						<button id="deliveryNowBtn" class=" active">
							DELIVER DATE
							<div class="underline"></div>
						</button>
					</div>
					<div class="container">
						<p>
							Date: <input type="text" id="datepicker">
						</p>
					</div>
				</header>
				<div class="list">
					<c:if test="${empty cartList }">
						<div class="msg">
							<br> <br> <br> Your cart is empty. <br> <br>
							<br>
						</div>
					</c:if>
					<c:if test="${not empty cartList }">
						<c:forEach var="dish" items="${cartList }">
							<div class="item ">
								<div>
									<div class="image">
										<img alt="Item" src="${imageResource }dish1.jpg">
									</div>
									<div class="content">
										<span class="remove" data-id="${dish.id }"> ×</span>
										${dish.name }
									</div>
									<div class="quantity-price-container">
										<span class="quantity"> <select name="singleSelect"
											class="slQuantity" data-id="${dish.id }"
											data-price="${dish.price }">
												<c:forEach var="i" begin="1" end="10">
													<option ${dish.quantity == i ? 'selected' : '' } class=" "
														value="${i }">${i }</option>
												</c:forEach>
										</select>
										</span>
									</div>
									<span class="price-of-item-on-cart  "> ${dish.price } </span>
									<div class="confirm">
										<div class="option">
											<div>
												<span class="hover sprite-icon group_hover"> </span> <span
													class="sprite-icon group"> </span> <span>Delete Item</span>
											</div>
										</div>
										<div class="option">
											<div>
												<span class="hover sprite-icon path_hover"> </span> <span
													class="sprite-icon path"> </span> <span>Cancel</span>
											</div>
										</div>
									</div>
								</div>
								<hr>
							</div>
						</c:forEach>

						<footer>
							<hr>
							<div class="total">
								<label>GRAND TOTAL</label> <label class="pull-right  totalPrice"
									data-url="${home }checkout"> ${totalPrice } </label>
							</div>
						</footer>
					</c:if>
				</div>
				<div class="need-help">
					<h4>NEED HELP WITH PLACING YOUR ORDER?</h4>
					<div class="box">
						<h6>Reach out to us on</h6>
						<a class="" href="tel:080-4042-4242">080-4042-4242</a>
						<p>Lines open from 8:00 AM to 11:00 PM</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
