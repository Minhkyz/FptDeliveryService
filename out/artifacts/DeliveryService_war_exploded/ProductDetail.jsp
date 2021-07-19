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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!--Open Add User form-->
    <link rel="stylesheet" href="./css/detail.css">


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


            <img src="./images/ship.png" alt="" id="shipper">
            <div class="container" id="registercontainer">
                <div class="row" style="margin-left: -60px;">
                    <div class="col-lg-5">
                        <img style="width: 260px; height: 360px;" src="./images/banhmi.jpg" alt="">
                    </div>
                    <div class="col-lg-7" style="text-align: left; margin-left: -50px; ">
                        <h3 style="font-weight: bold; font-size: 30px;">Bánh mì bơ sữa đặc biệt thơm ngon</h3>
                        <br>

                        <h3 style="color: orange">5000 vnđ</h3>
                        <p style="font-weight: bold; margin-top: 16px; font-size: 18px;">Description:</p>
                        <p style="font-weight: 560;">If you come to CanTho this can be the first product you can
                            think about. The mixture between crispy of the wrapper and the soft of inside can
                            suprise you as the day you obtain money from your family!! </p>
                        <br>
                        <div class="row" style="border:dotted ;height: 76px; margin-left: 1px;">
                            <div class="col-lg-7">
                                <input type="btn rounded-pill py-2 btn-block"
                                       style="background-color: orange; border-radius: 6%; height: 56px; margin-top: 10px; width: 280px; margin-left: -10px; text-align: center; color: white; font-size: 18px; font-weight: bold;"
                                       value="ADD TO CART">
                            </div>

                            <div class="col-lg-5" style="height: 36px; height: 56px; padding-bottom: 20px">
                                <a href="" class="btn rounded-pill py-2 btn-block"
                                   style="width: 210px; margin-top: 10px; font-size:16px; margin-left:-16px; height: 56px; background-color: #00004a; color: white;  ">
                                    <p style="margin-top: 8px; font-weight: bold;"> <i class="fa fa-hand-o-left"
                                                                                       aria-hidden="true"></i> CONTINUE SHOPPING</p>
                                </a>
                            </div>




                        </div>
                    </div>
                </div>
            </div>


        </div>

    </div>

</div>

</body>

</html>