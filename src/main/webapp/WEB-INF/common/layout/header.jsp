<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <header class="main-header">
    <a href="/" class="logo">
        <span class="logo-mini"><b>H</b></span>
        <span class="logo-lg"><b>Home</b></span>
    </a>

    <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li style="color: white; margin: 7px">
                    <form:form
                            action="${pageContext.request.contextPath}/logout"
                            method="post">
                        <button type="submit" class="btn btn-basic">Logout
                        </button>
                    </form:form>
                </li>
            </ul>
        </div>
    </nav>
</header>