<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Messenger</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <%-- Header --%>
            <c:import url="/common/layout/header.jsp"/>
            <!-- Left side bar -->
            <c:import url="/common/layout/sidebar.jsp"/>

            <%-- Main content --%>
            <div class="content-wrapper">

                <%-- Header content --%>
                <section class="content-header">
                    <h1>
                        Messenger
                        <small>13 new messages</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Messenger</li>
                    </ol>
                </section>

                <section class="content">

                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-md-3">
                            <%--<a href="#" class="btn btn-primary btn-block margin-bottom">New message</a>--%>

                            <div class="box box-solid">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Contact</h3>

                                    <div class="box-tools">
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                                class="fa fa-minus"></i>
                                        </button>
                                    </div>

                                    <form action="#" method="post">
                                        <div class="input-group">
                                            <input type="text" name="q" class="form-control" placeholder="Search...">
                                            <span class="input-group-btn">
                                            <button type="submit" name="search" id="search" class="btn btn-flat">
                                                <i class="fa fa-search"></i>
                                            </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>

                                <div class="box-body no-padding">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li class="active"><a href="#"><i class="fa fa-fw fa-user"></i> Sarah Bullock
                                            <span class="label label-primary pull-right">12</span></a></li>
                                        <li><a href="#"><i class="fa fa-fw fa-user"></i> Norman</a></li>
                                        <li><a href="#"><i class="fa fa-fw fa-user"></i> Jane</a></li>
                                        <li><a href="#"><i class="fa fa-fw fa-user"></i> Jackson <span
                                                class="label label-primary pull-right">65</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-fw fa-user"></i> Micheal</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>

                        <div class="col-md-9">
                            <div class="box box-success">
                                <!-- DIRECT CHAT -->
                                <div class="box box-warning direct-chat direct-chat-warning">

                                    <div class="box-header with-border">
                                        <h3 class="box-title">
                                            <form action="#" method="post">
                                                <div class="input-group">
                                                    <input type="text" name="q" class="form-control"
                                                           placeholder="Search...">
                                                    <span class="input-group-btn">
                                            <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                                                <i class="fa fa-search"></i>
                                            </button>
                                            </span>
                                                </div>
                                            </form>
                                        </h3>
                                    </div>

                                    <div class="box-body" style="">
                                        <div class="direct-chat-messages">

                                        </div>
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer" style="">
                                        <form action="#" method="post">
                                            <div class="input-group">
                                                <input type="text" name="message" placeholder="Type Message ..."
                                                       class="form-control">
                                                <span class="input-group-btn">
                            <button type="button" class="btn btn-warning btn-flat">Send</button>
                          </span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <p id="test"></p>
            </div>

            <%-- Footer --%>
            <c:import url="/common/layout/footer.jsp"/>
        </div>
        <script src="template/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="template/dist/js/adminlte.min.js"></script>
    </body>
</html>
