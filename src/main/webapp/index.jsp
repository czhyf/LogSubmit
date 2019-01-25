<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html data-embedded="" lang="zh-CN" data-from-china="true">
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>小牛学堂日报管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn.jinshuju.net/assets/favicon-62fe2f27ea9d532a13fc76ed0e8b5e68bc2f61dde4a7935f54ff5dc3e3a727b2.ico" />
    <link rel="stylesheet" media="screen" href="https://cdn.jinshuju.net/assets/published-881b500f3fb8dfe08f8244147bb2d269a9cb6eb66381e2184141f21b836cf9ee.css" debug="false" />



    <style type="text/css">

    </style>

    <script src="https://cdn.jinshuju.net/assets/published_forms/application-247c6f3c5edd5bb10bdb81a3dfe12b5fbe06ae037281c288529c9a48d12f3bd4.js" debug="false"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-form.js"></script>
    <script type="text/javascript" src="js/log_back.js"></script>

    <meta name="csrf-param" content="authenticity_token" />
    <meta name="csrf-token" content="exertIffBDMweMbHA3yUfLQpJhqOuTARQHL73+wkMnrPvlRctcU0wRG8cnnKpnVB8rBnT0qk/1kd571zvjsSBw==" />
</head>
<body class="entry-container published-forms-show-page" data-locale="zh-CN">
<div class="entry-container-inner">



    <style type="text/css">
        .entry-container {
            background-color: #000000;
            background-image: url(https://pub-files.jinshuju.net/bgi/20170503105745_2c13c5?imageView2/2/w/1920);
            background-position: top center;
            background-attachment: fixed;
            background-size: cover;
            background-repeat: no-repeat;

        }

        @media screen and (min-width: 769px) and (max-width: 1440px) {
            .entry-container {
                background-color: #000000;
                background-image: url(https://pub-files.jinshuju.net/bgi/20170503105745_2c13c5?imageView2/2/w/1440);
                background-position: top center;
                background-attachment: fixed;
                background-size: cover;
                background-repeat: no-repeat;

            }
        }

        @media screen and (min-width: 481px) and (max-width: 768px) {
            .entry-container {
                background-color: #000000;
                background-image: url(https://pub-files.jinshuju.net/bgi/20170503105745_2c13c5?imageView2/2/w/768);
                background-position: top center;
                background-attachment: fixed;
                background-size: cover;
                background-repeat: no-repeat;

            }
        }

        @media screen and (max-width: 480px) {
            .entry-container {
                background-color: #000000;
                background-image: url(https://pub-files.jinshuju.net/bgi/20170503105745_2c13c5?imageView2/4);
                background-position: top center;
                background-attachment: fixed;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .entry-container {
                background-image: none;
            }
            .entry-container::after {
                content: '';
                display: block;
                background-image: url(https://pub-files.jinshuju.net/bgi/20170503105745_2c13c5?imageView2/4);
                background-position: center top;
                background-size: cover;background-repeat: no-repeat;
                position: fixed;
                height: 100vh;
                width: 100vw;
                top: 0;
                left: 0;
                z-index: -1;
            }

        }
    </style>

    <style type="text/css">
        .entry-container > .entry-container-inner .center {
            max-width: 600px;
        }

        .entry-container > .entry-container-inner > form {
            background-color: rgba(255, 252, 241, 0.91);
            max-width: 600px;
            border-width: 0;
            border-color: rgb(255, 236, 146);
        }

        .entry-container > .entry-container-inner > form > .form-header .banner:not(.header-type-carousel),
        .entry-container > .entry-container-inner > form > .form-header .banner.header-type-carousel .slick-list {
            background-color: rgb(245, 166, 35);
            font-size: 1.333em;
            font-weight: normal;
            color: rgb(255, 255, 255);
            text-align: left;
        }

        .entry-container > .entry-container-inner > form .form-header {
            border-top-color: #C3C9D0; border-bottom-color: #C3C9D0;
        }
        .entry-container > .entry-container-inner > form .field.submit-field {
            border-top-color: #C3C9D0; border-bottom-color: #C3C9D0;

        }

        .entry-container > .entry-container-inner > form > .form-header .form-title {
            font-size: 1.667em;
            font-weight: normal;
            color: rgb(0, 0, 0);
            text-align: left;
        }

        .entry-container > .entry-container-inner > form .fields .field {
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .entry-container > .entry-container-inner > form .fields .field .field-label {
            font-size: 1.167em;
            font-weight: bold;
            color: rgb(0, 0, 0);
        }

        .entry-container > .entry-container-inner > form .fields .field .choices label,
        .entry-container > .entry-container-inner > form .fields .field .likert thead th,
        .entry-container > .entry-container-inner > form .fields .field .matrix thead th,
        .entry-container > .entry-container-inner > form .fields .field .table-field thead th,
        .entry-container > .entry-container-inner > form .fields .field .goods-items .name {
            font-size: 1.000em;
            font-weight: normal;
            color: rgb(0, 0, 0);
        }

        .entry-container > .entry-container-inner > form .submit-field {
            text-align: left;
        }

        .entry-container > .entry-container-inner > form .field.submit-field .gd-btn {
            background-color: rgb(250, 153, 18);
            padding: 0 55px;
            font-size: 1.167em;
            font-weight: normal;
            color: #FFF;
            border-width: 1px;
            border-color: transparent;
        }

    </style>



    <form class="center with-shadow indent-on-large-phone" id="new_entry"   action="#" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="hbUR1FQM+d3ATn59b1XCP2SFTeRx/aLgTQZYrUrnkxQxHO48ZhbJL+GKysOmjyMCIhwMsbXgbagQkx4BGPizaQ==" />
        <div class="form-header">
            <div class="banner font-family-heiti header-type-text">
                <div class="banner-text"> </div>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <h1 class="form-title  font-family-heiti">
                        小牛学堂日报跟踪
                    </h1>
                    <div class="form-description collapse-details">
                        <p>此表单主要用于监督学生日常学习情况，便于老师了解学生情况，做好服务和监督！请每位同学务必认真填写，谢谢配合。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-content container-fluid">
            <div class="row">

                <div class="quota-choices hidden">
                </div>

                <div class="inventory-items hidden">
                </div>

                <div class="fields clearfix">
                    <div class="field field-name-field col-sm-12 required" data-api-code="field_1" data-type="NameField" data-label="姓名" data-validations="[&quot;Presence&quot;]" data-field-type="name-field">


                        <div class="form-group" >
                            <div class="field-label-container" onclick="">
                                <label class="field-label font-family-heiti" for="entry_field_1">
                                    姓名
                                </label></div>
                            <div class="field-content">

                                <input class="input-with-icon" data-icon="gd-icon-name" type="text" name="entry[field_1]" id="entry_field_1" />

                            </div>
                        </div>


                    </div>              <div class="field field-text-field col-sm-12 required" data-api-code="field_2" data-type="TextField" data-label="用户所属班级" data-validations="[&quot;Presence&quot;]" data-field-type="text-field">


                    <div class="form-group" >
                        <div class="field-label-container" onclick="">
                            <label class="field-label font-family-heiti" for="Choosing_classes">
                                用户所属班级
                            </label></div>
                        <div class="field-content">
                            <select id="Choosing_classes" name="class_name">
                            </select>
                        </div>
                    </div>


                </div>
                    <div class="field field-text-area col-sm-12 required" data-api-code="field_5" data-type="TextArea" data-label="遇到的问题提交" data-validations="[&quot;Presence&quot;]" data-field-type="text-area">


                    <div class="form-group" >
                        <div class="field-label-container" onclick="">
                            <label class="field-label font-family-heiti" for="entry_field_5">
                                遇到的问题提交
                            </label></div>
                        <div class="field-content">
                            <div class="field-description clearfix collapse-details"><p>学习过程中有哪些问题列举1/2/3</p></div>

                            <textarea rows="3" name="entry[field_5]" id="entry_field_5">
</textarea>


                        </div>
                    </div>


                </div>              <div class="field field-text-area col-sm-12 required" data-api-code="field_6" data-type="TextArea" data-label="用简单的话描述今日学习状态" data-validations="[&quot;Presence&quot;]" data-field-type="text-area">


                    <div class="form-group" >
                        <div class="field-label-container" onclick="">
                            <label class="field-label font-family-heiti" for="entry_field_6">
                                用简单的话描述今日学习状态
                            </label></div>
                        <div class="field-content">

    <textarea rows="3" name="entry[field_6]" id="entry_field_6">
</textarea>


                        </div>
                    </div>


                </div>        </div>




                <div class="field submit-field col-md-12 text-center clearfix  " >

                    <input type="submit" name="commit" value="提交" data-disabled-with="提交中..." class="submit gd-btn gd-btn-primary-solid  font-family-inherit with-shadow" />


                </div>
            </div>
        </div>
    </form>

</div>

</body>
</html>
