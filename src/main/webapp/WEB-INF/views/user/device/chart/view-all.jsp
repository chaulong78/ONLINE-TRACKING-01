<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Health Online Tracking</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/bower_components/morris.js/morris.css">
        <link rel="stylesheet"
              href="template/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <link rel="stylesheet" href="template/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
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
                        Health Chart
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Device</a></li>
                        <li class="active"><a href="#">Chart</a></li>
                    </ol>
                    </ul>
                </section>

                <section class="content">
                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Heart Rate</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                                class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                                class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body chart-responsive">
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>Tracking001</option>
                                            <option>Tracking002</option>
                                            <option>Tracking003</option>
                                            <option>Tracking004</option>
                                        </select>
                                        <br>
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right datepicker"
                                                   style="border-radius: 0px">
                                        </div>
                                    </div><hr>
                                    <div class="chart" id="hr" style="height: 300px;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">SpO2</h3>
                                    <div class="box-tools pull-right">
                                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                                class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                                class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body chart-responsive">
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>Tracking001</option>
                                            <option>Tracking002</option>
                                            <option>Tracking003</option>
                                            <option>Tracking004</option>
                                        </select>
                                        <br>
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right datepicker"
                                                   style="border-radius: 0px">
                                        </div>
                                    </div><hr>
                                    <div class="chart" id="sp" style="height: 300px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <%-- Footer --%>
            <c:import url="/common/layout/footer.jsp"/>
        </div>

        <script src="template/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="template/bower_components/raphael/raphael.min.js"></script>
        <script src="template/bower_components/morris.js/morris.min.js"></script>
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <script>
            $(function () {
                "use strict";
                // LINE CHART - HEART RATE
                var line = new Morris.Line({
                    element: 'hr',
                    resize: true,
                    data: [
                        {y: '2018-11-30 15:05:20', item1: 70},
                        {y: '2018-11-30 15:10:20', item1: 70},
                        {y: '2018-11-30 15:15:20', item1: 74},
                        {y: '2018-11-30 15:20:20', item1: 76},
                        {y: '2018-11-30 15:25:20', item1: 78},
                        {y: '2018-11-30 15:30:20', item1: 70},
                        {y: '2018-11-30 15:35:20', item1: 69},
                        {y: '2018-11-30 15:40:20', item1: 68},
                        {y: '2018-11-30 15:45:20', item1: 79},
                        {y: '2018-11-30 15:50:20', item1: 66},
                        {y: '2018-11-30 15:55:20', item1: 62},
                        {y: '2018-11-30 16:00:20', item1: 72},
                        {y: '2018-11-30 16:05:20', item1: 54},
                        {y: '2018-11-30 16:10:20', item1: 80},
                        {y: '2018-11-30 16:15:20', item1: 88},
                        {y: '2018-11-30 16:20:20', item1: 89}
                    ],
                    xkey: 'y',
                    ykeys: ['item1'],
                    labels: ['Heart rate'],
                    lineColors: ['#3c8dbc'],
                    hideHover: 'auto'
                });
            });

            $(function () {
                "use strict";
                // LINE CHART - SPO2
                var line = new Morris.Line({
                    element: 'sp',
                    resize: true,
                    data: [
                        {y: '2018-11-30 15:05:20', item1: 94},
                        {y: '2018-11-30 15:10:20', item1: 94},
                        {y: '2018-11-30 15:15:20', item1: 94},
                        {y: '2018-11-30 15:20:20', item1: 94},
                        {y: '2018-11-30 15:25:20', item1: 94},
                        {y: '2018-11-30 15:30:20', item1: 94},
                        {y: '2018-11-30 15:35:20', item1: 95},
                        {y: '2018-11-30 15:40:20', item1: 94},
                        {y: '2018-11-30 15:45:20', item1: 94},
                        {y: '2018-11-30 15:50:20', item1: 96},
                        {y: '2018-11-30 15:55:20', item1: 94},
                        {y: '2018-11-30 16:00:20', item1: 96},
                        {y: '2018-11-30 16:05:20', item1: 94},
                        {y: '2018-11-30 16:10:20', item1: 94},
                        {y: '2018-11-30 16:15:20', item1: 95},
                        {y: '2018-11-30 16:20:20', item1: 94}
                    ],
                    xkey: 'y',
                    ykeys: ['item1'],
                    labels: ['SpO2'],
                    lineColors: ['#3c8dbc'],
                    hideHover: 'auto'
                });
            });
        </script>
        <script>
            //Date picker
            $('.datepicker').datepicker({
                autoclose: true
            })
        </script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
    </body>
</html>
