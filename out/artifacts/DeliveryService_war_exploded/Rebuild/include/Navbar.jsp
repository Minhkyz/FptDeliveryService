<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/06/2021
  Time: 2:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar">
    <div class="logo">
        <img style="width: 40px;" src="../images/fptdelivery.png" alt="">
        <span class="logoname">FPT Delivery</span>
    </div>

    <div class="searchbox">
        <form action="">
            <input type="text" placeholder="Search">
            <i class="fa fa-search"></i>
        </form>
    </div>

    <div class="navitem">
        <c:if test="${sessionScope.acc == null}">
            <div class="icons">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fa fa-user-plus"></i>
                            <span class="name">Register</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span class="name">Login</span>
                        </a>
                    </li>
                </ul>
            </div>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <div class="icons">
                <ul>
                    <li>
                        <a href="LogoutControl">
                            <i class="fa fa-sign-out"></i>
                            <span class="name">Logout</span>
                        </a>
                    </li>
                </ul>

            </div>
            <div class="account">
                <img width="25px" height="25px" src="../images/fptdelivery.png" alt="">
                <span class="name">${sessionScope.acc.fullName}</span>
                <span class="username">@${sessionScope.acc.username}</span>
            </div>
        </c:if>
    </div>
</div>
