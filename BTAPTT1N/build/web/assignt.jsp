<%-- 
    Document   : assignt
    Created on : Jan 3, 2022, 8:29:42 PM
    Author     : Loki Kun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form method="post">
            <input type="hidden" name="productId" value="${pro.id}">  
            Do you really want to assign product: <b>${pro.name}</b>
                <select name="category">            
               
                    <c:forEach var="category" items="${cat}">
                        <option value="${category.id}">${category.name}</option>
                    </c:forEach>
                </select>
                <br/><br/>
                <input type="submit" value="Submit" />
        </form>
    </body>
</html>
