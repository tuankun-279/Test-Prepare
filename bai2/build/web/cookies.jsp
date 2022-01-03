<%-- 
    Document   : cookies
    Created on : Dec 28, 2021, 3:48:19 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Add New Employee</div>
                <div class="panel-body">
                    <form action="cookieservlet" method="post" >           
                        <span class="error" style="color:red;">${errors.errors}</span>                   
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type ="text" name="name" class="form-control" placeholder=" Enter name" required/>
                        </div>       
                        <div class="form-group">
                            <label for="name">Address</label>
                            <input type ="text" name="address" class="form-control" placeholder=" Enter address" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Phone No</label>
                            <input type ="text" name="phone" class="form-control" placeholder=" Enter phone" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Class Name</label>
                            <input type ="text" name="class" class="form-control" placeholder=" Enter class" required/>
                        </div>
                        <button class="btn btn-success">Submit Query</button>
                        <input type="reset" value="Reset"/>
                    </form>
                </div>
            </div>
            <a href="emplyservlet">Back to list</a>
        </div>
    </body>
</html>
