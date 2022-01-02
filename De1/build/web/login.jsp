<%-- 
    Document   : login
    Created on : Dec 29, 2021, 7:06:12 PM
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
        <form class="form-horizontal" action="loginservlet" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" >Username</label>
                <div class="col-sm-10">
                    <input type="text" name="username" class="form-controll" placeholder="Enter Username" required/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" >Password</label>
                <div class="col-sm-10">          
                    <input type="text" name="password" class="form-controll" placeholder="Enter Password" required/>
                </div>
            </div>
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </div>
        </form>
    </body>
</html>
