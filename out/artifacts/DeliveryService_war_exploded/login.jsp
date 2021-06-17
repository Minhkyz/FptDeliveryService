<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link href="./css/login.css" rel="stylesheet">
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
                        <h4>Register/
                            Login </h4>
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
                <div class="col-sm-4" id="welcome">
                    <h2><strong>Welcome to</strong></h2>
                    <h2>FPT Delivery Service</h2>
                </div>

                <div class="col-sm-4 ">
                    <div class="searchbar">
                        <input class="search_input" type="text" name="" placeholder="Type what you want...">
                        <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                    </div>
                </div>
                <div class="col-sm-4">
                    <a href="#" class="cart_icon"><i class="fas fa-shopping-cart"></i></a>
                </div>

                <div class="container">
                    <img class="nen" src="./images/nen.jpg" width="1242">
                    <div class="login-content">
                        <div class="wrapper">
                            <div class="card">
                                <form action="login" method="post" class="d-flex flex-column">
                                    <div class="h3 text-center text-white">Login</div>
                                    ${mess}
                                    <div class="d-flex align-items-center input-field my-3 mb-4"><span
                                            class="far fa-user p-2"></span> <input type="text"
                                                                                   placeholder="Username or Email"
                                                                                   required class="form-control"
                                                                                   value="${user}"
                                                                                   name="user"></div>
                                    <div class="d-flex align-items-center input-field mb-4"><span
                                            class="fas fa-lock p-2"></span> <input type="password"
                                                                                   placeholder="Password" required
                                                                                   class="form-control" id="pwd"
                                                                                   name="pass">
                                        <button class="btn" onclick="showPassword()"><span
                                                class="fas fa-eye-slash"></span></button>
                                    </div>
                                    <div class="d-sm-flex align-items-sm-center justify-content-sm-between">
                                        <div class="d-flex align-items-center"><label class="option"> <span
                                                class="text-light-white">Remember Me</span> <input type="checkbox"
                                                                                                   checked> <span
                                                class="checkmark"></span> </label></div>
                                        <div class="mt-sm-0 mt-3"><a href="#">Forgot password?</a></div>
                                    </div>
                                    <div class="my-3"><input type="submit" value="Login" class="btn btn-primary"></div>
                                    <div class="mb-3"><span class="text-light-white">Don't have an account?</span> <a
                                            href="#">Sign Up</a></div>
                                </form>

                            </div>
                        </div>
</body>

</html>