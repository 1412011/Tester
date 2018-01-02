<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />

<header class="">
	<div class="hero-container">
		<div id="hero" class="with-collection-nav preloaded"
			style="max-height: 563px;">
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
			<img class="hidden"
				src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/7475f603-f0ca-4777-8130-80c8d7dfa8e6.jpg">
			<img style="cursor: pointer"
				src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/7475f603-f0ca-4777-8130-80c8d7dfa8e6.jpg"
				class="item"> <img style="cursor: pointer"
				src="https://s3-ap-southeast-1.amazonaws.com/foodvista.1/a1c81c68-24da-42f0-aa21-389254a66e0a.jpg"
				class="item active">
			<div id="dots" class="dots">
				<span class="active"></span><span class=""></span>
			</div>
		</div>
		<div class="carousel-nav left"></div>
		<div class="carousel-nav right"></div>
	</div>
</header>
<section class="menu">
	<div class="fm-menu-main-container">
		<div class="fm-menu-right-container">
			<c:if test="${not empty listBestDishSeller }">
				<div id="" class="twoGrid">
					<h2 style="margin-top: 0px;">
						<span class="fm-category-header"> Best dish seller </span>
						<div class="fm-collection-description">Chef made meals,
							inspired by cuisines from across the world, using fresh
							ingredients and no preservatives.</div>
					</h2>
					<div>
						<div class="list clearfix"
							id="fm-category-collection-Mains_and_Sides">
							<form class="fmRedirectToDishPage" action="" method="POST">
								<input type="hidden" name="dishId" value="">
							</form>
							<c:forEach var="dish" items="${listBestDishSeller }">
								<div class="item twoGrid dishItem"
									data-url="${home }products/${dish.name }"
									data-name="${dish.name }" data-id="${dish.id }">
									<div class="content out-cart">
										<div class="fm-image-container">
											<a class="fm-image preloaded" count="0"
												preload-bg-image="//d12nlatdsuu5f7.cloudfront.net/f71ca8c7-3bea-4bb2-9856-905b924a86dd.jpg"
												alt="Tex-Mex Cottage Cheese Fajita (Veg)"
												style="background-image: url('${imageResource }${dish.image }.jpg');">
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
										<div class="fm-product-detail">
											<div class="fm-badge-container">
												<div class="badge-text">MEAL OF THE DAY</div>
											</div>
											<div class="info" count="0">
												<h4 class="dishName" style="margin-bottom: 0px;"
													itemprop="name">${dish.name }</h4>
												<div class="fm-item-description" style="display: block;"></div>
											</div>
											<div class="fm-actions" count="0">
												<div class="price">
													<span class="">${dish.price }</span>
												</div>
												<c:if
													test="${pageContext.request.userPrincipal.name != null}">
													<div class="button add-to-cart no-animate"
														data-id="${dish.id }" data-url="${home }addToCart">
														<div>Add to cart</div>
													</div>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:if>

			<c:if test="${not empty dishCategoryList }">
				<c:forEach var="dishCategory" items="${dishCategoryList }">
					<div id="${dishCategory.id }" class="twoGrid">
						<h2 style="margin-top: 0px;">
							<span class="fm-category-header"> ${ dishCategory.name} </span>
							<div class="fm-collection-description">Chef made meals,
								inspired by cuisines from across the world, using fresh
								ingredients and no preservatives.</div>
						</h2>
						<div>
							<div class="list clearfix"
								id="fm-category-collection-Mains_and_Sides">
								<form class="fmRedirectToDishPage" action="" method="POST">
									<input type="hidden" name="dishId" value="">
								</form>
								<c:forEach var="dish" items="${dishCategory.dishList }">
									<div class="item twoGrid dishItem"
										data-url="${home }products/${dish.name }"
										data-name="${dish.name }" data-id="${dish.id }">
										<div class="content out-cart">
											<div class="fm-image-container">
												<a class="fm-image preloaded"
													style="background-image: url('${imageResource }${dish.image }.jpg');">
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
											<div class="fm-product-detail">
												<div class="fm-badge-container">
													<div class="badge-text">MEAL OF THE DAY</div>
												</div>
												<div class="info">
													<h4 class="dishName" style="margin-bottom: 0px;">${dish.name }</h4>
													<div class="fm-item-description" style="display: block;"></div>
												</div>
												<div class="fm-actions">
													<div class="price">
														<span class="">${dish.price }</span>
													</div>
													<c:if
														test="${pageContext.request.userPrincipal.name != null}">
														<div class="button add-to-cart no-animatee"
															data-id="${dish.id }" data-url="${home }addToCart">
															<div>Add to cart</div>
														</div>
													</c:if>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</section>
<div class="overlay"></div>
<div class="overlay"></div>
<!--instagram images-->
<div class="testimonials-and-instafeed-main-container">
	<div class="container">
		<div id="instagram-container" class="show">
			<div class="feed" id="instagram_feed_desktop">
				<a href="#" target="_blank"> @FreshMenu </a>
				<h3>ON OUR INSTAGRAM</h3>
				<div style="margin: 0 -5px;">
					<a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_0')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22711074_148911475722220_3709153131423072256_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a> <a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_1')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22710535_152993255439170_5190771442425266176_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a> <a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_2')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22709073_136841403707577_7634097432820711424_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a> <a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_3')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22793776_514499215571925_546001557204762624_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a> <a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_4')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22794495_135776977073031_6833335019960795136_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a> <a class="instagram-image" target="_blank"
						onclick="fireGAEvent('Menu', 'click', 'instagram_banner_5')"
						href="#">
						<div
							style="background-position: center; background-size: cover; background-repeat: no-repeat; background-image: url('https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/22709309_514398278925254_172793041193533440_n.jpg'); position: relative; height: 100%; width: 100%;"></div>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!--open popup change address-->
<div class="modal block" id="location-address">
	<div class="content new-location-modal city-selector-box">
		<div class="close toggle-modal-location-address">×</div>
		<img style="height: 60px; width: 65px; cursor: pointer;"
			src="${imageResource }home.svg" alt="FreshMenu">
		<h4>VIEW MENU FOR</h4>
		<div style="position: relative;">
			<div class="container">
				<div class="input">
					<img src="resources/pages/common/images/icn-search.svg"> <input
						id="ipSearchBranch" type="text"
						class="fm-location-autocomplete-input"
						placeholder="Search your location..." style="" data-id="">
					<div id="divSearchBranch" class="options" style=""></div>

					<form id="fmSearchBranch" action="${home }" method="POST">
						<input type="hidden" name="branchId" value="">
					</form>
				</div>
			</div>
		</div>
		<div class="location-action-buttons">
			<button class="submit" id="show-menu">
				<span>SEE TODAY’S MENU</span>
			</button>
		</div>
	</div>
</div>
<!--open register popup-->
<div class="modal" id="modal-register-email">
	<form id="register" class="content register" method="post"
		style="padding: 17px 12px 17px 17px;" data-href="${home }register">

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
		<input id="loginUsername" class="website-modal-button" type="text"
			name="username" placeholder="Username" style="">
		<div class="horizontal-tooltip common-margin-top">
			<span>Please do not leave this field empty</span>
		</div>
		<div class="horizontal-tooltip server-error">
			<span style="margin-top: -10px;" class=""> Email or password
				is incorrect. Please retry. </span>
		</div>
		<input id="loginPassword" class="website-modal-button" type="password"
			name="password" placeholder="Password">
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
<!--scroll on top button-->
<div>
	<a id="scrollToTop" href="#checkout-body-container"
		class="scroll-to-top scroll-to-top-for-hide" style=""> </a>
</div>
<%
	Integer hitsCount = (Integer) application.getAttribute("hitCounter");
	if (hitsCount == null || hitsCount == 0) {
		hitsCount = 1;
	} else {
		hitsCount += 1;
	}
	application.setAttribute("hitCounter", hitsCount);
%>
<p id="hitsCount">
	Total number of visits:
	<%=hitsCount%></p>

<c:if test="${(not empty error) }">
	<script type="text/javascript">
		alert('login failed');
	</script>
</c:if>

