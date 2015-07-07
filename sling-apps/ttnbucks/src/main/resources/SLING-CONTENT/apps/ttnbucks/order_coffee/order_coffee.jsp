<%@include file="../main/main.jsp" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/orderCoffee.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.8/jquery.validate.min.js"></script>
<body class="orderCoffeeBody" background="/content/ttnbucks/ttnbucks_img/img3.jpg">
<form method="POST" action="/content/ttnbucks/order_coffee/order/" enctype="multipart/form-data" id="subForm">
    <sling:defineObjects/>
    <h1 class="orderCoffeeHeading">
        <%= currentNode.getProperty("jcr:title").getString() %>
    </h1>
    <div id="orderBack">
    <a href="/content/ttnbucks/user_menu.html" class="btn btn-danger btn-lg" id="aOrderBack">Previous Menu</a></div>
    <label for="customer" class="addCoffeeRecipeLabel"></label>
    <input type="text" name="customer name" class="typeahead tt-query required" autocomplete="off" spellcheck="false" placeholder="Enter your name !!!" id="customer"/>

    <div id="type">
        <select name="type_coffee" class="orderCoffeeSelect">
            <option value="Latte">Latte</option>
            <option value="Cappuccino">Cappuccino</option>
            <option value="Espresso">Espresso</option>
        </select>
    </div>
    <div id="sugar">
        <select name="type_sugar" class="orderCoffeeSelect">
            <option value="Sugar Free">Sugar Free</option>
            <option value="Brown Sugar">Brown Sugar</option>
            <option value="Normal Sugar">Normal Sugar</option>
        </select>
    </div>
    <div id="milk">
        <select name="type_milk" class="orderCoffeeSelect">
            <option value="Full Cream">Full Cream</option>
            <option value="Normal Milk">Normal Milk</option>
            <option value="Skimmed Milk">Skimmed Milk</option>
        </select>
    </div>
    <input type="hidden" id="lastModified" name="lastModified" value=""/>
    <input type="hidden" name="sling:resourceType" value="ttnbucks/confirmOrder"/>
    <input type="hidden" name=":redirect" value="*.html"/>
    <input type="submit" value="Order coffee" id="order_coffee"/>
    <input type="hidden" id="bill_generated">
</form>
</body>
<script>
    $(document).ready(function(){
        $("#subForm").validate();
    });
</script>

