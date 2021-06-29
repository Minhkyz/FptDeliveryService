<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link href="./css/abc_2.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/Admin_ItemManage.css" rel="stylesheet" type="text/css"/>
    <style>
        img {
            width: 150px;
            height: 120px;
        }
    </style>
</head>

<body>
<br>
<div class="container-fluid">

    <div class="row content">

        <div class="col-sm-2">
            <form action="">
                <img src="./images/fptdelivery.png" class="img" />
                <br>



                <div class="anhdatrang">
                    <a href="AdminHome.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Admin Home</h5>
                    </a>

                    <a href="Admin_RoleManager.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Role</h5>
                    </a>

                    <a href="Admin_CategoryManage.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Category</h5>
                    </a>

                    <a href="Admin_UserManage.jsp" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5 >User Manager</h5>
                    </a>

                    <a href="Admin_ItemsManage.jsp" class="btn">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Product Manager</h5>
                    </a>

                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Top Item</h5>
                    </a>

                    <a href="#" class="btn ">
                        <i class="fas fa-id-card" id="icon"></i>
                        <h5>Setting</h5>
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
                </div>
                </br>

                <!--Start Code-->
                <div class="container">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-6">
                                    <h2>Manage <b>Items</b></h2>
                                </div>
                                <div class="col-sm-6">
                                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                                        <span>Add New Role</span></a>

                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                            <tr>
                                <th>

                                </th>
                                <th>ID</th>
                                <th>UserName</th>
                                <th>RoleID</th>
                                <th>Role</th>
                                <th>Status</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listP}" var="o">
                                <tr>
                                    <td>

                                    </td>
                                    <td>06</td>
                                    <td>NguyentienDeeeptry</td>
                                    <td>01</td>
                                    <td>Admin</td>

                                    <td>
                                        <a href="EditItemsControl?id=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                                  data-toggle="tooltip"
                                                                                                                  title="Edit">&#xE254;</i>
                                        </a>
                                        <a href="DeleteItemsControl?id=${o.id}" class="DeleteItemsControl" data-toggle="modal"><i
                                                class="material-icons"
                                                data-toggle="tooltip"
                                                title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>07</td>
                                    <td>MinKyz</td>
                                    <td>01</td>
                                    <td>Admin</td>

                                    <td>
                                        <a href="EditItemsControl?id=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                                  data-toggle="tooltip"
                                                                                                                  title="Edit">&#xE254;</i>
                                        </a>
                                        <a href="DeleteItemsControl?id=${o.id}" class="DeleteItemsControl" data-toggle="modal"><i
                                                class="material-icons"
                                                data-toggle="tooltip"
                                                title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>08</td>
                                    <td>Hoangtubongdem</td>
                                    <td>01</td>
                                    <td>Admin</td>

                                    <td>
                                        <a href="EditItemsControl?id=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                                  data-toggle="tooltip"
                                                                                                                  title="Edit">&#xE254;</i>
                                        </a>
                                        <a href="DeleteItemsControl?id=${o.id}" class="DeleteItemsControl" data-toggle="modal"><i
                                                class="material-icons"
                                                data-toggle="tooltip"
                                                title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>09</td>
                                    <td>Raango</td>
                                    <td>02</td>
                                    <td>User</td>

                                    <td>
                                        <a href="EditItemsControl?id=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                                  data-toggle="tooltip"
                                                                                                                  title="Edit">&#xE254;</i>
                                        </a>
                                        <a href="DeleteItemsControl?id=${o.id}" class="DeleteItemsControl" data-toggle="modal"><i
                                                class="material-icons"
                                                data-toggle="tooltip"
                                                title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>10</td>
                                    <td>BigCityGirl</td>
                                    <td>03</td>
                                    <td>Shipper</td>

                                    <td>
                                        <a href="EditItemsControl?id=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                                  data-toggle="tooltip"
                                                                                                                  title="Edit">&#xE254;</i>
                                        </a>
                                        <a href="DeleteItemsControl?id=${o.id}" class="DeleteItemsControl" data-toggle="modal"><i
                                                class="material-icons"
                                                data-toggle="tooltip"
                                                title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="clearfix">
                            <div class="hint-text">Showing <b>4</b> out of <b>25</b> entries</div>
                            <ul class="pagination">
                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                <li class="page-item"><a href="#" class="page-link">1</a></li>
                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                <li class="page-item"><a href="#" class="page-link">3</a></li>
                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                            </ul>
                        </div>
                    </div>
                    <a href="home">
                        <button type="button" class="btn btn-primary">Back to home</button>
                    </a>
                </div>

            </div>
        </div>
</body>

</html>