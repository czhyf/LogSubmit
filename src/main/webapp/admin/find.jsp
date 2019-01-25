
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>日报后台管理系统</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/admin_back.js"></script>
    <script type="text/javascript" src="../js/jquery-form.js"></script>

</head>
<body>


<form method="post"  action="/Log_war/get_info.do">
    默认保存至 c盘下a.text<br/>
    选择班级：<select id="choose_class" name="class_name"></select><br/>
    选择日期：<span>日期:<input type="date" name="date" id="date"/></span><br/>
    <input type="submit" value="下载">
</form>


</body>
</html>
