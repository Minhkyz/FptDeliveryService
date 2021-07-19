<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="sidebar" id="sidebar">
    <ul>
        <li>
            <a href="admin">
                <div class="icon">
                    <i class="fa fa-home" aria-hidden="true"></i>
                    <i class="fa fa-home" aria-hidden="true"></i>
                </div>

                <div class="name"><span data-text="Home">Home</span></div>
            </a>
        </li>
        <c:if test="${sessionScope.acc.role == 3}">
        <li>
            <a href="UserList">
                <div class="icon">
                    <i class="fa fa-home" aria-hidden="true"></i>
                    <i class="fa fa-home" aria-hidden="true"></i>
                </div>

                <div class="name"><span data-text="User Manage">User Manage</span></div>
            </a>
        </li>
        </c:if>
        <c:if test="${sessionScope.acc.role == 2 || sessionScope.acc.role == 3}">
        <li>
            <a href="CategoryList">
                <div class="icon">
                    <i class="fa fa-question-circle" aria-hidden="true"></i>
                    <i class="fa fa-question-circle" aria-hidden="true"></i>
                </div>
                <div class="name"><span data-text="About">Category Manage</span></div>
            </a>
        </li>
        <li>
            <a href="ShowItemAdminControl">
                <div class="icon">
                    <i class="fa fa-motorcycle" aria-hidden="true"></i>
                    <i class="fa fa-motorcycle" aria-hidden="true"></i>
                </div>
                <div class="name"><span data-text="Delivering">Item Manage</span></div>
            </a>
        </li>
        <li>
            <a href="OrderListControl">
                <div class="icon">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                <div class="name"><span data-text="Feedback">Delivery</span></div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="icon">
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                </div>

                <div class="name"><span data-text="Settings">Item approved</span></div>
            </a>
        </li>
        </c:if>
    </ul>
</div>