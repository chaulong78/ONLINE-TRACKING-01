<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
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
                        <a href="${pageContext.request.contextPath}/login"><h1 class="title">Sign In</h1></a>
                    </div>
                    <a href="${pageContext.request.contextPath}/">
                        <h1 class="title" style="color: #71b9ff; text-align: center">
                            Back to home
                        </h1>
                    </a>
                    <hr/>
                </div>
                <div class="main-login main-center">
                    <c:if test="${sessionScope.message != null}">
                            <span style="color: #ffb62c; font-weight: bold; text-align: center">
                                <c:out value="${sessionScope.message}"></c:out>
                                <c:remove var="message"></c:remove>
                            </span>
                    </c:if>
                    <form:form action="${pageContext.request.contextPath}/forgot-password/send-email" method="post">
                        <p id="error" style="color: red; text-align: center"></p>
                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Enter your email address</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-user fa" aria-hidden="true"></i>
                                    </span>
                                    <input type="text" class="form-control" name="email" id="email"
                                           placeholder="Enter your email">
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Submit</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="/assets/js/bootstrap.js"></script>
    </body>
</html>