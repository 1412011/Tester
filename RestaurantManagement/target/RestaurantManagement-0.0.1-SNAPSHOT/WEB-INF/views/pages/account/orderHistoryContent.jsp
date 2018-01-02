<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/images/" var="imageResource" />

<div id="divContent">
	<c:forEach var="order" items="${listOrdered }">
		<div class="item">
			<div class="orderInfo">
				<p>Order: ${order.id }</p>
				<p>
					Delivery date:
					<spring:eval expression="order.dateDelivery" />
				</p>
				<p>Delivery address: ${order.deliveryAddress }</p>
			</div>
			<div class="orderDetail">
				<table class="display tbOrderedDishList">
					<thead>
						<tr>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Image</th>
							
							<c:if test="${(not empty branchId) && branchId == order.branchId }">
							<th>Detail</th>
							</c:if>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dish" items="${order.listDish }">
							<tr>
								<td>${dish.name }</td>
								<td>${dish.price }</td>
								<td>${dish.quantity }</td>
								<td><img class="imgDish"
									src="${imageResource }${dish.image }.jpg" /></td>
								<c:if test="${(not empty branchId) && branchId == order.branchId }">
								<td>
									<form action="${home }products/${dish.name }" method="POST">
										<input type="submit" value="Detail"> <input
											type="hidden" name="dishId" value="${dish.id }">
									</form>
								</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:forEach>
</div>