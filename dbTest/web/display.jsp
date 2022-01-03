<%-- 
    Document   : display
    Created on : Dec 29, 2021, 9:52:10 AM
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
        <h1>Hello World!</h1><table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="emp" items="${emlist}">
                    <tr>
                        <td>${emp.employeeNo}</td>
                        <td>${emp.employeeName}</td>
                        <td><a href="?id=${emp.employeeNo}">${emp.employeeNo}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
