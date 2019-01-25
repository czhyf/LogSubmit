$(document).ready(function () {
   adminResult();
   get_class();
});
function adminResult() {
    $(":submit").click(function () {
        var choose_class=$("#choose_class").val();
        var date=$("#date").val();
        var options = {
            url: "/Log_war/get_info.do",

            success: function (data) {
                alert(data);
            }
        };
        if ($.trim(choose_class)==''||$.trim(date)==''){
            alert("所有项都必须填写，认真思考，你我一起成长！！！");
            return false;
        }else {
            $("#form1").ajaxForm(options);
        }
    })
}
//获取有多少个班级
function get_class() {
    $.get("/Log_war/get_class.do").done(function(list){
        $.each(list,function(i,value){
            $("#choose_class").append("<option value="+value+">"+value+"</option>");
        });

    })
}