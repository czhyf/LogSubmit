$(document).ready(function () {
   get_class();
   result();
});
//获取有多少个班级
function get_class() {
    $.get("/Log_war/get_class.do").done(function(list){
        $.each(list,function(i,value){
            $("#Choosing_classes").append("<option value="+value+">"+value+"</option>");
        });

    })
}
function result() {
    $(":submit").click(function () {
        var classname=$("#Choosing_classes").val();
        var student_name=$("#entry_field_1").val();
        var problem = $("#entry_field_5").val();
        var state=$("#entry_field_6").val();
        var options = {
            url: "submit.do",
            success: function (data) {
                alert(data);
            }
        };
        if ($.trim(student_name)==''||$.trim(classname)==''||$.trim(problem)==''||$.trim(state)==''){
            alert("所有项都必须填写，认真思考，你我一起成长！！！");
            return false;
        }else {
            $("#new_entry").ajaxForm(options);
        }

    })
}

