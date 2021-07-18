<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/06/2021
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Rebuild/css/Home.css">
</head>

<body>
<div class="container">
    <jsp:include page="include/Navbar.jsp"/>
    <div class="container-body">
        <jsp:include page="include/sidebar.jsp"/>
        <div class="main-body">
            <div class="headtittle">
                <h2>Home</h2>
            </div>
            <div class="cards">
                <div class="row row-2">
                    <div class="col">
                        <div class="total-invoice">
                            <h3 class="cardtittle">Total user</h3>
                            <span class="t-i">520</span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="paid-invoice">
                            <h3 class="cardtittle">Total items</h3>
                            <span class="p-i">210</span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="unpaid-invoice">
                            <h3 class="cardtittle">Total category</h3>
                            <span class="u-i">65</span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="invoice-sent">
                            <h3 class="cardtittle">Total order</h3>
                            <span class="i-s">120</span>
                        </div>
                    </div>
                </div>
                <table class="total-table">
                    <thead>
                    <tr>
                        <th>Invoice</th>
                        <th>Company</th>
                        <th>Due Date</th>
                        <th>Status</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="#">INV__1001</a></td>
                        <td>Paragon</td>
                        <td>1/5/2021</td>
                        <td>
                            <p class="status status-unpaid">Unpaid</p>
                        </td>
                        <td class="amount">$520.18</td>
                    </tr>
                    <tr>
                        <td><a href="#">INV__1002</a></td>
                        <td>Sonic</td>
                        <td>1/4/2021</td>
                        <td>
                            <p class="status status-paid">Paid</p>
                        </td>
                        <td class="amount">$415.25</td>
                    </tr>
                    <tr>
                        <td><a href="#">INV__1003</a></td>
                        <td>Innercircle</td>
                        <td>1/2/2021</td>
                        <td>
                            <p class="status status-pending">Pending</p>
                        </td>
                        <td class="amount">$1324.84</td>
                    </tr>
                    <tr>
                        <td><a href="#">INV__1001</a></td>
                        <td>Paragon</td>
                        <td>1/5/2021</td>
                        <td>
                            <p class="status status-unpaid">Unpaid</p>
                        </td>
                        <td class="amount">$520.18</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
