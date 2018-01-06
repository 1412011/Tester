   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="menu">
        <div class="fm-menu-main-container">
            <div class="top-table-order row">
                <div class="container">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label style="font-size: 20px">New Order</label>
                            <input type="button" value="refesh" id="" class="button-refesh"/>
                        </div><hr/>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="" id="order-new" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Order_id</th>
                                        <th>Status</th>
                                        <th>Dish / quantity</th>
                                        <th>Name Client</th>
                                        <th>Phone Client</th>
                                        <th>Address delivery</th>
                                        <th>Day delivery</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <c:forEach var="orders" items="${listOrderOnBranch}">
                                        
                                    <tr>
                                        <td style="width: 5%;">${orders.id}</td>
                                        <td style="width: 5%;">${orders.status}</td>
                                        <td style="width: 30%;">
                                            <table class="" id="dish-quantity" style="width:100%">
                                                <c:forEach var="dishes" items="${orders.listDish}">
                                                    <tr>
                                                        <td style="width: 90%;">${dishes.name}</td>
                                                        <td style="width: 10%;">${dishes.quantity}</td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </td>
                                        <td style="width: 10%;">${orders.client.name}</td>
                                        <td style="width: 10%;">${orders.client.phone}</td>
                                        <td style="width: 30%;">${orders.deliveryAddress}</td>
                                        <td style="width: 5%;">${orders.dateDelivery}</td>
                                        <td style="width: 5%;">
                                            <input type="submit" value="submit" data-id="${orders.id}" class="submit-order"/>
                                        </td>
                                    </tr>
                                    
                                    </c:forEach>
                                    
                                </tbody>
                            </table>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div> 
                <!-- /.col-lg-12 -->
                </div>
            </div>
     
<!--    //////////////////////////////////////////////-->
    
            <div class="bottom-table-order row">
                <div class="container">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label style="font-size: 20px">Received Order</label>
                            <input type="button" value="refesh" id="" class="button-refesh"/>
                        </div><hr/>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="" id="order-new" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Order_id</th>
                                        <th>Status</th>
                                        <th>Dish / quantity</th>
                                        <th>Name Client</th>
                                        <th>Phone Client</th>
                                        <th>Address delivery</th>
                                        <th>Day delivery</th>
<!--                                        <th>Action</th>-->
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <c:forEach var="orders" items="${listTracking}">
                                        
                                    <tr>
                                        <td style="width: 5%;">${orders.id}</td>
                                        <td style="width: 5%;">${orders.status}</td>
                                        <td style="width: 30%;">
                                            <table class="" id="dish-quantity" style="width:100%">
                                                <c:forEach var="dishes" items="${orders.listDish}">
                                                    <tr>
                                                        <td style="width: 90%;">${dishes.name}</td>
                                                        <td style="width: 10%;">${dishes.quantity}</td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </td>
                                        <td style="width: 10%;">${orders.client.name}</td>
                                        <td style="width: 10%;">${orders.client.phone}</td>
                                        <td style="width: 30%;">${orders.deliveryAddress}</td>
                                        <td style="width: 5%;">${orders.dateDelivery}</td>
<!--                                        <td style="width: 5%;">
                                            <input type="submit" value="submit" data-id="${orders.id}" class="submit-order"/>
                                        </td>-->
                                    </tr>
                                    
                                    </c:forEach>
                                    
                                </tbody>
                            </table>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div> 
                <!-- /.col-lg-12 -->
                </div>
            </div>
        </div>
   </section>