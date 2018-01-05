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
                                        <th>Order_status</th>
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
                                        <td style="width: 10%;">${orders.status}</td>
                                        <td style="width: 35%;">
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
                                        <td style="width: 15%;">${orders.client.address}</td>
                                        <td style="width: 10%;">${orders.deliveryAddress}</td>
                                        <td style="width: 5%;"><input type="submit" value="submit"/></td>
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
                                        <th>Order_status</th>
                                        <th>Dish / quantity</th>
                                        <th>Name Client</th>
                                        <th>Phone Client</th>
                                        <th>Address delivery</th>
                                        <th>Day delivery</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="width: 5%;">9000</td>
                                        <td style="width: 10%;">Order_status ....</td>
                                        <td style="width: 35%;">
                                            <table class="" id="dish-quantity" style="width:100%">
                                                    <tr>
                                                        <td style="width: 90%;">dish 1</td>
                                                        <td style="width: 10%;">2</td>
     
                                                    </tr>
                                                    <tr>
                                                        <td class="center">dish 2</td>
                                                        <td class="center">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="center">dish 3</td>
                                                        <td class="center">1</td>
     
                                                    </tr>
                                            </table>
                                        </td>
                                        <td style="width: 10%;">Name ...</td>
                                        <td style="width: 10%;">Phone ...</td>
                                        <td style="width: 15%;">Address Client</td>
                                        <td style="width: 10%;">5/1/2017 14:30</td>
                                        <td style="width: 5%;"><input type="submit" value="print"/></td>
       
                               
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