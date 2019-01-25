<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin - Post Management</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/plugins/iCheck/all.css">
        <link rel="stylesheet" href="template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="template/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
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
                        Post List
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="#">Post</a></li>
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
                                                <th>Title</th>
                                                <th>Author</th>
                                                <th>Last Updated</th>
                                                <th>Status</th>
                                                <th style="width: 10%">#</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>38F91E2D-172A-4045-A86F-560A5F90B89D</td>
                                                <td>Toy Story 3</td>
                                                <td>chaulong78</td>
                                                <td>2018/12/26 15:16:22</td>
                                                <td><span class="badge bg-green">Visible</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this post?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>38F91E2D-172A-4045-A86F-560A5F90B89D</td>
                                                <td>Spider-Man - Into the Spider-Verse</td>
                                                <td>mvc12</td>
                                                <td>2018/11/15 15:16:22</td>
                                                <td><span class="badge bg-red">Invisible</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this post?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>38F91E2D-172A-4045-A86F-560A5F90B89D</td>
                                                <td>Bumblebee</td>
                                                <td>anhanh08</td>
                                                <td>2018/8/25 15:16:22</td>
                                                <td><span class="badge bg-red">Invisible</span></td>
                                                <td>
                                                    <button class="btn btn-sm  btn-primary" href="#"
                                                            data-toggle="modal" data-target="#add-edit"><i
                                                            class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </button> &nbsp;
                                                    <button class="btn btn-sm  btn-danger" href="#"
                                                            onclick="return confirm('Are you sure want to delete this post?')">
                                                        <i class="fa fa-fw fa-trash" aria-hidden="true"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            <tr>
                                                <th>ID</th>
                                                <th>Title</th>
                                                <th>Author</th>
                                                <th>Last Updated</th>
                                                <th>Status</th>
                                                <th>#</th>
                                            </tr>
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
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/plugins/iCheck/icheck.min.js"></script>
        <script src="template/bower_components/datatables.net/js/jquery.dataTables.js"></script>
        <script src="template/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"></script>
        <script src="template/bower_components/ckeditor/ckeditor.js"></script>
        <script src="template/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.js"></script>
        <script>
            $(function () {
                CKEDITOR.replace('editor2')
                //bootstrap WYSIHTML5 - text editor
                $('.textarea').wysihtml5()
            })
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            })
        </script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
    </body>
</html>
