<!DOCTYPE html>
<html lang="en">

<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap"
            rel="stylesheet">

    <!--Open Add User form-->
    <link rel="stylesheet" href="./css/cartform.css">

    <!--Open Cart-->

</head>


<body>
<div class="container" id="sidecontainer">
    <div class="navbar">
        <div class="logo">
            <img style="width: 40px;" src="./images/fptdelivery.png" alt="">
            <span class="logoname">Web Logo</span>
        </div>

        <div class="searchbox">
            <form action="">
                <input type="text" placeholder="Search">
                <i class="fa fa-search"></i>
            </form>
        </div>

        <div class="navitem">
            <div class="lang">
                <select name="language" id="">
                    <option value="">English</option>
                    <option value="">Hindi</option>
                </select>
            </div>

            <div class="icons">
                <ul>
                    <li><i class="fa fa-envelope"></i></li>
                    <li><i class="fa fa-bell"></i></li>
                </ul>
            </div>

            <div class="account">
                <img width="25px" height="25px" src="./images/fptdelivery.png" alt="">
                <span class="name">robert downey</span>
                <span class="username">@robert564</span>
            </div>
        </div>
    </div>

    <div class="container-body">
        <div class="sidebar" id="sidebar">
            <ul>
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
        <!--Start body-->
        <div class="main-body" id="parent">

            <img src="./images/ship.png" alt="" id="shipper" >
            <div class="container" id="registercontainer" >

                <div class="title">Cart</div>
                <div class="content">
                    <form action="#">
                        <div class="user-details" style="display: block;">


                        </div>

                        <div class="button">

                            <div class="container" style="width: 1100px;; height: 000px !important;transform: translate(-20px, -50px); ">
                                <div class="row">
                                    <div class="col-lg-12 p-5  rounded ">
                                        <input name="user" value="${sessionScope.acc.userID}" type="hidden">
                                        <!-- Shopping cart table -->
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th scope="col" class="border-0">
                                                        <div class="p-2 px-3 text-uppercase"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Products</div>
                                                    </th>
                                                    <th scope="col" class="border-0">
                                                        <div class="py-2 text-uppercase"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Price</div>
                                                    </th>
                                                    <th scope="col" class="border-0">
                                                        <div class="py-2 text-uppercase"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Quantity</div>
                                                    </th>
                                                    <th scope="col" class="border-0 ">
                                                        <div class="py-2 text-uppercase"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Delete</div>
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
                                                        <input name="idItem" value="${o.id}" type="hidden">
                                                        <input name="idItem" value="${o.amount}" type="hidden">
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
                                    <div class=" rounded-pill px-4 py-3 text-uppercase font-weight-bold"  style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; font-size: 18px; transform: translate(500px, 60px);">Subtotal</div>
                                    <div class="p-4" style="transform: translate(500px, 60px);">
                                        <ul class="list-unstyled mb-4">
                                            <!--     <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong></strong></li> -->
                                            <!--       <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li> -->
                                            <!--      <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong></strong></li> -->
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total Amount</strong>
                                                <h5 class="font-weight-bold"> ${sum}VND</h5>

                                            </li>
                                        </ul>
                                        <c:if test="${sessionScope.acc == null}">
                                            <a href="login" class="btn rounded-pill py-2 btn-block" style=" width: 0460px; background-color: orange;">Order Now</a>
                                        </c:if>

                                    </div>
                                </div>
                            </div>

                        </div>

                </div>

                </form>

            </div>

        </div>


    </div>

</div>

</div>

</body>

</html>