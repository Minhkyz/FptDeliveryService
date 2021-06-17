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
            <div></div>



            <div class="container ">
                <H1>Quản lí đơn hàng</H1>

                <div > <i class="fa fa-search"></i></span> <input  placeholder="Search "> </div>

            </div>
            <div >
                <table class="table table-responsive table-borderless">
                    <thead>
                    <tr class="bg-light">
                        <th scope="col" width="5%">ID</th>
                        <th scope="col" width="10%">NGÀY TẠO</th>
                        <th scope="col" width="10%">GIÁ TRỊ ĐH</th>
                        <th scope="col" width="10%">ĐỐI TÁC</th>
                        <th scope="col" width="20%">LẤY HÀNG</th>
                        <th scope="col" width="20%">HUB</th>
                        <th scope="col" width="20%">ĐỊA CHỈ GIAO HÀNG</th>
                        <th scope="col" width="20%">PHÍ SHIP</th>
                        <th scope="col" width="20%">TRẠNG THÁI</th>
                        <th scope="col" width="20%">GHI CHÚ</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>123456</td>
                        <td>22/04/2021</td>
                        <td>1.300.000</td>
                        <td> AnShop</td>
                        <td>Đang lấy hàng</td>
                        <td>Can Tho</td>
                        <td>FPTU</td>
                        <td>15.000</td>
                        <td>Hoàn thành</td>
                        <td></td>

                    </tr>
                    <tr>
                        <td>6789123</td>
                        <td>2/05/2021</td>
                        <td>1.900.000</td>
                        <td> AnShop</td>
                        <td>Đang lấy hàng</td>
                        <td>Can Tho</td>
                        <td>FPTU</td>
                        <td>45.000</td>
                        <td>Hoàn thành</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>123456789</td>
                        <td>20/01/2021</td>
                        <td>300.000</td>
                        <td> AnShop</td>
                        <td>Đang lấy hàng</td>
                        <td>Can Tho</td>
                        <td>FPTU</td>
                        <td>15.000</td>
                        <td>Hoàn thành</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>999999</td>
                        <td>1/1/2020</td>
                        <td>100.000</td>
                        <td> AnShop</td>
                        <td>Đang lấy hàng</td>
                        <td>Can Tho</td>
                        <td>FPTU</td>
                        <td>25.000</td>
                        <td>Hoàn thành</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>88888888</td>
                        <td>19/05/2021</td>
                        <td>1.000.000</td>
                        <td> AnShop</td>
                        <td>Đang lấy hàng</td>
                        <td>Can Tho</td>
                        <td>FPTU</td>
                        <td>35.000</td>
                        <td>Hoàn thành</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
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