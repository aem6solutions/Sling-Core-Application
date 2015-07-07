<%@ page import="com.ttn.sling.ttnbucks.server.ShowCoffeeRecipe" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/editCoffeeRecipe.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/apps/ttnbucks/main/editCoffeeRecipes.js"></script>
<%--<script type="text/javascript" src="/apps/ttnbucks/main/editDeleteRecipe.js"></script>--%>
<sling:defineObjects/>
<body class="editCoffeeRecipeBody">
<h1 class="editCoffeeRecipHeading"><%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/admin_menu.html" class="btn btn-danger btn-lg" id="editBack">Previous  Menu</a>
<div id="editCoffeeImages">
<img src="/content/ttnbucks/ttnbucks_img/img5.jpg" class="editCoffeeRecipeImage">
<img src="/content/ttnbucks/ttnbucks_img/img16.jpg" class="editCoffeeRecipeImage">
<img src="/content/ttnbucks/ttnbucks_img/img11.jpg" class="editCoffeeRecipeImage">
<img src="/content/ttnbucks/ttnbucks_img/img6.jpg" class="editCoffeeRecipeImage">
</div>
<c:set var="showcoffee"
       value="<%=new ShowCoffeeRecipe(resourceResolver.getResource("/content/ttnbucks/addCoffeeRecipe"))%>"/>
<c:forEach var="map" items="${showcoffee.map}" varStatus="status">
    <h1 class="toggle-btn" data-counter="${status.count}"
        id="editCoffeeRecipeSubhead">${status.count}) ${map.value.coffee_name}</h1>

    <div class="edit">
        <form method="POST" action="${map.key}" enctype="multipart/form-data">
            <label for="coffee_name" class="editCoffeeRecipeLabel">Recipe Name:</label>
            <input type="text" name="coffee_name" class="required" id="coffee_name"
                   value="${map.value.coffee_name}" class="typeahead tt-query"/><br>
            <label for="recipe_price" class="editCoffeeRecipeLabel">Recipe Price:</label>
            <input type="text" name="recipe_price" class="required" id="recipe_price"
                   value="${map.value.recipe_price}" class="typeahead tt-query"/><br>
            <label for="unit_coffee" class="editCoffeeRecipeLabel">Units Coffee:</label>
            <input type="text" name="unit_of_coffee" class="required" id="unit_coffee"
                   value="${map.value.unit_of_coffee}" class="typeahead tt-query"/> <br>
            <label for="unit_milk" class="editCoffeeRecipeLabel">Units Milk:</label>
            <input type="text" name="unit_of_milk" class="required" id="unit_milk"
                   value="${map.value.unit_of_milk}" class="typeahead tt-query"/><br>
            <label for="unit_chocolate" class="editCoffeeRecipeLabel">Units Chocolate:</label>
            <input type="text" name="unit_of_chocolate" class="required" id="unit_chocolate"
                   value="${map.value.unit_of_chocolate}" class="typeahead tt-query"/><br>
            <label for="unit_sugar" class="editCoffeeRecipeLabel">Units Sugar:</label>
            <input type="text" name="unit_of_sugar" class="required" id="unit_sugar"
                   value="${map.value.unit_of_sugar}" class="typeahead tt-query"/>
            <br>
            <input type="hidden" name=":redirect" value="/ttnbucks/editCoffeeRecipe.editConfirmed.html"/>
            <input type="submit" value="Edit Coffee Recipe" id="edit_recipe" class="btn btn-danger"/>
        </form>
        <form action="${map.key}" method="POST">
            <input type="hidden" name=":operation" value="delete">
            <input type="hidden" name=":redirect" value="/ttnbucks/editCoffeeRecipe.deleteConfirm.html"/>
            <input type="submit" value="Delete Coffee Recipe" id="delete_recipe" class="btn btn-danger"/>
        </form>
    </div>
</c:forEach>
</body>
