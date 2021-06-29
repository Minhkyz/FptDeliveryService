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
                    <button id="hong" class="btn btn-lg btn-block" type="submit" href="home">
                        <i class="fa fa-home" id="icon-a"></i>
                        <h4>Home Page</h4>
                    </button>
                </div>

                <br>
                <div class="anhdatrang">
                    <a href="AboutMe.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>About Me</h4>
                    </a>

                    <br><br>
                    <a href="#" class="btn">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>Delivering</h4>
                    </a>
                    <br><br>
                    <a href="Feedback.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h4>Feedback</h4>
                    </a>
                    <br><br>
                    <a href="EditProfile.jsp" class="btn ">
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
            <div class="bio-info">
                <div class="items-center">
                    <div class="container-fluid  ">
                        <div class="row " style="padding-top: 50px;">
                            <div class="col-md-5 ">
                                <img src="images/my4.png" alt="" style="width: 450px; height: 500px;">
                            </div>

                            <div class="col-md-7	">
                                <div class="bio-content">
                                    <blockquote>
                                        <p class="text"> ABOUT ME</p>
                                        <p class="text-lg"> We are group 5. Currently my group has five members, studying at fpt university in Can Tho and we study SWP391 taught by Mr. Nguyen Dinh Vinh. Due to the requirements of the subject and seeing the needs of the students in the school, our team had the idea and is making this website to serve our online purchases and can help students earn more. income without strings attached. Hope you all support our website. Thank you!!!</p>
                                    </blockquote>
                                </div>

                                <figcaption class="font-medium">
                                    <div class="text-gray-500"> Software Developer, Google </div>
                                    <div class="mt-3"> <i class="fa fa-facebook text-blue-900 text-xl mr-2"></i> <i class="fa fa-twitter text-blue-300 text-xl mr-2"></i> <i class="fa fa-linkedin text-blue-900 text-xl mr-2"></i> <i class="fa fa-instagram text-red-700 text-xl"></i> </div>
                                </figcaption>
                            </div>
                            </figure>
                        </div>
                    </div>

                </div>

            </div>
        </div>
</body>

</html>