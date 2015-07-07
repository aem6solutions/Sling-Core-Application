$(document).ready(function () {
    $(".edit").addClass("collapse");
    $(".toggle-btn").click(function () {

        var count = $(this).attr("data-counter");
        milestoneTab(count);
    });
    function milestoneTab(object) {
        $(".edit").eq(object - 1).collapse('toggle');
        $(".edit").removeClass("in");

    }
});
