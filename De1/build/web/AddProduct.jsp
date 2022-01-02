<%-- 
    Document   : AddProduct
    Created on : Dec 29, 2021, 7:42:20 PM
    Author     : Loki Kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
      <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Add New Product</div>
                <div class="panel-body">
                    <form action="productservlet" method="post" >           
                         
                           
                        <div class="form-group">
                            <label for="name">Product Name</label>
                            <input type ="text" name="name" class="form-control" placeholder=" Enter Name" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Price</label>
                            <input type ="text" name="price" class="form-control" placeholder=" Enter Price" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Quantity</label>
                            <input type ="text" name="quantity" class="form-control" placeholder=" Enter Quantity" required/>
                        </div>
                        <button class="btn btn-success">Add New</button>
                        <input type="reset" value="Reset"/>
                    </form>
                </div>
            </div>
            <a href="emplyservlet">Back to list</a>
        </div>
    </body>
</html>
