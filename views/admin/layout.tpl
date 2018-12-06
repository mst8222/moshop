<!doctype html>
<html lang="zh-cn">

<head>
    <meta charset="utf-8" >
    <link rel="icon" type="image/png" href="/static/img/favicon.png" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >

    <title>{{.m.title}}</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no' name='viewport' >
    <meta name="viewport" content="width=device-width" >

    <!-- Bootstrap core CSS     -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" >

    <!--  Material Dashboard CSS    -->
    <link href="/static/css/amaze.css" rel="stylesheet" >

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/static/css/demo.css" rel="stylesheet" >

    <!--     Fonts and icons     -->
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/font-muli.css" rel='stylesheet' type='text/css'>
    <link href="/static/css/themify-icons.css" rel="stylesheet">

    <link href="/static/vendors/sweetalert/css/sweetalert2.min.css" rel="Stylesheet" >
</head>

<body>
<div class="wrapper">
{{.Menu}}
    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-minimize">
                    <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                        <i class="ti-menu"></i>
                    </button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> {{.m.title}} </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <span class="notification">6</span>
                                <p class="hidden-lg hidden-md">
                                    消息通知
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">You have 5 new messages</a>
                                </li>
                                <li>
                                    <a href="#">You're now friend with Mike</a>
                                </li>
                                <li>
                                    <a href="#">Wish Mary on her birthday!</a>
                                </li>                                    <li>
                                <a href="#">5 warnings in Server Console</a>
                            </li>
                                <li>
                                    <a href="#">Jane completed 'Induction Training'</a>
                                </li>
                                <li>
                                    <a href="#">'Prepare Marketing Report' is overdue</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-user"></i>
                                <p class="hidden-lg hidden-md">个人资料</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
            {{.LayoutContent}}
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    千乘互动（北京）有限公司
                </p>
            </div>
        </footer>
    </div>

</div>
<!--   Core JS Files   -->
<script src="/static/vendors/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="/static/vendors/jquery-ui.min.js" type="text/javascript"></script>
<script src="/static/vendors/bootstrap.min.js" type="text/javascript"></script>
<script src="/static/vendors/material.min.js" type="text/javascript"></script>
<script src="/static/vendors/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<!-- Yii Form JS -->
<script src="/static/js/yii.js" type="text/javascript"></script>
<script src="/static/js/yii.gridView.js" type="text/javascript"></script>
<script src="/static/js/yii.activeForm.js" type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="/static/vendors/jquery.validate.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/static/vendors/moment.min.js"></script>
<!--  Charts Plugin -->
<script src="/static/vendors/charts/flot/jquery.flot.js"></script>
<script src="/static/vendors/charts/flot/jquery.flot.resize.js"></script>
<script src="/static/vendors/charts/flot/jquery.flot.pie.js"></script>
<script src="/static/vendors/charts/flot/jquery.flot.stack.js"></script>
<script src="/static/vendors/charts/flot/jquery.flot.categories.js"></script>
<script src="/static/vendors/charts/chartjs/Chart.min.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="/static/vendors/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin    -->
<script src="/static/vendors/bootstrap-notify.js"></script>
<!-- DateTimePicker Plugin -->
<script src="/static/vendors/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin -->
<script src="/static/vendors/jquery-jvectormap.js"></script>
<!-- Sliders Plugin -->
<script src="/static/vendors/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyAurmSUEQDwY86-wOG3kCp855tCI8lHL-I"></script>
<!-- Select Plugin -->
<script src="/static/vendors/jquery.select-bootstrap.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script src="/static/js/bootstrap-checkbox-radio-switch-tags.js"></script>

<!-- Circle Percentage-chart -->
<script src="/static/js/jquery.easypiechart.min.js"></script>

<!--  DataTables.net Plugin    -->
<script src="/static/vendors/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin -->
<script src="/static/vendors/sweetalert/js/sweetalert2.min.js"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/static/vendors/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin    -->
<script src="/static/vendors/fullcalendar.min.js"></script>
<!-- TagsInput Plugin -->
<script src="/static/vendors/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script src="/static/js/amaze.js"></script>
<!-- Moshigu -->
<script src="/static/js/moshigu.js"></script>

<script src="/static/js/charts/flot-charts.js"></script>
<script src="/static/js/charts/chartjs-charts.js"></script>

<script type="text/javascript">
    $(document).ready(function(){

        demo.initVectorMap();
        demo.initCirclePercentage();

    });
</script>
</body>
</html>
