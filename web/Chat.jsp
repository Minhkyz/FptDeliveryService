<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link href="css/Chat.css" rel="stylesheet">
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

            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
            <!-- front awesome dùng để nhúng các biểu tượng , nhúng liên kết awesome vào trong trang -->

            <!--Start Code-->

            <div class="container"> <!-- bao quanh tất cả nội dug  -->
                <div class="row clearfix"><!--để ko bị đè, điều chỉnh khoogn gian cột-->
                    <div class="col-lg-12">
                        <div class="card chat-app"> <!--căn chỉnh chat -->
                            <div id="plist" class="people-list"> <!--hiển thị danh sách trong nhóm bắt mắt hơn-->
                                <div class="input-group"><!--gôm hình lại-->
                                    <div class="input-group-prepend"> <!--kết hợp-->
                                        <span class="input-group-text"><i class="fa fa-search"></i></span>
                                        <!-- input tạo nền kính lúp-->

                                    </div>
                                    <input type="text" class="form-control" placeholder="Search..." >
                                    <!---->
                                    <!--place holder dùng để hiển thị search chìm-->
                                </div>
                                <ul class="list-unstyled chat-list mt-2 mb-0">

                                    <li class="clearfix">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
                                        <div class="about">

                                            <div class="name">thanh an</div>
                                            <div > <i class="fa fa-circle offline"></i> left 7 mins ago </div>
                                        </div>
                                    </li>
                                    <li class="clearfix active"><!-- ddiefu chỉnh vùng không gian ko bị  tràn-->
                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                        <div class="about">
                                            <div class="name">hoang hao</div>
                                            <div> <i class="fa fa-circle online"></i> online </div>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
                                        <div class="about">
                                            <div class="name">phuong nhi</div>
                                            <div> <i class="fa fa-circle online"></i> online </div>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                        <div class="about">
                                            <div class="name">huynh nhu</div>
                                            <div class="status"> <i class="fa fa-circle offline"></i> left 10 hours ago </div>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar8.png" alt="avatar">
                                        <div class="about">
                                            <div class="name">kim loan</div>
                                            <div class="status"> <i class="fa fa-circle online"></i> online </div>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
                                        <div class="about">
                                            <div class="name">minh ky</div>
                                            <div class="status"> <i class="fa fa-circle offline"></i> offline since Oct 28 </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!--khungchat-->
                            <div class="chat">
                                <div class="chat-header clearfix">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <a>
                                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                            </a>
                                            <div class="chat-about">
                                                <h6 >hoang hao</h6>
                                                <small>Last seen: 2 hours ago</small>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="chat-history">
                                    <ul >
                                        <c:forEach items="${list}" var="o">
                                            <c:if test="${o.sender == sessionScope.acc.userID}">
                                                <li class="clearfix">
                                                    <div class="message-data text-end">
                                                        <span class="message-data-time">${o.time}</span>
                                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                                    </div>
                                                    <div class="message other-message float-right"> ${o.messages} </div>
                                                </li>
                                            </c:if>
                                            <c:if test="${o.sender != sessionScope.acc.userID}">
                                                <li class="clearfix">
                                                    <div class="message-data">
                                                        <span class="message-data-time">${o.time}</span>
                                                    </div>
                                                    <div class="message my-message">${o.messages}</div>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <form action="ShowChatControl" method="post">
                                <div class="input-group mb-0">
                                    <input type="hidden" name="orderid" value="${list[0].orderID}">
                                    <input type="hidden" name="sender" value="${sessionScope.acc.userID}">
                                    <input type="text" name="mess" class="form-control" placeholder="Enter text here...">
                                    <div class="input-group-prepend" type="submit">
                                        <span class="input-group-text"><i class="fa fa-send"></i></span>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--End Code-->

        </div>

    </div>
</div>
</body>

</html>