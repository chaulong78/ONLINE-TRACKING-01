<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Doctor List</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
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
                        Link Request
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Doctor List</a></li>
                        <li class="active"><a href="#">Request</a></li>
                    </ol>
                    <br>
                </section>

                <section class="content">

                    <%-- Main page content --%>
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs">
                                    <li class=""><a href="#tab_1" data-toggle="tab" aria-expanded="false">Request</a>
                                    </li>
                                    <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Suggested</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <%-- Request --%>
                                    <div class="tab-pane" id="tab_1">
                                        <div class="box">
                                            <div class="box-body">
                                                <table id="example1" class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <th>Phone</th>
                                                            <th>Major</th>
                                                            <th>Company</th>
                                                            <th>Status</th>
                                                            <th style="width: 10%">#</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                Phạm Châu Long
                                                            </td>
                                                            <td>0943394172</td>
                                                            <td>Pre-med</td>
                                                            <td>Bach Mai Hospital</td>
                                                            <td><span class="badge bg-green">Online</span></td>
                                                            <td>
                                                                <button class="btn btn-sm  btn-primary" href="#"
                                                                        onclick="return confirm('Are you sure want to confirm this link?')">
                                                                    <i class="fa fa-fw fa-check" aria-hidden="true"></i>
                                                                </button> &nbsp;
                                                                <button class="btn btn-sm  btn-danger" href="#"
                                                                        onclick="return confirm('Are you sure want to cancel this link?')">
                                                                    <i class="fa fa-fw fa-ban" aria-hidden="true"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Phạm Thị Ngọc Ánh
                                                            </td>
                                                            <td>0943394172</td>
                                                            <td>Pre-med</td>
                                                            <td>Thanh Nhan Hospital</td>
                                                            <td><span class="badge bg-red">Offline</span></td>
                                                            <td>
                                                                <button class="btn btn-sm  btn-primary" href="#"
                                                                        onclick="return confirm('Are you sure want to confirm this link?')">
                                                                    <i class="fa fa-fw fa-check" aria-hidden="true"></i>
                                                                </button> &nbsp;
                                                                <button class="btn btn-sm  btn-danger" href="#"
                                                                        onclick="return confirm('Are you sure want to cancel this link?')">
                                                                    <i class="fa fa-fw fa-ban" aria-hidden="true"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <th>Phone</th>
                                                            <th>Major</th>
                                                            <th>Company</th>
                                                            <th>Status</th>
                                                            <th>#</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <%-- Suggested --%>
                                    <div class="tab-pane" id="tab_2">
                                        <div class="box">
                                            <div class="box-body">
                                                <table id="example2" class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <th>Phone</th>
                                                            <th>Major</th>
                                                            <th>Company</th>
                                                            <th>Status</th>
                                                            <th style="width: 10%">#</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                Phạm Châu Long
                                                            </td>
                                                            <td>0943394172</td>
                                                            <td>Pre-med</td>
                                                            <td>Bach Mai Hospital</td>
                                                            <td><span class="badge bg-green">Online</span></td>
                                                            <td>
                                                                <button class="btn btn-sm  btn-primary" href="#"><i
                                                                        class="fa fa-fw fa-comment-o"
                                                                        aria-hidden="true"></i>
                                                                </button> &nbsp;
                                                                <button class="btn btn-sm  btn-danger" href="#"
                                                                        onclick="return confirm('Are you sure want to request this link?')">
                                                                    <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                    Phạm Thị Ngọc Ánh
                                                            </td>
                                                            <td>0943394172</td>
                                                            <td>Pre-med</td>
                                                            <td>Thanh Nhan Hospital</td>
                                                            <td><span class="badge bg-red">Offline</span></td>
                                                            <td>
                                                                <button class="btn btn-sm  btn-primary" href="#"><i
                                                                        class="fa fa-fw fa-comment-o"
                                                                        aria-hidden="true"></i>
                                                                </button> &nbsp;
                                                                <button class="btn btn-sm  btn-danger" href="#"
                                                                        onclick="return confirm('Are you sure want to request this link?')">
                                                                    <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <th>Phone</th>
                                                            <th>Major</th>
                                                            <th>Company</th>
                                                            <th>Status</th>
                                                            <th>#</th>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
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
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/bower_components/datatables.net/js/jquery.dataTables.js"></script>
        <script src="template/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"></script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
        <script>
            $(function () {
                $('#example2').DataTable()
            })
        </script>
    </body>
</html>
