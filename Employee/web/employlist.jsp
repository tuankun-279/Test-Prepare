<%-- 
    Document   : employlist
    Created on : Dec 27, 2021, 8:04:19 PM
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
                    <th>Employee No</th>
                    <th>Employee Name</th>
                    <th>Place Of Work</th>
                    <th>Phone</th>
                      <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var = "emp" items="${employ}">
                <tr>
                    <td>${emp.employeeNo}</td>
                    <td>${emp.employeeName}</td>
                    <td>${emp.placeOfWork}</td>
                    <td>${emp.phoneNo}</td>
                     <td><a href="?id_delete=${emp.employeeNo}">${emp.employeeNo}</a></td>                 
                </tr>
                </c:forEach>
            
            </tbody>
        </table>

    </body>
</html>
