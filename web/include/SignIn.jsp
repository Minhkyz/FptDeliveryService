<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/07/2021
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main-body">

    <img src="./images/ship.png" id="shipper" alt="">
    <div class="container" id="multiformcontainer">
        <header>Sign In</header>
        <div class="form-outer">
            <form action="login" method="post">
                <div class="page slide-page">
                    <div class="field">
                        <div class="label">Username</div>
                        <input type="text" name="user" title="You must fill this field" required>
                    </div>
                    <div class="field">
                        <div class="label">Password</div>
                        <input type="password" name="pass" title="You must fill this field" required>
                    </div>

                    <div class="field">
                        <button class="submit">Sign In</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <img src="./images/reveive.png" id="receiver" alt="">
