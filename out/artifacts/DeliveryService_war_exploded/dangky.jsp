<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <link href="./css/Register.css" rel="stylesheet">
</head>

<body>
<br>
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2">
            <form action="">
                <img src="./images/fptdelivery.png" class="img"/>
                <br><br>
                <div class="anhdahong">
                    <button id="hong" class="btn btn-lg btn-block" type="submit" href="#">
                        <i class="fa fa-home" id="icon-a"></i>
                        <h4>Home Page</h4>
                    </button>
                </div>

                <br>
                <div class="anhdatrang">
                    <a href="#" class="btn ">
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
                    <br><br>
                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>Setting</h4>
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

            <div class="row">
                <div class="col-sm-12">
                    <!--  <img class="nen" src="./images/nennn.jpg" width="1242" height="1200"> -->
                    <div style="background-image: url('./images/nennn.jpg'); background-repeat: no-repeat; background-size: 100% 110%; ">
                        <br><br>
                        <table>
                            <div class="container">

                                <form class="form" action="RegisterControl" method="post">
                                    <div class="header">
                                        <h2>Create Account</h2>
                                    </div>
                                    <h4 style="color: red; padding-right: 95px;">${mess}</h4>
                                    <div class="form-control">
                                        <label for="username">Fullname</label>
                                        <input type="text" placeholder="Enter your full name" id="username" name="fullname" required="required"/>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>${mess}</small>
                                    </div>

                                    <div class="form-control">
                                        <label for="username">Username</label>
                                        <input type="text" placeholder="Enter your username" id="text-9294" name="user" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" minlengh="6" maxlength="20" pattern="[A-Za-z0-9]{5,}" title="Tên tài khoản có ít nhất 6 kí tự, tối đa 20 kí tụ và không sử dụng kí tự đặc biệt" required="required"><p class="text-danger"></p>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>Error message</small>
                                    </div>
                                    <div class="form-control">
                                        <label for="username">Email</label>
                                        <input type="email" placeholder="Email" id="address-f3ab" name="mail" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" pattern="[^@\s]+@[^@\s]+\.[^@\s]+" title="Invalid email address" required="required"><p class="text-danger"> </p>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>Error message</small>
                                    </div>

                                    <div class="form-control">
                                        <label for="username">Phone Number</label>
                                        <input type="tel" pattern="[0][0-9]{9}" id="phone11" name="phone" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white"  required="required" maxlength="10" placeholder="Enter your phone number as 01, 03, 09,..." ><p class="text-danger"></p>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>Error message</small>
                                    </div>

                                    <div class="form-control">
                                        <label for="username">Password</label>
                                        <input type="password" placeholder="Password" id="password" name="pass" minlengh="6"/>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>Error message</small>
                                    </div>
                                    <div class="form-control">
                                        <label for="username">Password check</label>
                                        <input type="password" placeholder="Password two" id="password2" name="repass" minlengh="6"/>
                                        <i class="fas fa-check-circle"></i>
                                        <i class="fas fa-exclamation-circle"></i>
                                        <small>Error message</small>
                                    </div>

                                    <button>Submit</button>
                                </form>
                            </div>
                        </table>
                        <br><br>
                    </div>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</body>

</html>