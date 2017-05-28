<%-- 
    Document   : logout
    Created on : May 13, 2017, 10:51:30 PM
    Author     : HARSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        
    </head>
    <body >
        <h1></h1>
        <%
            
              session.invalidate();
              session=null;
              response.sendRedirect("homepages.jsp");
            %>
    </body>
</html>
