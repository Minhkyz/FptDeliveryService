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
                    <h2>Update <b>Items</b></h2>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
    </div>
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="form" action="EditItem2Control" method="post" enctype="application/x-www-form-urlencoded">
                    <div class="modal-header">
                        <h4 class="modal-title">Update Items</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>ID</label>
                            <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input value="${detail.price}" name="price" pattern="\d*" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input value="${detail.name}" name="name" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Image</label>
                            <image id="image" name="image" src="${detail.image}" width="200" height="200"/>
                            <input type="file" name="file" id="files">
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" required>${detail.description}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select name="categoryID" class="form-select" aria-label="Default select example">
                                <option value="1">Thức ăn</option>
                                <option value="2">Thức uống</option>
                                <option value="3">Đồ Ăn Vặt</option>
                                <option value="4">Văn Phòng Phẩm</option>
                                <option value="5">Trà Sữa</option>
                                <option value="6">Khác</option>
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success"  id="submit" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>


<script src="js/manager.js" type="text/javascript"></script>
<script>
    document.getElementById('files').onchange = function () {
        var src = URL.createObjectURL(this.files[0])
        document.getElementById('image').src = src
        document.getElementById('form').action = 'EditItemsControl'
        document.getElementById('form').enctype = 'multipart/form-data'
    }
</script>

</body>
</html>
