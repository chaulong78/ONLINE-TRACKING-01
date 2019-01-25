<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin - Role Management</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="template/plugins/iCheck/all.css">
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
                        Role List
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">System</a></li>
                        <li class="active"><a href="#">Role</a></li>
                    </ol>
                    <br>
                    <a href="#">
                        <button type="button" class="btn btn-sm btn-primary"
                                data-toggle="modal" data-target="#add-edit">
                            Add new
                        </button>
                    </a>
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
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Status</th>
                                                <th style="width: 10%">#</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>9f3a8e74-f7b3-42d7-903c-4a31c6d8d31d</td>
                                                <td>Admin</td>
                                                <td>Quản trị hệ thống, toàn quyền</td>
                                                <td><span class="badge bg-green">Enable</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this role?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>f4ad9f6e-bfa4-4570-b7d7-6ddbfa2c6f1e</td>
                                                <td>Tester</td>
                                                <td>Sử dụng được chức năng của bác sĩ và bệnh nhân cùng lúc</td>
                                                <td><span class="badge bg-green">Enable</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this role?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>cddc595a-9351-484b-86c3-aa789ecd0a0a</td>
                                                <td>Doctor</td>
                                                <td>Sử dụng các chức năng của bác sĩ</td>
                                                <td><span class="badge bg-green">Enable</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this role?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>d5af2b57-e1aa-4a0e-b77e-bc9382376680</td>
                                                <td>Patient</td>
                                                <td>Sử dụng các chức năng của bênh nhân</td>
                                                <td><span class="badge bg-red">Disable</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this role?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Description</th>
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
                    <c:import url="add-edit.jsp"/>

                </section>
            </div>

            <%-- Footer --%>
            <c:import url="/common/layout/footer.jsp"/>
        </div>

        <script src="template/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="template/plugins/iCheck/icheck.min.js"></script>
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/bower_components/datatables.net/js/jquery.dataTables.js"></script>
        <script src="template/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"></script>
        <script>
            $(function () {
                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass   : 'iradio_minimal-blue'
                })
                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass   : 'iradio_minimal-red'
                })
            })
        </script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
    </body>
</html>
