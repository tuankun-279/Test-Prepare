<%-- 
    Document   : product
    Created on : Jan 3, 2022, 8:12:15 PM
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
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pro" items="${pro}">
                <tr>
                    <td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.price}</td>
                    <td>${pro.description}</td>
                    <td>  <a href="assigntservlet?id=${pro.id}">Assign This Product</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
