<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling" %>
<%--<script src="https://code.jquery.com/jquery-1.6.2.min.js"></script>--%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript" src="/apps/ttnbucks/main/login.js"></script>
<link rel="stylesheet" type="text/css" href="/apps/ttnbucks/main/welcome.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<sling:defineObjects/>
<body class="welcomeBody">
<div class="bs-example">
    <h1 class="myheading">
        <%= currentNode.getProperty("jcr:title").getString() %>
    </h1>
    <div class="bs-example">
        <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for carousel items -->
            <div class="carousel-inner">
                <div class="active item" style="background-image: url(/content/ttnbucks/ttnbucks_img/i-love-coffee-coffee-25055460-1280-800.jpg/jcr:content);">

                    <h2></h2>
                    <div class="carousel-caption" >
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
                <div class="item" style="background-image: url(/content/ttnbucks/ttnbucks_img/coffe-chocolates-mugs-17.gif/jcr:content);">
                    <h2></h2>
                    <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
                <div class="item" style="background-image: url(/content/ttnbucks/ttnbucks_img/img8.jpg/jcr:content);">
                    <h2></h2>
                    <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
            </div>
            <!-- Carousel controls -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>

    <h3 class="subheading">
        <%= currentNode.getProperty("jcr:sub").getString() %>
    </h3>
    <a href="/content/ttnbucks/user_menu.html"> <img src="/content/ttnbucks/ttnbucks_img/user_icon.png" id="user_icon" title="User"></a><br>
    <a href="#"> <img src="/content/ttnbucks/ttnbucks_img/admin_icon.png" id="admin_icon" title="Admin"></a><br>
    <a href="/content/ttnbucks/user_menu.html" class="btn btn-danger btn-lg" id="user">User</a>
    <a href="#" id="admin" class="btn btn-danger btn-lg" class="lightbox_trigger">Admin</a>
    </div>
</body>
