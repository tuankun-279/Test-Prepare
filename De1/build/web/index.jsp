<%-- 
    Document   : index
    Created on : Dec 29, 2021, 7:21:05 PM
    Author     : Loki Kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <%
   Cookie[] cks=request.getCookies();
   for(Cookie ck:cks)
   {
      String cookieName=ck.getName();
      String cookieValue= ck.getValue();
       if(cookieName.equals("usn" )){
           %>
           
            <b>Hello <%=cookieValue %> </b><br>
            <%
       }
      %>
      
      <%
   }
%>
    </body>
</html>
