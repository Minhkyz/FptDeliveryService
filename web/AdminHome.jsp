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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link href="./css/abc_3.css" rel="stylesheet">
</head>
<body>
<c:if test="${sessionScope.acc == null}">
    <c:redirect url="login"/>
</c:if>
<c:if test="${sessionScope.role == null}">
    <c:redirect url="login"/>
</c:if>

<c:if test="${sessionScope.role != null}">
<c:forEach items="${sessionScope.role}" var="o">
<c:choose>
<c:when test="${o.roleID == 3}">
<br>
<div class="container-fluid">

    <div class="row content">

        <div class="col-sm-2">
            <form action="">
                <img src="./images/fptdelivery.png" class="img"/>
                <br>


                <div class="anhdatrang">
                    <a href="AdminHome.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Admin Home</h5>
                    </a>

                    <a href="Admin_RoleManager.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Role</h5>
                    </a>

                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Category</h5>
                    </a>

                    <a href="AdminShowUserControl" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>User Manager</h5>
                    </a>

                    <a href="ShowItemAdminControl" class="btn">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Product Manager</h5>
                    </a>

                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Top Item</h5>
                    </a>

                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Setting</h5>
                    </a>
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
                    <a href="#" class="cart_icon"><i class="fas fa-shopping-cart"></i></a>
                </div>
            </div>
            <div class="bio-info">
                <div class="items-center">
                </div>
                </br>

                <!--Start Code-->
                <h2 class="admin-dashboard">Admin Dashboard</h2>
                <div class="row" id="card-row">
                    <div class="col-sm-4" id="first-card">
                        <div class="card" style="width: 16rem;">

                            <div class="card-body">
                                <h4 class="card-title">Total user</h4>
                                <p class="card-text"><i class="far fa-clock"></i> There are 79 customers </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" id="">
                        <div class="card" style="width: 16rem;">

                            <div class="card-body">
                                <h4 class="card-title">Total item</h4>
                                <p class="card-text"><i class="far fa-clock"> </i> There are 1000 products</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card" style="width: 16rem;">

                            <div class="card-body">
                                <h4 class="card-title">Hot item</h4>
                                <p class="card-text"><i class="far fa-clock"></i>Hot item is Le Trang</p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row" id="recently-order">
                    <div class="col-sm-8">
                        <h3 class="recently-order">Recently order</h3>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Customer</th>
                                <th scope="col">Shipper</th>
                                <th scope="col">Item</th>
                                <th scope="col">Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">60</th>
                                <td>Trúc Phương</td>
                                <td>Nguyễn Tiến</td>
                                <td>Mì Cay Itada</td>
                                <td>45.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">61</th>
                                <td>Thanh Long</td>
                                <td>Ngôn Hi</td>
                                <td>Cơm cuộn</td>
                                <td>20.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">62</th>
                                <td>Quyên</td>
                                <td>Văn Danh</td>
                                <td>Sầu Riêng</td>
                                <td>60.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">63</th>
                                <td>Khánh Quách</td>
                                <td>Thanh Thảo</td>
                                <td>Cơm trộn</td>
                                <td>30.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">64</th>
                                <td>Văn Thanh</td>
                                <td>Thủy Tiên</td>
                                <td>Bành mỳ Iplus</td>
                                <td>15.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">65</th>
                                <td>Nguyễn Huỳnh</td>
                                <td>Kim Loan</td>
                                <td>Cơm gà Lê Trang</td>
                                <td>35.000đ</td>
                            </tr>
                            <tr>
                                <th scope="row">66</th>
                                <td>Minh Kỳ</td>
                                <td>Gia Hân</td>
                                <td>Bánh tráng nướng</td>
                                <td>12.000đ</td>
                            </tr>
                            </tbody>
                        </table>


                        <!--End code-->
                    </div>
                </div>
                </c:when>
                <c:when test="${o.roleID == 1}">
                    <c:redirect url="home"/>
                </c:when>
                <c:when test="${o.roleID == 2}">
                    <c:redirect url="home"/>
                </c:when>
                <c:otherwise>
                    <c:redirect url="login"/>
                </c:otherwise>
                </c:choose>
                </c:forEach>
                </c:if>

</body>

</html>