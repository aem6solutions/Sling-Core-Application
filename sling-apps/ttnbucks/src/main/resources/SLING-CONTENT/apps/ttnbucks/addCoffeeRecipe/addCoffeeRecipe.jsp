<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="/apps/ttnbucks/main/addCoffeeRecipe.js"></script>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/addCoffeeRecipe.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.8/jquery.validate.min.js"></script>
<sling:defineObjects/>
<body id="addCoffeeRecipeBody">
<h1 id="addCoffeeRecipeHeading">
    <%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/admin_menu.html" class="btn btn-danger btn-lg" id="addBack">Previous  Menu</a>
<div id="addCofeeRecipeImage">
<img src="/content/ttnbucks/ttnbucks_img/img17.jpg">
<img src="/content/ttnbucks/ttnbucks_img/img18.jpg">
<img src="/content/ttnbucks/ttnbucks_img/img19.jpg">
<img src="/content/ttnbucks/ttnbucks_img/img20.jpg">
</div>
<div id="addCoffeeRecipeDiv">
<form method="POST" action="/content/ttnbucks/addCoffeeRecipe/" enctype="multipart/form-data" id="subForm">
    <label for="coffee_name" class="addCoffeeRecipeLabel">Recipe Name:</label>
    <input type="text" name="coffee_name" class="required" id="coffee_name"/><br>
    <label for="recipe_price" class="addCoffeeRecipeLabel">Recipe Price:</label>
    <input type="text" name="recipe_price" class="required" id="recipe_price"/><br>
    <label for="unit_coffee" class="addCoffeeRecipeLabel">Units Coffee:</label>
    <input type="text" name="unit_of_coffee" class="required" id="unit_coffee"/> <br>
    <label for="unit_milk" class="addCoffeeRecipeLabel">Units Milk:</label>
    <input type="text" name="unit_of_milk" class="required" id="unit_milk"/><br>
    <label for="unit_chocolate" class="addCoffeeRecipeLabel">Units Chocolate:</label>
    <input type="text" name="unit_of_chocolate" class="required" id="unit_chocolate"/><br>
    <label for="unit_sugar" class="addCoffeeRecipeLabel">Units Sugar:</label>
    <input type="text" name="unit_of_sugar" class="required" id="unit_sugar"/><br>
    <input type="hidden" name=":redirect" value="/ttnbucks/addCoffeeRecipe.addCoffeeConfirm.html"/>
    <input type="submit" value="Add Coffee Recipe" id="add_recipe" class="btn btn-danger" /><br>
</form>
</div>
</body>
<script>
    $(document).ready(function(){
        $("#subForm").validate();
    });
</script>


