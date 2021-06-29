<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/06/2021
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
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
<link href="css/manager.css" rel="stylesheet" type="text/css"/>


<style>
    img {
        width: 200px;
        height: 120px;
    }
</style>

<body>

<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Edit <b>User</b></h2>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
    </div>
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="EditUserControl" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title">Add User</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>ID</label>
                            <input value="${detail.userID}" name="userID" type="text" class="form-control" readonly required>
                        </div>

                        <div class="form-group">
                            <label>Username</label>
                            <input value="${detail.username}" name="username" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input value="${detail.password}" name="password" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <input value="${detail.email}" name="email" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>FullName</label>
                            <input value="${detail.fullName}" name="fullName" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Phone</label>
                            <input value="${detail.phone}" name="phone" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                        <label>Img</label>
                              <input value="${detail.img}" name="img" type="text" class="form-control" required>
                        </div>


                        <div class="form-group">
                            <label>Category</label>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>


<script src="js/manager.js" type="text/javascript"></script>


</body>
</html>
