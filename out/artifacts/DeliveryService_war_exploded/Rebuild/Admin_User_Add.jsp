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
    <title>Home</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Rebuild/css/Home.css">
    <link rel="stylesheet" href="./Rebuild/css/addUserform.css">
</head>

<body>
<div class="container">
    <jsp:include page="include/Navbar.jsp" />
    <div class="container-body">
        <jsp:include page="include/sidebar.jsp" />
        <div class="main-body" id="parent">

            <img src="./images/ship.png" alt="" id="shipper" >
            <div class="container" id="registercontainer" >

                <div class="title">Registration</div>
                <div class="content">
                    <form action="#">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">Full Name</span>
                                <input type="text" placeholder="Enter your name" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Username</span>
                                <input type="text" placeholder="Enter your username" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Email</span>
                                <input type="text" placeholder="Enter your email" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Phone Number</span>
                                <input type="text" placeholder="Enter your number" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Password</span>
                                <input type="text" placeholder="Enter your password" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Confirm Password</span>
                                <input type="text" placeholder="Confirm your password" required>
                            </div>
                        </div>
                        <div class="gender-details">
                            <input type="radio" name="gender" id="dot-1">
                            <input type="radio" name="gender" id="dot-2">
                            <input type="radio" name="gender" id="dot-3">
                            <span class="gender-title">Gender</span>
                            <div class="category">
                                <label for="dot-1">
                                    <span class="dot one"></span>
                                    <span class="gender">Male</span>
                                </label>
                                <label for="dot-2">
                                    <span class="dot two"></span>
                                    <span class="gender">Female</span>
                                </label>
                                <label for="dot-3">
                                    <span class="dot three"></span>
                                    <span class="gender">Prefer not to say</span>
                                </label>
                            </div>
                        </div>
                        <div class="button">
                            <input type="submit" value="Register">
                        </div>
                    </form>
                </div>
            </div>

            <div class="avatar">
                <img id="avatar" src="./images/Avatarmau.png" alt="">
                <button>Upload Avatar</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
