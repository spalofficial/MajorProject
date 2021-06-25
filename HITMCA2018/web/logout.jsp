<%-- 
    Document   : logout
    Created on : Apr 14, 2018, 11:16:23 PM
    Author     : Souvik Pal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
            session.removeAttribute("userid");
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
