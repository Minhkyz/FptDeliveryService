<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="./css/table.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/AdminHome_Au.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">

    <!--Table-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.14/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link href="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/table.css">



    <!--Close Table-->
    <link rel="stylesheet" href="./css/AdminHome_Au.css">
</head>

<body>
<div class="container">
    <jsp:include page="include/Navbar.jsp" />
    <div class="container-body">
        <jsp:include page="include/Admin_Sidebar.jsp" />
        <!--Start body-->
        <div class="main-body">


            <div class="cards">


                <div class="row row-2">
                    <div class="col">
                        <div class="total-invoice">
                            <h3 class="cardtittle" style="font-weight :bold;">Total invoice</h3>
                            <span class="t-i">520</span>
                            <span class="status">+12%</san>
                        </div>
                    </div>

                    <div class="col">
                        <div class="paid-invoice">
                            <h3 class="cardtittle">Paid invoice</h3>
                            <span class="p-i">210</span>
                            <span class="status">
                                    85%
                                    <i class="fa fa-line-chart"></i>
                                </span>
                        </div>
                    </div>

                    <div class="col">
                        <div class="unpaid-invoice">
                            <h3 class="cardtittle">Unpaid invoice</h3>
                            <span class="u-i">65</span>
                            <span class="status">
                                    15%
                                    <i class="fa fa-line-chart"></i>
                                </span>
                        </div>
                    </div>
                    <div class="col" style="transform: translateY(-112px);">
                        <div class="invoice-sent" >
                            <h3 class="cardtittle">Invoice sent</h3>
                            <span class="i-s">120</span>
                            <span class="status">
                                    <i class="fa fa-check"></i>
                                </span>
                        </div>
                    </div>
                </div>


                <div class="col-md-12 main-datatable" style="transform: translateY(-59px);">
                    <div class="card_body">
                        <div class="row d-flex">

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
                                    <th style="min-width: 150px;">Status</th>
                                    <th style="min-width: 150px;">Shipper Name</th>
                                    <th style="min-width: 100px;">Price</th>



                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_notordered">Not Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>

                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_ordered">Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_notordered">Not Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_delivering">Delivering</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_ordered">Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>  <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_notordered">Not Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_delivering">Delivering</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_ordered">Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>  <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_notordered">Not Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_delivering">Delivering</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_ordered">Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>  <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_notordered">Not Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_delivering">Delivering</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



                                </tr>
                                <tr>
                                    <td>3107</td>
                                    <td>Nguyễn Trúc Phương</td>
                                    <td><span class="mode mode_ordered">Ordered</span></td>
                                    <td>Nguyễn Văn Tiến</td>
                                    <td>600.000</td>



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
<!--Open Table-->

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.14/js/jquery.dataTables.min.js"></script>
<script src="./js/admintable.js"></script>
<!--Close table-->
</body>

</html>
