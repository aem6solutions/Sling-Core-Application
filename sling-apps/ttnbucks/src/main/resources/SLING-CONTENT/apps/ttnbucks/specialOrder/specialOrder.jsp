<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/specialOrder.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<sling:defineObjects/>
<body class="specialOrderBody" >
<h1 class="specialOrderHeading">
    <%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/user_menu.html" class="btn btn-danger btn-lg" id="specialBack">Previous Menu</a>
<h2 class="specialOrderSubhead">Your Order</h2>


<form method="POST" action="/content/ttnbucks/specialOrder/" enctype="multipart/form-data">
    <label class="specialOrderLabel">Enter Your Name</label><br>
    <input type="text" name="customer_name" value="" placeholder="John" class="typeahead tt-query"><br>
    <ul class="specialOrderUl">
        <li class="specialOrderLi">Coffee:   </li>
        <li class="specialOrderLi"><%=request.getParameter("name")%></li>
    </ul>
    <ul class="specialOrderUl">
        <li class="specialOrderLi">Price:    </li>
        <li class="specialOrderLi"><%=request.getParameter("price")%></li>
    </ul>
    <input type="hidden" name="coffee_type" value="<%=request.getParameter("name")%>">
    <input type="hidden" name="price" value="<%=request.getParameter("price")%>">
    <input type="hidden" name=":redirect" value="/ttnbucks/specialOrder.specialOrderConfirm.html"/>
    <input type="submit" value="Confirm Order" id="confirm_special_order" class="btn btn-danger"/>
    <img src="/content/ttnbucks/ttnbucks_img/img13.jpg" class="specialOrderImg1">
    </form>
</body>
