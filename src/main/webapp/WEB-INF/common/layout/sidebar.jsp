    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
        <aside class="main-sidebar">
        <section class="sidebar">
        <div class="user-panel">
        <div class="pull-left image">
        <img src="/private/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
        <p><sec:authentication property="principal.username"></sec:authentication></p>
        <sec:authorize access="hasRole('ADMIN')">
            <i class="fa fa-circle text-red"></i> Admin
        </sec:authorize>
        <sec:authorize access="hasRole('DOCTOR')">
            <i class="fa fa-circle text-green"></i> Doctor
        </sec:authorize>
        <sec:authorize access="hasRole('PATIENT')">
            <i class="fa fa-circle text-blue"></i> Patient
        </sec:authorize>
        </div>
        </div>

        <%-- Get function --%>
        <c:forEach var="function" items="${sessionScope.functionList}">
            <c:if test="${function.id == 'profile'}">
                <c:if test="${function.canRead == true}">
                    <c:set var="profile" value="true"></c:set>
                </c:if>
            </c:if>

            <c:if test="${function.id == 'changepassword'}">
                <c:if test="${function.canRead == true}">
                    <c:set var="changepassword" value="true"></c:set>
                </c:if>
            </c:if>

            <c:if test="${function.id == 'message'}">
                <c:if test="${function.canRead == true}">
                    <c:set var="message" value="true"></c:set>
                </c:if>
            </c:if>
        </c:forEach>
        <%-- End get function --%>
        <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>

        <%-------------- ROLE: Common --------------%>
        <li class="treeview">
        <a href="#">
        <i class="fa fa-wrench"></i> <span>User information</span>
        <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
        </span>
        </a>
        <ul class="treeview-menu">

        <c:if test="${profile == true}">
            <li>
            <a href="${pageContext.request.contextPath}/home/profile">
            <i class="fa fa-circle-o"></i>
            Profile
            </a>
            </li>
        </c:if>

        <c:if test="${changepassword == true}">
            <li>
            <li>
            <a href="${pageContext.request.contextPath}/home/change-password">
            <i class="fa fa-circle-o"></i>
            Change password
            </a>
            </li>
        </c:if>

        </ul>
        </li>

        <sec:authorize access="hasRole('ADMIN')">
            <%-------------- System Management --------------%>

            <%-- System --%>
            <li class="treeview">
            <a href="#">
            <i class="fa fa-wrench"></i> <span>System</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">

            <%-- Admin Account --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Admin account
            </a>
            </li>
            <%-- End Admin Account --%>

            <%-- Role --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Role
            </a>
            </li>
            <%--End Role--%>

            <%-- Function --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Function
            </a>
            </li>
            <%-- Function --%>

            </ul>
            </li>
            <%-- End System --%>

            <%-- Device --%>
            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-gear"></i> <span>Device</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">

            <%-- All Devices --%>
            <li class="">
            <a href="#">
            <i class="fa fa-circle-o"></i>
            All devices
            </a>
            </li>
            <%-- End All Devices --%>

            <%-- Update Firmware --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Update firmware
            </a>
            </li>
            <%-- End Update Firmware --%>

            </ul>
            </li>
            <%-- End Device --%>

            <%-- Post --%>
            <li class="treeview">
            <a href="#">
            <i class="fa fa-newspaper-o"></i> <span>Post</span>
            </a>
            </li>
            <%-- End Post --%>
        </sec:authorize>

        <sec:authorize access="hasRole('DOCTOR')">
            <%-------------- ROLE: Doctor --------------%>

            <%-- Patient List --%>
            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-link"></i> <span>Patient List</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">

            <%-- Linked --%>
            <li class="">
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Linked
            </a>
            </li>
            <%-- End Linked --%>

            <%-- Unlinked --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Request
            </a>
            </li>
            <%-- End Unlinked --%>

            </ul>
            </li>
            <%-- End Patient List--%>

            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-gear"></i> <span>Device</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">

            <%-- All Devices --%>
            <li class="">
            <a href="#">
            <i class="fa fa-circle-o"></i>
            All devices
            </a>
            </li>
            <%-- End All Devices --%>

            <%-- Health Chart --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Health Chart
            </a>
            </li>
            <%-- End Health Chart --%>

            <%-- Order Device --%>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Order device
            </a>
            </li>
            <%-- End Order Device --%>

            </ul>
            </li>
        </sec:authorize>

        <sec:authorize access="hasRole('PATIENT')">
            <%-------------- ROLE: Patient --------------%>
            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-link"></i> <span>Doctor List</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">
            <li class="">
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Linked
            </a>
            </li>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Request
            </a>
            </li>
            </ul>
            </li>

            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-gear"></i> <span>Device</span>
            <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">
            <li class="">
            <a href="#">
            <i class="fa fa-circle-o"></i>
            All devices
            </a>
            </li>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Health Chart
            </a>
            </li>
            <li>
            <a href="#">
            <i class="fa fa-circle-o"></i>
            Order device
            </a>
            </li>

            </ul>
            </li>
        </sec:authorize>

        <%-- Message --%>
        <c:if test="${message == true}">
            <li class="treeview">
            <a href="#">
            <i class="fa fa-fw fa-envelope"></i>
            <span>Messenger</span>
            </a>
            </li>
        </c:if>
        <%-- End Message --%>

        </ul>
        </section>
        </aside>