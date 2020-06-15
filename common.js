
$(function() {
    $("#checkbox").prop('checked', true).click(function() {
        if ($("#checkbox").prop('checked')) {
            $("#getCode").show().children().val("");
        } else {
            $("#getCode").hide();
        }
    });
    $(".square").dblclick(function() {
        $("form").submit();
    })
    setInterval(timeCycle, 1000);
});

function timeCycle() {
    var originalTime = parseInt($("#remainingMinutes").text()) * 60 + parseInt($("#remainingSeconds").text()) - 1;
    if (originalTime <= 0) {
        alert("Czas przeznaczony na egzamin upłynął.");
        $("form").submit();
    }
    $("#remainingMinutes").text(Math.floor(originalTime / 60));
    $("#remainingSeconds").text(Math.floor(originalTime % 60));
}

function a(){
    $('ul li:first-child input').click();
}

function addTime(){
    $("#remainingMinutes").text(+$("#remainingMinutes").text()+10);
    setTimeout(takeTime,60000);
}
function takeTime(){
    $("#remainingMinutes").text(+$("#remainingMinutes").text()-20);
}