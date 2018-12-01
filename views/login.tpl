<!doctype html>
<html lang="zh-cn">

<head>
    <meta charset="utf-8" >
    <link rel="icon" type="image/png" href="/static/img/favicon.png" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >

    <title>Amaze - Bootstrap Admin Dashboard Template</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no' name='viewport' >
    <meta name="viewport" content="width=device-width" >

    <!-- Bootstrap core CSS     -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" >

    <!--  Paper Dashboard CSS    -->
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
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=" ../index.html ">Amaze Admin</a>
            </div>
        </div>
    </nav>
    <div class="wrapper wrapper-full-page">
        <div class="full-page login-page"  data-color="blue">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">

                            <form method="#" action="#">
                                <div class="card card-login card-hidden">
                                    <div class="header text-center">
                                        <h3 class="title">Login</h3>
                                    </div>
                                    <div class="content">

                                        <div class="social-line text-center">
                                        	<h5>Connect Using</h5>
                                        	</br>
                                            <a href="#btn" class="btn btn-just-icon btn-default">
                                                <i class="fa fa-facebook-square"></i>
                                            </a>
                                            <a href="#pablo" class="btn btn-just-icon btn-default">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="#eugen" class="btn btn-just-icon btn-default">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </div>
										<span class="or-rule">or</span>
										<h5 class="text-center">Amaze Account</h5>
                                        <div class="form-group">
                                            <label>Email address</label>
                                            <input type="email" placeholder="Enter email" class="form-control input-no-border">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" placeholder="Password" class="form-control input-no-border">
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-rose btn-wd btn-lg">Sign In</button>
                                        <p>New to Amaze?&nbsp;&nbsp;
                                        	<a href="register.html">
                            					<i class="ti-id-badge"></i> Register
                        					</a>
                        				</p>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Company
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Portfolio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Blog
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.17sucai.com/">Amaze Admin</a>
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
<!-- Forms Validations Plugin -->
<script src="/static/vendors/jquery.validate.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/static/vendors/moment.min.js"></script>
<!--  Charts Plugin -->
<script src="/static/vendors/chartist.min.js"></script>
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
<!-- Select Plugin -->
<script src="/static/vendors/jquery.select-bootstrap.js"></script>
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
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/static/js/demo.js"></script>
<script type="text/javascript">
    $().ready(function() {
        demo.checkFullPageBackgroundImage();

        setTimeout(function() {
            // after 1000 ms we add the class animated to the login/register card
            $('.card').removeClass('card-hidden');
        }, 700)
    });
</script>
</body>
</html>
