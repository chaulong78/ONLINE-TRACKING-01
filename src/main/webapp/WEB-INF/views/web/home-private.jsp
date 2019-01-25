<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Management</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="private/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="private/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="private/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" type="text/css" href="private/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" type="text/css" href="private/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
                        Online Health Tracking System
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    </ol>
                    <br>
                    </ul>
                </section>

                <section class="content">

                </section>
            </div>

            <%-- Footer --%>
            <c:import url="/WEB-INF/common/layout/footer.jsp"/>
        </div>

        <script src="private/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="private/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="private/dist/js/adminlte.min.js"></script>
    </body>
</html>
