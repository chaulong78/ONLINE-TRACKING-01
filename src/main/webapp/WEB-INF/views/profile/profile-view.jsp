<%--<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Profile</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="/private/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="/private/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="/private/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="/private/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="/private/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <script
                src="https://code.jquery.com/jquery-3.3.1.min.js"
                integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
                crossorigin="anonymous"></script>
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <%-- Header --%>
            <c:import url="/WEB-INF/common/layout/header.jsp"/>
            <!-- Left side bar -->
            <c:import url="/WEB-INF/common/layout/sidebar.jsp"/>

            <%-- Main content --%>
            <div class="content-wrapper">

                <%-- Header content --%>
                <section class="content-header">
                    <h1>
                        User Information
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home"><i class="fa fa-dashboard"></i> Home</a>
                        </li>
                        <li class="active"><a href="/home/profile">Profile</a></li>
                    </ol>
                    <br>
                    </ul>
                </section>

                <section class="content">

                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="fullName">Full Name</label>
                                                <span id="fullName">: ${sessionScope.user.fullName}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="birthDay">Birth Day</label>
                                                <span id="birthDay">: ${sessionScope.user.birthDay}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="gender">Gender</label>
                                                <span id="gender">: ${sessionScope.user.gender}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <span id="phone">: ${sessionScope.user.phone}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <span id="email">: ${sessionScope.user.email}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <span id="address">: ${sessionScope.user.address}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="job">Job</label>
                                                <span id="job">: ${sessionScope.user.job}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="major">Major</label>
                                                <span id="major">: ${sessionScope.user.major}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="company">Company</label>
                                                <span id="company">: ${sessionScope.user.company}</span>
                                            </div>
                                        </div>

                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <label for="health">Health Status</label>
                                                <span id="health">:<br>
                                                    ${sessionScope.user.healthStatus}</span>
                                            </div>

                                            <div class="form-group">
                                                <label for="cerification">Certification</label>
                                                <span id="cerification">:<br>
                                            <ul>
                                            </ul>
                                        </span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="box-footer">
                                    <div style="float: right">
                                        <%--<a href="/home/profile/edit">--%>
                                        <button type="button" class="btn btn-primary" id="edit" onclick="getUser();">
                                            Edit Profile
                                        </button>
                                        <%--</a>--%>
                                        <button type="button" class="btn btn-danger">Change Password
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <%-- Footer --%>
            <c:import url="/WEB-INF/common/layout/footer.jsp"/>
        </div>
        <script>
            function getUser() {
                $.ajax({
                    url: "/api/profile/" + ${sessionScope.user.id},
                    type: "GET",
                    dataType: "json",
                    success: function (response) {
                        alert("Thanh cong: " + response);
                    },
                    error: function (response) {
                        alert("That bai: " + response);
                    }
                });
            }
        </script>

        <script src="/private/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="/private/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="/private/dist/js/adminlte.min.js"></script>
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
    </body>
</html>
