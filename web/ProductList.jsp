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
    <link href="./css/abc.css" rel="stylesheet">

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
            </div>
            <!--Start Code-->
            <div class="container-fluid mt-5 mb-5">
                <div class="row g-2">
                    <div class="col-md-3">
                        <div class="t-products p-2">
                            <h6 class="text-uppercase">ALl things</h6>
                            <div class="p-lists">
                                <div class="d-flex justify-content-between mt-2"> <span>Cơm Tấm</span> <span>23</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Bún đậu</span> <span>46</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Cháo Lòng</span> <span>13</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Khoai Lang Lắc</span> <span>33</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Khoai tây chiên</span> <span>12</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Cơm gà</span> <span>53</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Văn phòng phẩm</span> <span>203</span> </div>
                                <div class="d-flex justify-content-between mt-2"> <span>Khác</span> <span>23</span> </div>
                            </div>
                        </div>
                        <div class="processor p-2">
                            <div class="heading d-flex justify-content-between align-items-center">
                                <h6 class="text-uppercase">Cơm</h6> <span>--</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> Cơm tấm </label> </div> <span>3</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Cơm gà </label> </div> <span>4</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Cơm hến </label> </div> <span>14</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Cơm lam </label> </div> <span>8</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Cơm tros </label> </div> <span>14</span>
                            </div>
                        </div>
                        <div class="brand p-2">
                            <div class="heading d-flex justify-content-between align-items-center">
                                <h6 class="text-uppercase">Đánh giá</h6> <span>--</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> 1 sao </label> </div> <span>13</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 2 sao </label> </div> <span>4</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 3 sao </label> </div> <span>24</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 4 sao </label> </div> <span>18</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> 5 sao </label> </div> <span>44</span>
                            </div>
                        </div>
                        <div class="type p-2 mb-2">
                            <div class="heading d-flex justify-content-between align-items-center">
                                <h6 class="text-uppercase"></h6> <span>--</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> Khu vực </label> </div> <span>23</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Cái Răng </label> </div> <span>24</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Bình Thủy </label> </div> <span>14</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Ninh Kiều </label> </div> <span>28</span>
                            </div>
                            <div class="d-flex justify-content-between mt-2">
                                <div class="form-check"> <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> <label class="form-check-label" for="flexCheckChecked"> Hưng Lợi </label> </div> <span>44</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <div class="product py-4"> <span class="off bg-success">-25% OFF</span>
                                    <div class="text-center"> <img src="https://i.imgur.com/nOFet9u.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Cháo Huyết Hùng Vương</h5> <span>25.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4"> <span class="off bg-warning">SALE</span>
                                    <div class="text-center"> <img src="https://i.imgur.com/VY0R9aV.png" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Cơm Tấm 504</h5> <span>20.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4">
                                    <div class="text-center"> <img src="https://i.imgur.com/PSGrLdz.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Sủi Cảo A Chảy</h5> <span>30.000</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4"> <span class="off bg-success">-10% OFF</span>
                                    <div class="text-center"> <img src="https://i.imgur.com/OdRSpXG.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Bún đậu Ba Phải</h5> <span>45.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4">
                                    <!-- <span class="off bg-success">-25% OFF</span> -->
                                    <div class="text-center"> <img src="https://i.imgur.com/X2AwTCY.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Bún đậu Cô Liên</h5> <span>35.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4"> <span class="off bg-success">-5% OFF</span>
                                    <div class="text-center"> <img src="https://i.imgur.com/QQwcBpF.png" width="200"> </div>
                                    <div class="about text-center">
                                        <h5> Hột Vịt Lộn</h5> <span>6.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4"> <span class="off bg-warning">SALE</span>
                                    <div class="text-center"> <img src="https://i.imgur.com/PSGrLdz.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Cơm gà Gia Hân</h5> <span>40.000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4">
                                    <div class="text-center"> <img src="https://i.imgur.com/m22OQy9.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Mì Hảo Hảo</h5> <span>5,000đ</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product py-4">
                                    <div class="text-center"> <img src="https://i.imgur.com/OdRSpXG.jpg" width="200"> </div>
                                    <div class="about text-center">
                                        <h5>Cơm tros</h5> <span>FREE</span>
                                    </div>
                                    <div class="cart-button mt-3 px-2 d-flex justify-content-between align-items-center"> <button class="btn btn-primary text-uppercase">Add to cart</button>
                                        <div class="add"> <span class="product_fav"><i class="fa fa-heart-o"></i></span> <span class="product_fav"><i class="fa fa-opencart"></i></span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Code-->
        </div>
    </div>
</div>
</body>

</html>