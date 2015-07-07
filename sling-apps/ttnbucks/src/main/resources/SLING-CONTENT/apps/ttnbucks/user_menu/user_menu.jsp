<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/userMenu.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<sling:defineObjects/>
<body class="userMenu">
<h1 class="userMenuHeading">
    <%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/ttnwelcome.html" class="btn btn-danger btn-lg" id="userBack">Main Menu</a>
<ul class="userMenuList">
    <li><a href="/content/ttnbucks/order_coffee.html"><img src="/content/ttnbucks/ttnbucks_img/img9.jpg" title="Order Regular Coffee" class="userMenuImage1"></a></li>
    <li><a href="/content/ttnbucks/order_coffee.html"><label class="userMenuLabel">Order Regular Coffee</label></a></li>

    <li><a href="/content/ttnbucks/showRecipe.html"><img src="/content/ttnbucks/ttnbucks_img/img10.jpg" title="Order Special Coffee" class="userMenuImage2"></a></li>
    <li><a href="/content/ttnbucks/showRecipe.html"><label class="userMenuLabel">Order Special Coffee</label></a></li>
</ul>
