<%-- 
    Document   : ProductList
    Created on : Dec 29, 2021, 7:41:38 PM
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
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pro" items="${product}">
                <tr>
                    <td>${pro.productId}</td>
                    <td>${pro.productName}</td>
                    <td>${pro.price}</td>
                    <td>${pro.quantity}</td>
                    <td>
                        <a href="?id_delete=${pro.productId}">delete</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <a href="/De1/AddProduct.jsp">Add New</a>
    </body>
</html>
