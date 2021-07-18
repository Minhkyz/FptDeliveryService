<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/06/2021
  Time: 2:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <ul>
        <!--Chua login -->
        <c:if test="${sessionScope.acc == null}">
            <li class="dashboard">
                <i class="fa fa-dashcube"></i>
                <a href="home">Home</a>
            </li>
            <li>
                <i class="fa fa-user"></i>
                <a href="login">Login</a>
            </li>
            <li>
                <i class="fa fa-user-plus"></i>
                <a href="#">Register</a>
            </li>
            <li>
                <i class="fa fa-info-circle"></i>
                <a href="#">About Me</a>
            </li>
        </c:if>

        <!-- Login  -->
        <c:if test="${sessionScope.acc != null}">
            <li class="dashboard">
                <i class="fa fa-dashcube"></i>
                <a href="home">Home</a>
            </li>
            <c:forEach items="${sessionScope.role}" var="o">
                <c:if test="${o.roleID == 3}">
                    <li>
                        <i class="fa fa-dashcube"></i>
                        <a href="#">Dashboard</a>
                    </li>
                </c:if>
            </c:forEach>
            <li>
                <i class="fa fa-money"></i>
                <a href="#">Delivery</a>
            </li>
            <li>
                <i class="fa fa-credit-card-alt"></i>
                <a href="#">Order</a>
            </li>
            <li>
                <i class="fa fa-envelope-o"></i>
                <a href="#">Chat</a>
            </li>
            <li>
                <i class="fa fa-envelope-o"></i>
                <a href="#">Add New Items</a>
            </li>
            <li>
                <i class="fa fa-history"></i>
                <a href="#">History</a>
            </li>
            <li>
                <i class="fa fa-info-circle"></i>
                <a href="#">About Me</a>
            </li>
        </c:if>
    </ul>
</div>
