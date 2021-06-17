<!DOCTYPE html>
<html lang="en">

<head>

    </script>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link href="css/Cart.css" rel="stylesheet">
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

            <div></div>


            <div class="container-fluid">
                <div class="row">
                    <aside class="col-lg-9">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table table-borderless table-shopping-cart">
                                    <thead class="text-muted">
                                    <!--độ mờ-->
                                    <tr >
                                        <th scope="col">Product</th>
                                        <th scope="col" width="120">Quantity</th>
                                        <th scope="col" width="120">Price</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <figure class="itemside align-items-center">
                                                <!-- căn giữa-->
                                                <div class="aside"><img src="images/bún đậu 2.jpg" class="img-sm"></div>
                                                <figcaption class="info"> <a  class="title text-dark">BUN DAU MAM TOM</a>
                                                    <p class="text-muted small">SIZE: L </p>
                                                </figcaption>
                                            </figure>
                                        </td>

                                        <td> <div class="form-group">
                                            <textarea class="form-control" rows="1" id="comment"></textarea>
                                        </div> </td>
                                        <td>
                                            <div > <var class="price">80K</var> </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <figure class="itemside align-items-center">
                                                <div class="aside"><img src="images/pizza.jpg" class="img-sm"></div>
                                                <figcaption class="info"> <class="title text-dark" data-abc="true">PIZZA</a>
                                                    <p class="text-muted small">SIZE: L  </p>
                                                </figcaption>
                                            </figure>
                                        </td>
                                        <td> <div class="form-group">
                                            <textarea class="form-control" rows="1" id="comment"></textarea>
                                        </div> </td>
                                        <td>
                                            <div > <var class="price">100K</var> </div>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <figure class="itemside align-items-center">
                                                <div class="aside"><img src="images/trasua.png" class="img-sm"></div>
                                                <figcaption class="info"> <a class="title text-dark" data-abc="true">MILK TEA</a>
                                                    <p class="small text-muted">SIZE:M </p>
                                                </figcaption>
                                            </figure>
                                        </td>

                                        <td> <div class="form-group">
                                            <textarea class="form-control" rows="1" id="comment"></textarea>
                                        </div> </td>
                                        <td>
                                            <div > <var class="price">60K</var> </div>
                                        </td>

                            </div>
                            </tr>
                            </tbody>
                            </table>
                        </div>
                </div>
                </aside>
                <aside class="col-lg-3">
                    <div class="card mb-3">

                    </div>
                    <div class="card">
                        <div class="card-body">
                            <dl class="dlist-align">
                                <!--dàn ngang-->
                                <dt>Total price:</dt>
                                <dd class="text-right ml-3">240k</dd>
                            </dl>



                        </div>
                    </div>
                </aside>
            </div>
        </div>
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

</html>