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
            </div>

            <!-- Start Code-->
            <div class="container mt-5 mb-5">
                <div>
                    <div class="col-md-8">
                        <div class="card">
                            <div > <img src="images/logoFU.png">
                            </div>
                            <div class="invoice p-5">
                                <!--khoangcach-->
                                <h5>Your order Confirmed!</h5> <span >Hello,
										Leader</span> <span>You order has been confirmed !</span>
                                <div class=" border-top mt-3 mb-3 border-bottom table-responsive">
                                    <table class="table table-borderless">

                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="py-2"> <span class="d-block text-muted">Order
																Date</span> <span>2 August,2018</span> </div>
                                            </td>
                                            <td>
                                                <div class="py-2"> <span class="d-block text-muted">Order
																No</span> <span>AH22072000</span> </div>
                                            </td>

                                            <td>
                                                <div class="py-2"> <span class="d-block text-muted">Shiping
																Address</span> <span>Can Tho</span> </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="product border-bottom table-responsive">
                                    <table class="table table-borderless">
                                        <tbody>
                                        <tr>
                                            <td width="20%"> <img src="images/bún đậu 2.jpg" width="90"> </td>
                                            <td width="60%"> <span class="font-weight-bold">COMPO Bun Dau</span>
                                                <div class="product-qty"> <span
                                                        class="d-block">Quantity:1</span> </div>
                                            </td>
                                            <td width="20%">
                                                <div class="text-right"> <span
                                                        class="font-weight-bold">125k</span> </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20%"> <img src="images/garan.jpg" width="70"> </td>
                                            <td width="60%"> <span class="font-weight-bold">Compo Gà Rán kèm
															PhoMai</span>
                                                <div class="product-qty"> <span
                                                        class="d-block">Quantity:1</span> </div>
                                            </td>
                                            <td width="20%">
                                                <div class="text-right"> <span
                                                        class="font-weight-bold">500k</span> </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row d-flex justify-content-end">
                                    <div class="col-md-5">
                                        <table class="table table-borderless">
                                            <tbody class="totals">
                                            <tr>
                                                <td>
                                                    <div class="text-left"> <span
                                                            class="text-muted">Subtotal</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span>625</span> </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="text-left"> <span class="text-muted">Shipping
																	Fee</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span>35k</span> </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="text-left"> <span class="text-muted">Tax
																	Fee</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span>8k</span> </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="text-left"> <span
                                                            class="text-muted">Discount</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span
                                                            class="text-success">50k</span> </div>
                                                </td>
                                            </tr>
                                            <tr class="border-top border-bottom">
                                                <td>
                                                    <div class="text-left"> <span
                                                            class="font-weight-bold">Total</span> </div>
                                                </td>
                                                <td>
                                                    <div class="text-right"> <span
                                                            class="font-weight-bold">618k</span> </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <p>We will be sending shipping confirmation email when the item shipped
                                    successfully!</p>
                                <p class="font-weight-bold mb-0">Thanks for shopping with us!</p> <span>Passed
										Team</span>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--End Code-->
        </div>
    </div>
</body>

</html>