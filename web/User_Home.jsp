<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <link rel="stylesheet" href="./css/User_Home.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap"
            rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <!--Open Carousel-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">

    <script type="text/javascript"
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="./js/carousel1.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/carouselstyle.css">

    <!--Close Carousel-->



</head>

<body>
<div class="container">
    <jsp:include page="include/Navbar.jsp" />
    <div class="container-body">
        <jsp:include page="include/sidebar.jsp" />
        <!--Start body-->
        <div class="main-body">

            <div class="cards">


                <div class="row row-2">
                    <div class="col" id="xenhap1">
                        <div class="total-invoice">
                            <div class="owl-carousel" id="bigcarousel">
                                <div class="item"> <img
                                        src="./images/category-food.jpg"
                                        alt="image" /> </div>
                                <div class="item"> <img
                                        src="./images/category-snack.jpg"
                                        alt="image" /> </div>
                                <div class="item"> <img
                                        src="./images/category-drinks.jpg"
                                        alt="image" /> </div>
                                <div class="item"> <img
                                        src="./images/category-stationery.png"
                                        alt="image" /> </div>
                                <div class="item"> <img
                                        src="./images/gai.png"
                                        alt="image" /> </div>


                            </div>

                        </div>
                    </div>
                    <div class="col" id="xenhap2">
                        <div class="row" id="first_row">
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>


                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="card" id="product_card">
                                    <div class="bkg"></div>
                                    <img src="./images/shipper.gif" id="profile" alt="">
                                    <div class="info">
                                        <h2>Tra Thai Xo</h2>
                                        <h4>Thuc an</h4>
                                    </div>
                                    <div class="description">
                                        <p>Có thể nói đây là món ăn ngon nhất ở CanTho</p>
                                    </div>
                                    <div class="social">
                                        <img src="./images/ShoppingCart.png" alt="">
                                        <p id="firstp">15.000vnđ</p>
                                        <p id="secondp">Add to cart</p>
                                    </div>

                                </div>
                            </div>







                        </div>


                        <div class="col" id="xenhap3">
                            <div class="unpaid-invoice">

                                <div class="wrapper">
                                    <div class="item">

                                        <div class="pic">
                                            <img src="./images/resize1.jpg" alt="">
                                        </div>
                                        <div class="text">
                                            <h5>Bún đậu</h5>
                                            <span> 40.000đ</span>
                                        </div>

                                    </div>
                                    <div class="item">

                                        <div class="pic">
                                            <img src="./images/resize2.png" alt="">
                                        </div>
                                        <div class="text">
                                            <h5>Khô gà</h5>
                                            <span> 35.000đ</span>
                                        </div>

                                    </div>
                                    <div class="item">

                                        <div class="pic">
                                            <img src="./images/resize3.jpg" alt="">
                                        </div>
                                        <div class="text">
                                            <h5>Mực rim me</h5>
                                            <span> 60.000đ</span>
                                        </div>

                                    </div>
                                    <div class="item">

                                        <div class="pic">
                                            <img src="./images/resize1.jpg" alt="">
                                        </div>
                                        <div class="text">
                                            <h5>Bún đậu</h5>
                                            <span> 40.000đ</span>
                                        </div>

                                    </div>
                                    <div class="item">

                                        <div class="pic">
                                            <img src="./images/resize1.jpg" alt="">
                                        </div>
                                        <div class="text">
                                            <h5>Bún đậu</h5>
                                            <span> 40.000đ</span>
                                        </div>

                                    </div>



                                </div>

                            </div>
                        </div>

                        <div class="col" id="xenhap4">
                            <div class="invoice-sent">
                                <img id="banner" src="./images/bannervjp-removebg-preview.png" alt="">

                            </div>
                            <h5 id="hot">Hot Items</h5>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>