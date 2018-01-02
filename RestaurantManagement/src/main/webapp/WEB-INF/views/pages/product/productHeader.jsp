<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />

<div class="fm-top-bar">
	<div class="fm-top-bar-inner-container">
		<span class="fm-top-bar-left"> <a href="#"
			class="toggle-modal-download-app fm-top-bar-text"
			style="margin-right: 10px;"> Download app </a>

		</span> <span class="fm-top-bar-right "> <a
			class="fm-top-bar-text fm-common-padding normal header-mobile-no ">080-4042-4242</a>
			<span class="border-after"></span> <c:if
				test="${pageContext.request.userPrincipal.name == null}">
				<span
					class="fm-top-bar-text fm-common-padding normal divider-before">
					<a href="#" class="GTM_open_login_modal_button">Log in</a>
				</span>
				<span class="fm-top-bar-text normal"> <a href="#"
					class="GTM_open_sign_up_modal_button">Sign up</a>
				</span>
			</c:if> <c:if test="${pageContext.request.userPrincipal.name != null}">
				<span class="nav-button divider-before" id="userProfile"> <a
					href="#" class="logged-in-nav-bar"> <span
						class="fm-name-header"> <svg width="10px" height="6px"
								viewBox="0 0 10 6" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" class="fm-down-arrow">
<defs>
<path
									d="M66.0398964,8.23079982 C65.9864882,8.17739168 65.9873896,8.08989865 66.0384722,8.03881601 C66.0910938,7.98619441 66.1776867,7.98747083 66.230456,8.04024016 L69.9491421,11.7589262 C70.0025502,11.8123343 70.0016489,11.8998274 69.9505662,11.95091 C69.8979446,12.0035316 69.8113517,12.0022552 69.7585824,11.9494859 L66.0398964,8.23079982 Z M73.7692002,8.04024016 C73.8226083,7.98683203 73.9101014,7.98773337 73.961184,8.03881601 C74.0138056,8.0914376 74.0125292,8.17803048 73.9597598,8.23079982 L70.2410738,11.9494859 C70.1876657,12.002894 70.1001726,12.0019927 70.04909,11.95091 C69.9964684,11.8982884 69.9977448,11.8116955 70.0505141,11.7589262 L73.7692002,8.04024016 Z"
									id="path-1"></path>
<mask id="mask-2" maskContentUnits="userSpaceOnUse"
									maskUnits="objectBoundingBox" x="-0.5" y="-0.5" width="9"
									height="4.98972602">
<rect x="65.5" y="7.5" width="9" height="4.98972602" fill="white"></rect>
<use xlink:href="#path-1" fill="black"></use>
</mask>
</defs>
<g id="Homepage" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd">
<g id="1.1-Homepage" transform="translate(-941.000000, -66.000000)">
<g id="Group-29" transform="translate(0.000000, 38.000000)">
<g id="Group-23" transform="translate(876.000000, 21.000000)">
<g id="Arrow-Copy">
<use fill="#868A86" fill-rule="evenodd" xlink:href="#path-1"></use>
 <use stroke="#868A86" mask="url(#mask-2)" stroke-width="1"
									xlink:href="#path-1"></use>
</g>
</g>
</g>
</g>
</g>
</svg> ${pageContext.request.userPrincipal.name }
					</span>
				</a>
					<div class="fm-top-bar-user-dropdown">
						<ul>
							<li><a href="#" class="GTM_open_profile_button">Profile</a></li>
							<li><a href="account/order-history">Order History</a></li>
							<li><c:url value="/logout" var="logoutUrl" />
								<form action="${logoutUrl}" method="post" id="logoutForm">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form> <script>
									function formSubmit() {
										document.getElementById("logoutForm")
												.submit();
									}
								</script> <c:if test="${pageContext.request.userPrincipal.name != null}">
									<a href="javascript:formSubmit()"> Logout</a>
								</c:if></li>
						</ul>
					</div>
				</span>
			</c:if>
	</div>
</div>
<div class="gradient fm-main-header ">
	<nav>
		<a href="${home }"> <img
			style="height: 60px; width: 65px; cursor: pointer;"
			src="${imageResource }home.svg" alt="FreshMenu">
		</a>
		<ul style="justify-content: flex-start;">
		</ul>
		<div class="cart-button GTM_open_cart_button">
			<a href="${home }checkout" style="display: block;"> <span
				id="cart-button" class="">${total }</span>
			</a>
		</div>
	</nav>
</div>