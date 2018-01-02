<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />


<section class="product">
	<div class="fm-image-social-container">
		<div class="image"
			style="background-image:url('${imageResource }${dish.image }.jpg');">

			<img alt="Baked Bean Sandwich 'N' Assorted Fruits Combo (Veg)"
				src="pages/product/images/6b3806be-a1c1-4dd4-a048-2e56d33fb5ae.jpg"
				class="fm-image" itemprop="image" style="visibility: hidden;">
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
		</div>

		<div class="fm-social-container">
			<div class="social">
				<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
					href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
					href="#" class="google"><i class="fa fa-google"></i></a>
			</div>
		</div>
	</div>
	<div class="info">
		<h1>${dish.name }</h1>
		<div class="price">
			<span class="">${dish.price }</span>

		</div>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<div class="buttons">
				<div>
					<button id="addToCart"
						class="add GTM_add_to_cart_button add-to-cart"
						data-url="${home }addToCart" data-id="${dish.id }">Add to
						Cart</button>
				</div>
			</div>
		</c:if>
		<div class="fm-product-complete-detail">
			<div class="fm-detail-about-meal">

				<div class="fm-detail-about-meal-description">
					${dish.description }
					<div class="fmFoodTags">
						<div class="">
							<div class="cuisines">
								<div class="icon veg-icon">
									<div class="text">Veg</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!--open register popup-->
<div class="modal" id="modal-register-email">
	<form id="register" class="content register"
		method="post" style="padding: 17px 12px 17px 17px;"
		data-href="${home }register">

		<div class="or-divider website-modal-button">Sign up</div>
		<div>
			<input required="required" id="name" class="website-modal-button"
				type="text" name="name" placeholder="Name" style="" />
			<div class="horizontal-tooltip common-margin-top">
				<span>Please do not leave this field empty</span>
			</div>
		</div>
		<input class="website-modal-button" id="phoneNumber" type="text"
			name="phone" placeholder="Phone Number" value="" style="">
		<div class="horizontal-tooltip">
			<span>Please do not leave this field empty.</span>
		</div>

		<input class="website-modal-button" id="address" type="text"
			name="address" placeholder="Address" value="" style="">
		<div class="horizontal-tooltip">
			<span>Please do not leave this field empty</span>
		</div>

		<input class="website-modal-button" id="username" type="text"
			name="username" placeholder="Username" />

		<div class="horizontal-tooltip common-margin-top">
			<span>Please do not leave this field empty</span>
		</div>

		<input class="website-modal-button" id="password" type="password"
			name="password" placeholder="Password" />

		<div class="horizontal-tooltip">
			<span>Please do not leave this field empty</span>
		</div>
		<div id="server-error" class="server-error">
			<span class="">* The username is already registered.</span>
		</div>
		<button id="btRegister" type="button"
			class="button modal-button submit website-modal-button signupButton">
			<span class=""> Sign up</span>
		</button>

	</form>
</div>
<!--login popup-->
<div class="modal" id="modal-login">
	<form id="login" class="content login" data-href="${home }login"
		action="${home }login" method="post"
		style="padding: 17px 12px 17px 17px;">

		<div class="or-divider website-modal-button">Sign in</div>
		<input id="loginUsername"
			class="website-modal-button"
			type="text" name="username" placeholder="Username" style="">
		<div class="horizontal-tooltip common-margin-top">
			<span>Please do not leave this field empty</span>
		</div>
		<div class="horizontal-tooltip server-error">
			<span style="margin-top: -10px;" class=""> Email or
				password is incorrect. Please retry. </span>
		</div>
		<input id="loginPassword"
			class="website-modal-button"
			type="password" name="password" placeholder="Password">
		<div class="horizontal-tooltip">
			<span>Please do not leave this field empty</span>
		</div>
		<button type="button" id="btLogin"
			class="GTM_submit_login_button button modal-button submit website-modal-button">
			<span> Log in</span>
		</button>

		<input type="hidden" name="${_csrf.parameterName }"
			value="${_csrf.token }">

	</form>
</div>

<div class="overlay"></div>
