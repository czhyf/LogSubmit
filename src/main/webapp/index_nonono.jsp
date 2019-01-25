<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小牛学堂日志登记系统</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/log.js"></script>
    <script type="text/javascript" src="js/jquery-form.js"></script>
</head>
<body>
<div id="head">小牛学堂日报统计系统</div>

<div id="banner">

        <form action="#" method="post" id="form1">

            <div class="class_1">
                <div class="class_2">选择班级</div>
                <div class="class_3">
                <select id="Choosing_classes" name="class_name">
                        </select></div>
            </div>



                <div class="input-group_1">
                    <div class="input-group_2">学生姓名</div>
                    <div class="input-group_3">
                        <input type="text" class="form-control" id="name" name="name"/>
                    </div>
                </div>


            <div class="problem_1">
                <div class="problem_2">
                    遇到的问题提交(如:1:xx,2:xx,3:xx)
                </div>
                <div class="problem_3">
                    <textarea id="prolem_1" name="problem"></textarea>
                </div>
            </div>

            <div class="state_1">
                <div class="state_2">
                    用简单的话描述今日学习状态
                </div>
                <div class="state_3">
                    <textarea id="state_1" name="state"></textarea>
                </div>
            </div>

            <input type="submit" value="提交">
        </form>
</div>
</body>

</html>
