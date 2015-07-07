$(document).ready(function () {

    $("#admin").click(function(e) {
        $("#message").remove();

        e.preventDefault();
        if ($('#lightbox').length > 0) {
            $('#lightbox').show();
        }
        else {

        var lightbox = '<div id="lightbox">' +
            '<div id="content">' +
            '<label>Password</label>' +
            '<input type="password" id="password"/>' +
                '<br>' +
                '<input type="button" id="verify" value="LOGIN"/>'
            '</div>' +
            '</div>';
        $('body').append(lightbox);
    }
    });
      $(document).on("click","#verify", function () {
        var password = $("#password").val();

            var admin_path = "/content/ttnbucks/admin_menu.html";
            var path = "/content/ttnbucks/ttnwelcome.html";
            if (password == "admin") {
                $("#lightbox").fadeOut();
                window.location.replace(admin_path);
                          }
            else {
                var message='<p id="message">Wrong password</p>';
                $("#lightbox").append(message);
                $("#lightbox").fadeOut();
            }

    });
});
