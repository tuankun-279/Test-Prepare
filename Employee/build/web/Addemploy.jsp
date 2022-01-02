<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Addemploy
    Created on : Dec 27, 2021, 8:32:55 PM
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
                <div class="panel-heading">Add New Employee</div>
                <div class="panel-body">
                    <form action="emplyservlet" method="post" >           
                        <span class="error" style="color:red;">${errors.errors}</span>                   
                        <div class="form-group">
                            <label for="name">Employee No</label>
                            <input type ="text" name="id" class="form-control" placeholder=" Enter Id" required/>
                        </div>       
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type ="text" name="name" class="form-control" placeholder=" Enter Name" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Place Of Work</label>
                            <input type ="text" name="pow" class="form-control" placeholder=" Enter Place Of Work" required/>
                        </div>
                        <div class="form-group">
                            <label for="name">Phone</label>
                            <input type ="text" name="phone" class="form-control" placeholder=" Enter Phone" required/>
                        </div>
                        <button class="btn btn-success">Add Employee</button>
                        <input type="reset" value="Reset"/>
                    </form>
                </div>
            </div>
            <a href="emplyservlet">Back to list</a>
        </div>
    </body>
</html>
