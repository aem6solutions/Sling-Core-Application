<%@ page import="com.ttn.sling.ttnbucks.server.ShowCoffeeRecipe" %>
<%@ page import="java.util.List" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/showCoffee.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<sling:defineObjects/>
<body class="showCoffeeBody">
<h1 class="showCoffeeHeading">
    <%= currentNode.getProperty("jcr:title").getString() %>
</h1>
<a href="/content/ttnbucks/user_menu.html" class="btn btn-danger btn-lg" id="showBack">Main Menu</a>
<c:set var="showcoffee"
       value="<%=new ShowCoffeeRecipe(resourceResolver.getResource("/content/ttnbucks/addCoffeeRecipe"))%>"/>
<table class="showCoffeeTable" bgcolor="#ffe4c4" align="center" border="5">
    <tr align="center">
        <th class="showCoffeeTableHead">Coffee Name</th>
        <th class="showCoffeeTableHead">Coffee Price</th>
    </tr>
    <c:forEach var="map" items="${showcoffee.map}" varStatus="loop">

        <tr align="center">
            <td class="showCoffeeData"><b><a href="/ttnbucks/specialOrder.html?price=${map.value.recipe_price}&name=${map.value.coffee_name}" class="showCoffeeLink">${map.value.coffee_name}</a></b></td>
            <td class="showCoffeeData">${map.value.recipe_price}</td>
        </tr>

        <%--<label><b>${loop.index+1}</b></label> <label>${map.value.coffee_name}</label> <label>${map.value.recipe_price}</label><br>--%>
    </c:forEach>
</table >
</body>
