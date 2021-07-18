<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/06/2021
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/Admin_Home.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap"
            rel="stylesheet">

    <!--Open Add User form-->
    <link rel="stylesheet" href="./css/adduserform.css">
</head>

<body>
<div class="container" id="sidecontainer">
    <jsp:include page="include/Navbar.jsp" />
    <div class="container-body">
        <jsp:include page="include/Admin_Sidebar.jsp" />
        <!--Start body-->
        <div class="main-body" id="parent">

            <img src="./images/ship.png" alt="" id="shipper" >
            <div class="container" id="registercontainer" >
                <div class="title">Registration</div>
                <div class="content">
                    <form action="addUser" method="post">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">Full Name</span>
                                <input type="text" name="fullName" placeholder="Enter your name" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Username</span>
                                <input type="text" name="username" placeholder="Enter your username" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Email</span>
                                <input type="text" name="email" placeholder="Enter your email" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Phone Number</span>
                                <input type="text" name="phone" placeholder="Enter your number" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Password</span>
                                <input type="text" name="password" placeholder="Enter your password" required>
                            </div>

                        </div>

                        <div class="button">
                            <input type="submit" value="Register">
                        </div>

                    </form>

                </div>

            </div>

            <div class="avatar">
                <img id="avatar" name="img" src="./images/Avatarmau.png" alt="">
                <button>Upload Avatar</button>

            </div>
        </div>

    </div>

</div>

</body>

</html>