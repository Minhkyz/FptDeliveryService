<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/06/2021
  Time: 10:25 PM
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
    <link href="./css/productdetail.css" rel="stylesheet">
</head>

<body>
<br>

<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2">
            <form action="">
                <img src="./images/fptdelivery.png" class="img" />
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



                <div class="container">
                    <div class="card">
                        <div class="container-fliud">
                            <div class="wrapper row">
                                <div class="preview col-md-6">

                                    <div class="preview-pic tab-content">
                                        <div class="tab-pane active" id="pic-1"><img src="${detail.image}"/> </div>
<!--
                                         <div class="tab-pane" id="pic-2"><img src="./images/sua_ne.jpg" /></div>
                                          <div class="tab-pane" id="pic-3"><img src="./images/sua_sua.png" /></div>
                                          <div class="tab-pane" id="pic-4"><img src="./images/tra.jpg" /></div>
                                          <div class="tab-pane" id="pic-5"><img src="./images/tatua.jpg" /></div>
-->
                                    </div>
                                    <ul class="preview-thumbnail nav nav-tabs">
                                      <!--
                                       <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="./images/sua.jpg" /></a></li>
                                            <li><a data-target="#pic-2" data-toggle="tab"><img src="./images/sua_ne.jpg" /></a></li>
                                            <li><a data-target="#pic-3" data-toggle="tab"><img src="./images/sua_sua.png" /></a></li>
                                            <li><a data-target="#pic-4" data-toggle="tab"><img src="./images/tra.jpg" /></a></li>
                                            <li><a data-target="#pic-5" data-toggle="tab"><img src="./images/tatua.jpg" /></a></li>
                                            -->
                                    </ul>

                                </div>
                                <div class="details col-md-6">
                                    <h3 class="product-title">${detail.name}</h3>
                                    <div class="rating">
                                      <!--  <div class="stars">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        -->
                                      <!--  <span class="review-no">41 reviews</span> -->
                                    </div>
                                    <p class="product-description">${detail.description}</p>
                                    <h4 class="price">current price: <span>${detail.price}</span></h4>



                                    <div class="action">
                                     <!--   <button class="add-to-cart btn btn-default" type="button " style="margin-bottom: 20px;">add to cart</button> -->
                                      <!--  <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button> -->
                                    </div>
                                    <a href="home" class="btn btn-lg btn-primary text-uppercase"> Return </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</body>
</html>
