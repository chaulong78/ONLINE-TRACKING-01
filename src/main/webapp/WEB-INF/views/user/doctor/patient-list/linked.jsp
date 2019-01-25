<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Patient List</title>
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
                        Patient List
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="#">Patient List</a></li>
                    </ol>
                    <br>
                    <table>
                        <tr>
                            <th>
                                <a href="#">
                                    <button type="button" class="btn btn-block btn-primary">
                                        Add new
                                    </button>
                                </a>
                            </th>

                        </tr>
                    </table>
                    </ul>
                </section>

                <section class="content">

                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Full Name</th>
                                                <th>Age</th>
                                                <th>Gender</th>
                                                <th>Job</th>
                                                <th>Health Status</th>
                                                <th>Status</th>
                                                <th style="width: 13%">#</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="clickable-row" data-href="" data-toggle="modal"
                                                    data-target="#view-user">
                                                    Phạm Châu Long
                                                </td>
                                                <td>21</td>
                                                <td>MALE</td>
                                                <td>Student</td>
                                                <td class="health">Hypertension, which is chronically high blood
                                                    pressure, is one of
                                                    the most common medical problems. Hypertension does not usually
                                                    cause any symptoms
                                                </td>
                                                <td><span class="badge bg-green">Online</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#" title="Send Message"><i
                                                            class="fa fa-fw fa-comment-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-success" href="#" title="View Chart">
                                                        <i class="fa fa-fw fa-bar-chart" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#" title="Cancel Link"
                                                            onclick="return confirm('Are you sure want to cancel this link?')">
                                                        <i class="fa fa-fw fa-ban" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Full Name</th>
                                                <th>Age</th>
                                                <th>Gender</th>
                                                <th>Job</th>
                                                <th>Health Status</th>
                                                <th>Status</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Edit - modal content-->
                    <c:import url="view-user.jsp"/>
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
            $('document').ready(function () {
                $('.clickable-row').click(function () {
                    window.location = this.data('href');
                });
            });
        </script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
        <script>
            var len = 50;
            var p = document.getElementsByClassName('health');
            var pLength = p.length;

            for (var i = 0; i < pLength; i++) {
                if (p[i]) {
                    var trunc = p[i].innerHTML;
                    if (trunc.length > len) {
                        trunc = trunc.substring(0, len);
                        trunc = trunc.replace(/\w+$/, '') + '...';
                        p[i].innerHTML = trunc;
                    }
                }
            }
        </script>
    </body>
</html>
