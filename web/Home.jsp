<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/06/2021
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link href="./css/xyz.css" rel="stylesheet">
</head>

<body>
<br>
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2">
            <form action="CartControl">
                <img src="./images/fptdelivery.png" class="img"/>
                <br><br>
                <div class="anhdahong">
                    <c:if test="${sessionScope.acc == null}">
                        <a href="login.jsp" class="btn ">
                            <i class="fas fa-id-card" id="icon"></i>
                            <h4>Login</h4>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="#" class="btn ">
                            <i class="fas fa-id-card" id="icon"></i>
                            <h4>Hello ${sessionScope.acc.fullName}</h4>
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.role != null}">
                        <c:forEach items="${sessionScope.role}" var="o">
                            <c:if test="${o.roleID == 3}">
                                <a href="AdminHome.jsp" class="btn ">
                                    <i class="fas fa-id-card" id="icon"></i>
                                    <h4>Admin</h4>
                                </a>
                            </c:if>
                        </c:forEach>
                    </c:if>

                    <!--
                    <button id="hong" class="btn btn-lg btn-block" href="login.jsp">
                        <i class="fa fa-home" id="icon-a"></i>
                        <h4>Login</h4>
                    </button>
                    -->
                </div>

                <br>
                <div class="anhdatrang">
                    <a href="AboutMe.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>About Me</h4>
                    </a>

                    <br><br>
                    <a href="#" class="btn">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>Delivering</h4>
                    </a>
                    <br><br>
                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>Feedback</h4>
                    </a>
                    <c:if test="${sessionScope.acc != null}">
                        <br><br>
                        <a href="LogoutControl" class="btn ">
                            <i class="fas fa-id-card" id="icon"></i>
                            <h4>Log out</h4>
                        </a>
                    </c:if>
                </div>
            </form>

            <img src="./images/shipper3.png" class="img" style="height: 150px; width: 200px;"/>
        </div>


        <div class="col-sm-10">
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <h2><strong> Welcome to </strong></h2>
                    <h2>Delivery World</h2>
                </div>

                <div class="col-sm-5 ">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="" placeholder="Search...">
                        <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                    </div>
                </div>
                <div class="col-sm-4">
                    <a href="Cart.jsp" class="cart_icon"><i class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-9">
                    <div class="row myitem">
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/bergers.png" alt="Card image cap">
                                <strong>Thức Ăn</strong>
                            </a>
                        </div>
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/banhmi.png" alt="Card image cap">
                                <h5 class="card-title text-center">
                                    <strong>Ăn Vặt</strong>
                                </h5>
                            </a>
                        </div>
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/garan2.png" alt="Card image cap">
                                <h5 class="card-title text-center">
                                    <strong>Nước</strong>
                                </h5>
                            </a>
                        </div>
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/banhmi.png" alt="Card image cap">
                                <h5 class="card-title text-center">
                                    <strong>Trà sữa</strong>
                                </h5>
                            </a>
                        </div>
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/comga.png" alt="Card image cap">
                                <h5 class="card-title text-center">
                                    <strong>Stationery</strong>
                                </h5>
                            </a>
                        </div>
                        <div class="col-sm-2 menu">
                            <a href="#" class="btn" type="submit" href="#">
                                <img class="card-img-top" src="./images/trasua.png" alt="Card image cap">
                                <h5 class="card-title text-center">
                                    <strong>Khác</strong>
                                </h5>
                            </a>
                        </div>
                    </div>
                    <h3>List product</h3>
                    <div class="col-sm-12">
                        <div class="row  mycode">
                            <c:forEach items="${listP}" var="o">
                                <div class="col-sm-2">
                                    <div class="imgx">
                                        <img src="${o.image}"/>
                                    </div>
                                    <div class="content">
                                        <h2 class="price"> <a href="DetailItems?pid=${o.id}" title="View Product">${o.name} </a> </h2>
                                        <h3 class="name">${o.price}$</h3>
                                        <a href="CartControl?id=${o.id}" class="buy"> Buy</a>
                                    </div>

                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <div class="col-sm-12">
                            <img src="images/voucher.png" class="banner"/>
                        </div>
                        <h3>Check List</h3>
                        <div class="col-sm-12" id="checkList">
                            <div class="inbox-message">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="unread">Unread</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Đặt 1 đơn hàng </p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="unread">Unread</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar3.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="pending">Pending Work</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar4.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="unread">Unread</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar5.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="business">Business</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="important">Important</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="message-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar3.png"
                                                     alt="">
                                            </div>
                                            <div class="message-body">
                                                <div class="message-body-heading">
                                                    <h6>Daniel Dock <span class="unread">Unread</span></h6>
                                                    <span>7 hours ago</span>
                                                </div>
                                                <p>Hello, Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                    sed do eiusmod tempor incididunt ut labore et dolor....</p>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>

        </div>
    </div>
</body>

</html>
