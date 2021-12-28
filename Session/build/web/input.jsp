<%-- 
    Document   : input
    Created on : Dec 2, 2021, 6:55:06 PM
    Author     : Loki Kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
   
    <body>
         <style>
             .error{
                 color: red;
             }
        </style>
        <form action="student" method="post">
            First Name: <input type="text" name="firstName" id="firstName" required/><br/>
            <span class="error">${errors.firstName}</span><br/>
            Last Name: <input type="text" name="lastName" id="lastName" required/><br/>
            <span class="error" >${errors.lastName}</span>    <br/>
            Enter Password: <input type="text" name="password" id="password" required/><br/>
            <span class="error">${errors.password}</span><br/>
            Re-Enter Password: <input type="text" name="confirm_password" id ="confirm_password" required/><br/>
            <input type="submit" value="Display" />
<!--            <input type="" value="Clear"/>-->
            <span id='message'></span>
        </form>
    </body>
</html>
