$(document).ready(function () {
   get_class();
});

//获取有多少个班级
function get_class() {
    $.get("/Log_war/get_class.do").done(function(list){
        $.each(list,function(i,value){
            $("#choose_class").append("<option value="+value+">"+value+"</option>");
        });

    })
}