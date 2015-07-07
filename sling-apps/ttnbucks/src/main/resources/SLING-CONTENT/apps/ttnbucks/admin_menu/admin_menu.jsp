<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/adminMenu.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<sling:defineObjects/>
<body class="adminMenu">
<h1 class="adminMenuHeading">
    <%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/ttnwelcome.html" class="btn btn-danger btn-lg" id="adminMenuBack">Main Menu</a>
<ul class="adminMenuList">
    <li><a href="/content/ttnbucks/addCoffeeRecipe.html"><img src="/content/ttnbucks/ttnbucks_img/img15.jpg" title="Order Regular Coffee" class="adminMenuImage1"></a></li>
    <li><a href="/content/ttnbucks/addCoffeeRecipe.html"><label class="adminMenuLabel">Add a New Coffee Recipe</label></a></li>

    <li><a href="/content/ttnbucks/editCoffeeRecipe.html"><img src="/content/ttnbucks/ttnbucks_img/img11.jpg" title="Order Special Coffee" class="adminMenuImage2"></a></li>
    <li><a href="/content/ttnbucks/editCoffeeRecipe.html"><label class="adminMenuLabel">Modify Existing Coffee Recipes</label></a></li>
</ul>


</body>
