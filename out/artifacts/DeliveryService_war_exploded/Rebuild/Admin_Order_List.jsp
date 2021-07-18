<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="./css/ordertable.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <!--Table-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.14/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link href="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/ordertable.css">
    <link rel="stylesheet" href="./css/Admin_Home.css">


    <!--Close Table-->


</head>

<body>

<div class="container">
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
        <div class="sidebar">
            <ul>
                <li class="dashboard">
                    <i class="fa fa-dashcube"></i>
                    <a href="#">Dashboard</a>
                </li>
                <li>
                    <i class="fa fa-money"></i>
                    <a href="#">balance</a>
                </li>
                <li>
                    <i class="fa fa-envelope-o"></i>
                    <a href="#">invoice</a>
                </li>
                <li>
                    <i class="fa fa-credit-card-alt"></i>
                    <a href="#">card</a>
                </li>
                <li>
                    <i class="fa fa-history"></i>
                    <a href="#">history</a>
                </li>
                <li>
                    <i class="fa fa-info-circle"></i>
                    <a href="#">details</a>
                </li>
            </ul>
        </div>
        <!--Start body-->
        <div class="main-body">


            <div class="cards">

                <div class="row">
                    <div class="col-md-12 main-datatable">
                        <div class="card_body">
                            <div class="row d-flex">
                                <div class="col-sm-4 createSegment">
                                    <a class="btn dim_button create_new"><span class="glyphicon glyphicon-plus
                                            "></span>Create New</a>
                                </div>
                                <div class="col-sm-8 add_flex">
                                    <div class="form-group searchInput">
                                        <label for="email">Search:</label>
                                        <input type="search" class="form-control" id="filterbox"  placeholder="">

                                    </div>
                                </div>
                            </div>
                            <div class="overflow-x">
                                <table style="width: 100%;" id="filtertable" class="table cust-datatable dataTable no-footer">
                                    <thead>
                                    <tr>
                                        <th style="min-width: 50px;">Order ID</th>
                                        <th style="min-width: 150px;">Orderer Name</th>
                                        <th style="min-width: 150px;">Shipper Name</th>
                                        <th style="min-width: 100px;">Price</th>

                                        <th style="min-width: 150px;">Status</th>
                                        <th style="min-width: 150px;">Action</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_notordered">Not Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                                  <a href="#"><i class="fa fa-line-chart"></i></a>
                                              </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_delivering">Delivering</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                                <a href="#"><i class="fa fa-line-chart"></i></a>
                                            </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_ordered">Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                                <a href="#"><i class="fa fa-line-chart"></i></a>
                                            </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_notordered">Not Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                                <a href="#"><i class="fa fa-line-chart"></i></a>
                                            </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_delivering">Delivering</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                              <a href="#"><i class="fa fa-line-chart"></i></a>
                                          </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_ordered">Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                              <a href="#"><i class="fa fa-line-chart"></i></a>
                                          </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr> <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_notordered">Not Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                            <a href="#"><i class="fa fa-line-chart"></i></a>
                                        </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_delivering">Delivering</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                          <a href="#"><i class="fa fa-line-chart"></i></a>
                                      </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_ordered">Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                          <a href="#"><i class="fa fa-line-chart"></i></a>
                                      </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr> <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_notordered">Not Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                        <a href="#"><i class="fa fa-line-chart"></i></a>
                                    </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_delivering">Delivering</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                      <a href="#"><i class="fa fa-line-chart"></i></a>
                                  </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3107</td>
                                        <td>Nguyễn Trúc Phương</td>
                                        <td>Nguyễn Văn Tiến</td>
                                        <td>600.000</td>

                                        <td><span class="mode mode_ordered">Ordered</span></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-pencil-square-o"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            Dummy Details
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="actionCust">
                                      <a href="#"><i class="fa fa-line-chart"></i></a>
                                  </span>
                                            <div class="btn-group">
                                                <a class="dropdown-toggle dropdown_icon"
                                                   data-toggle="dropdown">
                                                    <i class="fa fa-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown_more">
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-clone"></i>Duplicate
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-trash"></i>Delete
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank">
                                                            <i class="fa fa-list"></i>Activity
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                        </td>
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
<!--Open Table-->

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.14/js/jquery.dataTables.min.js"></script>
<script src="./js/table.js"></script>
<!--Close table-->
</body>

</html>
