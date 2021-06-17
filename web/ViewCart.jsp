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

            <!--Start Code-->
            <div class="container rounded mt-5 bg-white p-md-5">
                <!--khoang cach-->
                <div class="h2 font-weight-bold">Orders</div>

                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">DATE</th>
                        <th scope="col">ADDRESS</th>
                        <th scope="col">STATUS</th>
                        <th scope="col">ITEMS</th>
                        <th scope="col">DELIVERY TIME</th>
                    </tr>
                    </thead>
                    <tbody>

                    <td>
                        <div >123</div>
                    </td>
                    <td class="pt-3 mt-1">22/07/2019</td>
                    <td class="pt-3">Can Tho</td>
                    <td class="pt-3">New</td>
                    <td class="pt-3">1</td>
                    <td class="pt-3">Any</td>

                    </tr>


                    <td >
                        <div >456</div>
                    </td>
                    <td class="pt-3">27/05/2019</td>
                    <td class="pt-3">Sai Gon</td>
                    <td class="pt-3">New</td>
                    <td class="pt-3">2</td>
                    <td class="pt-3">Any</td>

                    </tr>

                    <tr >
                        <td >
                            <div >777</div>
                        </td>
                        <td class="pt-3">19/05/2019</td>
                        <td class="pt-3">Vung Tau</td>
                        <td class="pt-3">New</td>
                        <td class="pt-3">5</td>
                        <td class="pt-3">Any</td>


                    </tr>

                    <tr >
                        <td >
                            <div >789</div>
                        </td>
                        <td class="pt-3">2/06/2018</td>
                        <td class="pt-3">Kien Giang</td>
                        <td class="pt-3">New</td>
                        <td class="pt-3">3</td>
                        <td class="pt-3">Any</td>

                    </tr>
                    </tbody>
                </table>
            </div>

            <!--End Code-->
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