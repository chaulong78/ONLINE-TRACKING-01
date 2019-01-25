<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <link rel="stylesheet" type="text/css" href="/form/register.css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="/public/plugins/iCheck/all.css">
        <title>Admin</title>
    </head>
    <body>
        <div class="container">
            <div class="row main">
                <div class="panel-heading">
                    <div class="panel-title text-center">
                        <a href="${pageContext.request.contextPath}/register"><h1 class="title">Sign Up</h1></a>
                    </div>
                    <a href="${pageContext.request.contextPath}/">
                        <h1 class="title" style="color: #71b9ff; text-align: center">
                            Back to home
                        </h1>
                    </a>
                    <hr/>
                </div>
                <c:if test="${sessionScope.message != null}">
                    <p style="text-align: center; color: red">
                        <c:out value="${sessionScope.message}"></c:out>
                        <c:remove var="message"></c:remove>
                    </p>
                </c:if>
                <div class="main-login main-center">
                    <form:form class="form-horizontal"  method="post"
                               action="${pageContext.request.contextPath}/register/process"
                               onsubmit="return validateRegister()" modelAttribute="userDTO">
                        <p id="error" style="color: red; text-align: center"></p>
                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Username</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user fa" aria-hidden="true"></i>
                                    </span>
                                    <input type="text" class="form-control"
                                                name="userName" value="${userDTO.userName}"
                                                id="username" placeholder="Enter your Username"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Your Email</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-envelope fa" aria-hidden="true"></i>
                                    </span>
                                    <input type="text" class="form-control"
                                                name="email" value="${userDTO.email}"
                                                id="email" placeholder="Enter your Email"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    </span>
                                    <input type="password" class="form-control"
                                                name="password" value="${userDTO.password}" required
                                                id="password" placeholder="Enter your Password"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="re-password" class="cols-sm-2 control-label">Confirm Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    </span>
                                    <input type="password" class="form-control" required
                                                name="rePassword" value="${userDTO.rePassword}"
                                                id="re-password" placeholder="Confirm your Password"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="re-password" class="cols-sm-2 control-label">Register As</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <br>
                                    <label style="margin-right: 10px">
                                        <form:radiobutton path="role" value="ROLE_DOCTOR"
                                                          cssClass="minimal"/> DOCTOR
                                    </label>
                                    <label>
                                        <form:radiobutton path="role" value="ROLE_PATIENT"
                                                          cssClass="minimal"/> PATIENT
                                    </label>
                                </div>
                            </div>
                        </div>

                        <%-- Remove userDTO attribute --%>
                        <c:if test="${sessionScope.userDTO != null}">
                            <c:remove var="userDTO"></c:remove>
                        </c:if>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button>
                        </div>
                        <div class="login-register">
                            <a href="/login">Login</a>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <script src="/form/register.js"></script>
        <script type="text/javascript" src="/assets/js/bootstrap.js"></script>
        <script src="/public/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                });
            });
        </script>
    </body>
</html>