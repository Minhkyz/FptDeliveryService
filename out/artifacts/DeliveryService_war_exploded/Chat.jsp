<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!--Open Chat-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/chatform.css" rel="stylesheet">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/chat.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Mukta:wght@300;400;600;700;800&family=Noto+Sans:wght@400;700&display=swap"
            rel="stylesheet">

    <!--Open Add User form-->
    <link rel="stylesheet" href="./css/chatform2.css">



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


            <div class="container" id="registercontainer" >

                <div class="container" id="chat-container" style="width: -50px; height: 300px;" > <!-- bao quanh tất cả nội dug  -->
                    <div class="row clearfix"><!--để ko bị đè, điều chỉnh khoogn gian cột-->
                        <div class="col-lg-12">
                            <div class="chat-app" style="height:0px;"> <!--căn chỉnh chat -->
                                <div id="plist" class="people-list"> <!--hiển thị danh sách trong nhóm bắt mắt hơn-->
                                    <div class="input-group"><!--gôm hình lại-->
                                        <div class="input-group-prepend"> <!--kết hợp-->
                                            <span class="input-group-text"><i class="fa fa-search" style="height: 25px;"></i></span>
                                            <!-- input tạo nền kính lúp-->

                                        </div>
                                        <input type="text" class="form-control" placeholder="Search..." >
                                        <!---->
                                        <!--place holder dùng để hiển thị search chìm-->
                                    </div>
                                    <ul class="list-unstyled chat-list mt-2 mb-0">
                                        <li class="clearfix active"><!-- ddiefu chỉnh vùng không gian ko bị  tràn-->
                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                                            <div class="about">
                                                <div class="name">#123</div>
                                                <div> <i class="fa fa-circle online"></i> ordered </div>
                                            </div>
                                        </li>
                                        <li class="clearfix">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="avatar">
                                            <div class="about">
                                                <div class="name">#421</div>
                                                <div> <i class="fa fa-circle offline"></i> processing </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!--khungchat-->
                                <div class="chat" style="width: 600px;">
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
                                                    <li class="clearfix"  id="mess_receiver">
                                                        <div class="message-data text-end" >
                                                            <span class="message-data-time">${o.time}</span>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                                        </div>
                                                        <div class="message other-message float-right"> ${o.messages} </div>
                                                    </li>
                                                </c:if>
                                                <c:if test="${o.sender != sessionScope.acc.userID}">
                                                    <li class="clearfix" id="mess_sender">
                                                        <div class="message-data"  >
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
                                            <input type="text" name="mess" class="form-control" id="mess_input" placeholder="Enter text here...">
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

            </div>


        </div>

    </div>

</div>

</body>

</html>