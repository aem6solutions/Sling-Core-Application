<%@include file="../main/main.jsp" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="/apps/ttnbucks/main/ttnbucks.js"></script>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/confirmOrder.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<sling:defineObjects/>
<body class="confirmOrderBody">
<h1 class="confirmOrderHeading">PLEASE REVIEW YOUR ORDER</h1>
<a href="/content/ttnbucks/order_coffee.html" class="btn btn-danger btn-lg" id="confirmBack">Previous  Menu</a>
<ul class="orderCoffeeUl">
       <li class="orderCoffeeList">Customer Name:   </li>
       <li class="orderCoffeeList"><%=currentNode.getProperty("customer name").getString()%></li>
</ul>
<ul class="orderCoffeeUl">
       <li class="orderCoffeeList">Coffee Type:   </li>
       <li class="orderCoffeeList"><%=currentNode.getProperty("type_coffee").getString()%></li>
</ul>
<ul class="orderCoffeeUl">
       <li class="orderCoffeeList">Milk Type:   </li>
       <li class="orderCoffeeList"><%=currentNode.getProperty("type_milk").getString()%></li>
</ul>
<ul class="orderCoffeeUl">
       <li class="orderCoffeeList">Sugar Type:   </li>
       <li class="orderCoffeeList"><%=currentNode.getProperty("type_sugar").getString()%></li>
</ul>

<input type="hidden" name="type_coffee" value="<%=currentNode.getProperty("customer name").getString()%>"
       id="customer_name">
<input type="hidden" name="type_coffee" value="<%=currentNode.getProperty("type_coffee").getString()%>"
       id="type_coffee">
<input type="hidden" name="type_milk" value="<%=currentNode.getProperty("type_milk").getString()%>" id="type_milk">
<input type="hidden" name="type_sugar" value="<%=currentNode.getProperty("type_sugar").getString()%>" id="type_sugar">
<input type="submit" name="confirm" id="order_coffee" value="CONFIRM" class="btn btn-danger"/>
<a href="/content/ttnbucks/user_menu.html" class="btn btn-danger orderCancle">CANCEL</a>
<div id="bill_content">
</div>
</body>