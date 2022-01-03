<%-- 
    Document   : catlist
    Created on : Jan 3, 2022, 7:12:48 PM
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
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cate" items="${cat}"> 
                <tr>
                    <td>${cate.id}</td>
                    <td>${cate.name}</td>
                    <td>${cate.description}</td>
                    <td> <a href="productservlet?id=${cate.id}">Show Products</a>
                        
                        
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
