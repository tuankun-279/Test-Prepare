<%-- 
    Document   : cookielist
    Created on : Dec 28, 2021, 4:03:32 PM
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
      String cookieValue= ck.getValue();;
       if(cookieName.equals("name" ) || cookieName.equals("address" ) || cookieName.equals("phone") || cookieName.equals("class")){
           %>
           <b><%=cookieName %> </b><br>
    
            <b><%=cookieValue %> </b><br>
            <%
       }
      %>
      
      <%
   }
%>
    </body>
</html>
