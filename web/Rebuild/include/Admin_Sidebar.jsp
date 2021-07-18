<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar" id="sidebar">
    <ul>
        <c:forEach items="${sessionScope.role}" var="o">
            <c:if test="${o.roleID == 3}">

            </c:if>
        </c:forEach>

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
                <div class="name"><span data-text="About">About</span></div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="icon">
                    <i class="fa fa-motorcycle" aria-hidden="true"></i>
                    <i class="fa fa-motorcycle" aria-hidden="true"></i>
                </div>
                <div class="name"><span data-text="Delivering">Delivering</span></div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="icon">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                <div class="name"><span data-text="Feedback">Feedback</span></div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="icon">
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                </div>

                <div class="name"><span data-text="Settings">Settings</span></div>
            </a>
        </li>
    </ul>
</div>