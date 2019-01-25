<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Edit Profile</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="/private/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="/private/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="/private/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="/private/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="/private/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="/private/plugins/iCheck/all.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
            #cert {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #cert td, th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #cert tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #cert tr:hover {
                background-color: #ddd;
            }

            #cert th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
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
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="#">Profile</a></li>
                    </ol>
                    <br>
                    </ul>
                </section>

                <section class="content">

                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <form:form role="form" action="" method="post">
                                    <div class="box-body">
                                        <div class="col-md-3">
                                            <div class="form-group" style="height: 59px">
                                                <label for="avatar">Avatar</label>
                                                <input type="file"
                                                       id="avatar" name="avatar">
                                            </div>

                                            <div class="form-group">
                                                <label for="fullName">Full name *</label>
                                                <input type="text" class="form-control"
                                                       id="fullName" name="fullName"
                                                       required>
                                            </div>

                                            <div class="form-group">
                                                <label for="birthDay">Birth day</label>
                                                <input type="text" class="form-control datepicker"
                                                       style="border-radius: 0px"
                                                       id="birthDay" name="birthDay">
                                            </div>

                                            <div class="form-group" style="height: 59px">
                                                <label>Gender</label>
                                                <br>
                                                <label>
                                                    <input type="radio" name="gender" class="minimal" value="MALE"
                                                           checked>
                                                    Male
                                                </label>
                                                <label>
                                                    <input type="radio" name="gender" class="minimal" value="FEMALE">
                                                    Female
                                                </label>
                                                <label>
                                                    <input type="radio" name="gender" class="minimal" value="OTHER">
                                                    Other
                                                </label>
                                            </div>

                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <input type="text" class="form-control"
                                                       id="phone" name="phone">
                                            </div>

                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email" class="form-control"
                                                       id="email" name="email"
                                                       required>
                                            </div>

                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <input id="address" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="job">Job</label>
                                                <input id="job" class="form-control">
                                            </div>


                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <label for="health">Health Status</label>:<br>
                                                <textarea id="health" class="form-control" rows="10"
                                                          style="resize: none">
                                                </textarea>
                                            </div>
                                            <br>
                                            <div class="form-group">
                                                <label>Certification</label>:<br>
                                                <textarea id="cert-data" class="form-control" rows="10"
                                                          style="resize: none;">
                                                    </textarea>
                                                <br>
                                                <label for="attach">Attach Images</label>
                                                <input type="file" id="attach" value="Select your image" multiple>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-footer">
                                        <div style="float: right">
                                            <button type="submit" class="btn btn-primary">Save
                                            </button>
                                            <button type="reset" class="btn btn-danger">Cancel
                                            </button>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <%-- Footer --%>
        <c:import url="/WEB-INF/common/layout/footer.jsp"/>

        <script src="/private/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="/private/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="/private/dist/js/adminlte.min.js"></script>
        <script src="/private/plugins/iCheck/icheck.min.js"></script>
        <script src="/private/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <script>
            $(function () {
                //Date picker
                $('.datepicker').datepicker({
                    autoclose: true
                });

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                });
            });
        </script>
        <script>
            function deleteRow(r) {
                var i = r.parentNode.parentNode.rowIndex;
                // alert(i);
                document.getElementById("cert").deleteRow(i);
            }

            function addItem() {
                var data = document.getElementById("cert-data");
                if (data.value.length) {
                    var tbody = document.getElementById("cert-body");
                    var tr = document.createElement("tr");
                    var td1 = document.createElement("td");
                    var td2 = document.createElement("td");
                    var btn = document.createElement("button");

                    btn.setAttribute("class", "btn btn-sm  btn-danger");
                    btn.setAttribute("href", "#");
                    btn.setAttribute("onclick", "return confirm('Are you sure want to delete this cert?')");
                    btn.setAttribute("onclick", "deleteRow(this);");

                    var i = document.createElement("i");
                    i.setAttribute("class", "fa fa-fw fa-trash");
                    i.setAttribute("aria-hidden", "true");

                    btn.appendChild(i);
                    td1.appendChild(document.createTextNode(data.value));
                    td2.appendChild(btn);
                    tr.appendChild(td1);
                    tr.appendChild(td2);

                    tbody.appendChild(tr);

                    document.getElementById("cert-data").value = "";
                }
            }
        </script>
    </body>
</html>
