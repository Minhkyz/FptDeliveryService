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

    <!--Open Add User form-->
    <link rel="stylesheet" href="./css/adduserform.css">
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

            <img src="./images/ship.png" alt="" id="shipper" >
            <div class="container" id="registercontainer"">

                <div class="title">User Update</div>
                <div class="content">
                    <form action="#">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">User Name</span>
                                <input type="text" placeholder="Enter User Name" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Full Name</span>
                                <input type="text" placeholder="Enter Full Name" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Email</span>
                                <input type="text" placeholder="Enter your Email" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Phone Number</span>
                                <input type="text" placeholder="Enter Phone Number" required>
                            </div>
                            <div class="input-box">
                                <span class="details">Role</span>
                                <select style="width: 350px; height:39px; border-radius: 5%;" name="categoryID" class="form-select" >
                                    <option value="1">User</option>
                                    <option value="2">Collaborator</option>
                                    <option value="3">Admin</option>

                                </select>
                            </div>

                        </div>

                        <div class="button">
                            <input type="submit" value="Update">
                        </div>

                    </form>

                </div>

            </div>

            <div class="avatar">
                <img id="avatar" src="./images/Avatarmau.png" alt="">
                <button>Update Avatar</button>

            </div>
        </div>

    </div>

</div>

</body>

</html>