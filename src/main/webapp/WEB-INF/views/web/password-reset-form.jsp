<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Reset Password</title>
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
                        <a href="${pageContext.request.contextPath}/forgot-password"><h1 class="title">Create new
                            password</h1></a>
                        <hr/>
                    </div>
                </div>
                <div class="main-login main-center">
                    <form:form class="form-horizontal"
                               method="post"
                               action="${pageContext.request.contextPath}/forgot-password/reset-process"
                               onsubmit="return validatePassword();">

                        <p id="error" style="color: red; text-align: center">
                            <c:if test="${sessionScope.message !=null}">
                                <c:out value="${sessionScope.message}"></c:out>
                                <c:remove var="message"></c:remove>
                            </c:if>
                        </p>
                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">New password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    </span>
                                    <input type="password" class="form-control"
                                           name="password" id="password" required
                                           placeholder="Enter your new password"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="re-password" class="cols-sm-2 control-label">Confirm new password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-lock fa-lg" aria-hidden="true"></i>
                                    </span>
                                    <input type="password" class="form-control"
                                           name="rePassword" id="re-password" required
                                           placeholder="Confirm your new password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button>
                        </div>
                        <div class="login-register">
                            <a href="${pageContext.request.contextPath}/login">Login</a>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <script src="/form/password-form.js"></script>
        <script type="text/javascript" src="/assets/js/bootstrap.js"></script>
    </body>
</html>