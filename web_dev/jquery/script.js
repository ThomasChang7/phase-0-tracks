$(document).ready(function(){
$("#navigation").mouseover(function(){
    $("#navigation").css("background-color", "beige");
});

$("#navigation").mouseout(function(){
    $("#navigation").css("background-color", "white");
});

// $("#navigation").mouseover(function(){
//     $("#navigation").html("Sike! Can't click on me :)");
// });

$(".shazam").click(function(){
    $(".wrapper").hide(200);
});

$(".mazahs").click(function(){
    $(".wrapper").show(200);
});

$("a").css("color", "orange");
$(".odd").css("fontWeight", "bold")
$(".even").css("color", "green")
});
