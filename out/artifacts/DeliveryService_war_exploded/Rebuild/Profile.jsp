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
    <link rel="stylesheet" href="./css/Home.css">
    <link rel="stylesheet" href="./css/Profile.css">
</head>

<body>
<div class="container">
    <jsp:include page="include/Navbar.jsp" />
    <div class="container-body">
        <jsp:include page="include/sidebar.jsp" />
        <div class="main-body">
            <div class="headtittle">
                <h2>Home</h2>
            </div>
            <!--Body-->
                <jsp:include page="include/Profile.jsp" />
            <!-- end Body-->
        </div>
    </div>
</div>
</body>
</html>
