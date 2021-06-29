<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shopping cart </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
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

            <img src="./images/shipper3.png" class="img" style="height: 150px; width: 200px;" />
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


            <div class="bg">
                <p class="tet">ANSHOP</p></div>
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">
                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Xóa</div>
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}VND</strong></td>
                                                    <td class="align-middle">
                                                        <a href="SubControl?id=${o.id}"><button class="btnSub">-</button></a> <strong>${o.amount}</strong>
                                                        <a href="CartControl?id=${o.id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="RemoveItemControl?id=${o.id}" class="text-dark">
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                    </a>
                                                    </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End -->
                                </div>
                            </div>

                            <!--
                             <div class="row py-5 p-4 bg-white rounded shadow-sm">
                                  <div class="col-lg-6">
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                      <div class="p-4">
                                          <div class="input-group mb-4 border rounded-pill p-2">
                                              <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                              <div class="input-group-append border-0">
                                                  <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              -->

                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                   <!--     <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong></strong></li> -->
                                 <!--       <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li> -->
                                  <!--      <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong></strong></li> -->
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold"> ${sum}VND</h5>
                                        </li>
                                    </ul>
                                    <c:if test="${sessionScope.acc == null}">
                                        <a href="login" class="btn btn-dark rounded-pill py-2 btn-block">Mua hàng</a>
                                    </c:if>
                                    <c:if test="${sessionScope.acc != null}">
                                        <a href="order" class="btn btn-dark rounded-pill py-2 btn-block">Mua hàng</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>