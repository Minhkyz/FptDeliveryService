<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/06/2021
  Time: 2:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar" id="sidebar" id="mainsidebar">
    <ul>
        <c:if test="${sessionScope.acc == null}">
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <i class="fa fa-home" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Home">Home</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-question-circle" aria-hidden="true"></i>
                        <i class="fa fa-question-circle" aria-hidden="true"></i>
                    </div>
                    <div class="name"><span data-text="About">Login</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-motorcycle" aria-hidden="true"></i>
                        <i class="fa fa-motorcycle" aria-hidden="true"></i>
                    </div>
                    <div class="name"><span data-text="Delivering">Register</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-motorcycle" aria-hidden="true"></i>
                        <i class="fa fa-motorcycle" aria-hidden="true"></i>
                    </div>
                    <div class="name"><span data-text="Delivering">About Me</span></div>
                </a>
            </li>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <i class="fa fa-home" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Home">Home</span></div>
                </a>
            </li>
            <c:if test="${sessionScope.acc.role == 2 || sessionScope.acc.role == 3}">
                <li>
                    <a href="#">
                        <div class="icon">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                        </div>
                        <div class="name"><span data-text="DashBoard">DashBoard</span></div>
                    </a>
                </li>
            </c:if>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-motorcycle" aria-hidden="true"></i>
                        <i class="fa fa-cogs" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Delivery">Delivery</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon"><i class="fa fa-sticky-note-o" aria-hidden="true"></i>
                        <i class="fa fa-sticky-note-o" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Ord">Order</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <i class="fa fa-comments-o" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Chat">Chat</span></div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="icon">
                        <i class="fa fa-plus-square-o" aria-hidden="true"></i>
                        <i class="fa fa-plus-square-o" aria-hidden="true"></i>
                    </div>

                    <div class="name"><span data-text="Add New">Add New</span></div>
                </a>
            </li>

        </c:if>
    </ul>
</div>